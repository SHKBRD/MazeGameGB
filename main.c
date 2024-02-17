#include <gb/gb.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#include "tiles/GBrobo.c"
#include "tiles/BGGameTiles.c"
#include "tiles/MainSpriteTiles.c"
#include "tiles/HudTiles.c"

#include "maps/ExitTile.c"
#include "maps/BlankTile.c"

#include "maps/GBRoboMap.c"
#include "maps/HudMap.c"
#include "maps/BackgroundArrange.c"
#include "maps/Map1.c"
#include "maps/Map2.c"
#include "maps/Map3.c"
#include "maps/Mapblah.c"

BOOLEAN paused = FALSE;
BOOLEAN pressing_up = FALSE;
BOOLEAN pressing_down = FALSE;
BOOLEAN pressing_left = FALSE;
BOOLEAN pressing_right = FALSE;
uint8_t joy_inp = 0;
uint8_t prev_joy_inp = 0;
uint8_t game_state = 0;
uint8_t previous_game_state = 0;
uint8_t frame_counter = 0; 
BOOLEAN fading_black = FALSE;

unsigned char GameMap[320];
uint8_t GameMapWidth = 20;
uint8_t GameMapHeight = 16;

const unsigned char freq_vals[] = 
{
    0x21,
    0x41,
    0x61,
    0x81,
    0xA1,
    0xC1,
    0xF1
};

struct interact
{
    uint8_t x;
    uint8_t y; 
};
struct interact robot;
struct battery_interface
{
    uint8_t x;
    uint8_t y; 
};
struct battery_interface;

uint8_t current_level = 255;

void squareone_play(uint8_t reg0, uint8_t reg1, uint8_t reg2, uint8_t reg3, uint8_t reg4){
    NR10_REG = reg0;
    NR11_REG = reg1;
    NR12_REG = reg2;
    NR13_REG = reg3;
    NR14_REG = reg4;
}

void noise_play(uint8_t reg1, uint8_t reg2, uint8_t reg3, uint8_t reg4){
    NR41_REG = reg1;
    NR42_REG = reg2;
    NR43_REG = reg3;
    NR44_REG = reg4;
}

uint8_t canplayermove(uint8_t playerX, uint8_t playerY){ 
    uint8_t indexTLx, indexTLy, result;
    uint16_t tileindexTL;

    indexTLx = (playerX - 8) / 8;
    indexTLy = (playerY - 16) / 8;
    tileindexTL = 20 * indexTLy + indexTLx;
    // blank tile and closed switch floor tile
    if ((GameMap[tileindexTL] >= 0x04 && GameMap[tileindexTL] <= 0x07) || (GameMap[tileindexTL] >= 0x20 && GameMap[tileindexTL] <= 0x23)) {
        result = 1;
    // exit tile
    } else if ((GameMap[tileindexTL] >= 0x14 && GameMap[tileindexTL] <= 0x17)){
        result = 2;
    // unmovable tiles, default to all of them
    } else {
        result = 0;
    }

    return result;
}

void update_level_map(unsigned char new_BG[], uint8_t new_width, uint8_t new_height){
    uint16_t i;
    for (i=0; i<320; ++i) 
    {
        GameMap[i] = new_BG[i];
    }
    i = 0;
    GameMapWidth = new_width;
    GameMapHeight = new_height - 2;
    set_bkg_tiles(0, 0, GameMapWidth, GameMapHeight, GameMap);
}

void goto_level(uint8_t level) {
    if (level == 1) {
        update_level_map(Map1Label, Map1LabelWidth, Map1LabelHeight);
        update_interact_position(robot, 24, 32);
    } else if (level == 2) {
        update_level_map(Map2Label, Map2LabelWidth, Map2LabelHeight);
        update_interact_position(robot, 88, 32);
    } else if (level == 3) {
        update_level_map(Map3Label, Map3LabelWidth, Map3LabelHeight);
        update_interact_position(robot, 24, 32);
    } else if (level == 4) {
        update_level_map(MapblahLabel, Map3LabelWidth, Map3LabelHeight);
        update_interact_position(robot, 24, 32);
    }
    current_level = level;
}

void fade_to_level(uint8_t selected_level, BOOLEAN title) {
    uint8_t fade_counter = 0;
    uint8_t fade_phase = 0;

    while(1) {
        fade_counter++;
        if (!(fade_counter % 4)) {
            fade_phase++;
            if (fade_phase == 3) {
                BGP_REG = (BGP_REG >> 2) | 0b11000000; //11111001
                OBP0_REG = (OBP0_REG >> 2) | 0b11000000;
                if (title) {
                    set_bkg_data(0, 40, GameTiles);
                    set_bkg_data(41, 9, HudTilesLabel);
                    set_bkg_tiles(0, 14, HudMapLabelWidth, HudMapLabelHeight, HudMapLabel);
                }
                goto_level(selected_level);
                move_sprite(0, robot.x, robot.y);
                move_sprite(1, robot.x + 8, robot.y);
                continue;
            }
            if (fade_phase < 4) {
                BGP_REG = (BGP_REG >> 2) | 0b11000000; // set first two bits to black after shifting right 
                OBP0_REG = (OBP0_REG >> 2) | 0b11000000;
                continue;
            }
            else if (fade_phase < 7) {
                BGP_REG = (BGP_REG << 2) | (6 - fade_phase); // 6 - fade_phase at this point would set the respective last 2 bits for each phase, 2 for phase 4, 1 for 5, 0 for 6
                OBP0_REG = (OBP0_REG << 2) | (6 - fade_phase);
            } else {
                break;
            }
        }
        
        wait_vbl_done();
    }
}

void play_input() {

    switch (game_state) {
        case 0:
        if (joy_inp & J_UP) {   
            if (!pressing_up) {
                switch (canplayermove(robot.x, robot.y - 16)){
                case 0:
                    squareone_play(0x79,0x41,0x44,freq_vals[frame_counter % 7],0x85);
                    pressing_up = TRUE;
                    break;
                case 1:
                    squareone_play(0x08,0x80,0x26,freq_vals[frame_counter % 7],0x86);
                    robot.y -= 16;
                    pressing_up = TRUE;
                    break;
                case 2:
                    noise_play(0x2D,0x67,0x01,0x80);
                    robot.y -= 16;
                    pressing_up = TRUE;
                    game_state = 2;
                    fading_black = TRUE;
                    break;
                }
            }
        } else {
            pressing_up = FALSE;
        } 

        if (joy_inp & J_DOWN) {     
            if (!pressing_down) {       
                switch (canplayermove(robot.x, robot.y + 16)){
                case 0:
                    squareone_play(0x79,0x41,0x44,freq_vals[frame_counter % 7],0x85);
                    pressing_down = TRUE;
                    break;
                case 1:
                    squareone_play(0x08,0x80,0x26,freq_vals[frame_counter % 7],0x86);
                    robot.y += 16;
                    pressing_down = TRUE;
                    break;
                case 2:
                    noise_play(0x2D,0x67,0x01,0x80);
                    robot.y += 16;
                    pressing_down = TRUE;
                    game_state = 2;
                    fading_black = TRUE;
                    break;
                }
            }
        } else {
            pressing_down = FALSE;
        }

        if (joy_inp & J_LEFT) {   
            if (!pressing_left) {
                switch (canplayermove(robot.x - 16, robot.y)) {
                case 0:
                    squareone_play(0x79,0x41,0x44,freq_vals[frame_counter % 7],0x85);
                    pressing_left = TRUE;
                    break;
                case 1:
                    squareone_play(0x08,0x80,0x26,freq_vals[frame_counter % 7],0x86);
                    robot.x -= 16;
                    pressing_left = TRUE;
                    break;
                case 2:
                    noise_play(0x2D,0x67,0x01,0x80);
                    robot.x -= 16;
                    pressing_left = TRUE;
                    game_state = 2;
                    fading_black = TRUE;
                    break;
                }
            }
        } else {
            pressing_left = FALSE;
        } 

        if (joy_inp & J_RIGHT) {     
            if (!pressing_right) {       
                switch (canplayermove(robot.x + 16, robot.y)) {
                case 0:
                    squareone_play(0x79,0x41,0x44,freq_vals[frame_counter % 7],0x85);
                    pressing_right = TRUE;
                    break;
                case 1:
                    squareone_play(0x08,0x80,0x26,freq_vals[frame_counter % 7],0x86);
                    robot.x += 16;
                    pressing_right = TRUE;
                    break;
                case 2:
                    noise_play(0x2D,0x67,0x01,0x80);
                    robot.x += 16;
                    pressing_right = TRUE;
                    game_state = 2;
                    fading_black = TRUE;
                    break;
                }
            }
        } else {
            pressing_right = FALSE;
        }

        if (joy_inp & J_START && !(prev_joy_inp & J_START)) {
            game_state = 1;
            set_bkg_tiles(0, 0, 2, 2, BaseBG);
        }
        break;

        // Handle paused case
        case 1:
            if (joy_inp & J_START && !(prev_joy_inp & J_START)) {
                game_state = 0;
                set_bkg_tiles(2, 0, 2, 2, BaseBG);
            }
            break;

        // Handle level transition case
        case 2:
            fade_to_level(current_level + 1, FALSE);
            game_state = 0;

        default:
            // Handle other game states here
            break;
    }

    
}

void update_interact_position(struct interact obj, uint8_t x, uint8_t y) {
    obj.x = x;
    obj.y = y;
}

void game(){
    game_state = 0;
    previous_game_state = 0;
    fading_black = FALSE;

    update_interact_position(robot, 24, 64);

    SPRITES_8x16;
    
    set_sprite_data(0, 4 , MainSpriteLabel);
    set_sprite_tile(0, 1);
    move_sprite(0, robot.x, robot.y);
    set_sprite_tile(1, 2);
    move_sprite(1, robot.x + 8, robot.y);

    joy_inp = joypad();
    prev_joy_inp = joy_inp;

    while(1) {
    previous_game_state = game_state;
    prev_joy_inp = joy_inp;
    joy_inp = joypad();

    play_input();

    move_sprite(0, robot.x, robot.y);
    move_sprite(1, robot.x + 8, robot.y);

    frame_counter++;
    wait_vbl_done();
    }
}

void main(){
    SHOW_BKG;
    SHOW_SPRITES;
    DISPLAY_ON;
    NR52_REG = 0x80;
    NR50_REG = 0x77;
    NR51_REG = 0xFF;

    set_bkg_data(0, 146, GBRoboLabel);
    set_bkg_tiles(0, 0, 20, 18, GBRoboMapLabel);

    while(1) {
        joy_inp = joypad();

        if (joy_inp & J_START) {
            fade_to_level(1, TRUE);
            game();
        }
    }
    // game();

}