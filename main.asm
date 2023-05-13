;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #13350 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _game
	.globl _update_level_map
	.globl _canplayermove
	.globl _noise_play
	.globl _squareone_play
	.globl _set_sprite_data
	.globl _set_bkg_tiles
	.globl _set_bkg_data
	.globl _wait_vbl_done
	.globl _joypad
	.globl _GameMapHeight
	.globl _GameMapWidth
	.globl _GameMap
	.globl _frame_counter
	.globl _pressing_right
	.globl _pressing_left
	.globl _pressing_down
	.globl _pressing_up
	.globl _paused
	.globl _BlankTile
	.globl _ExitTile
	.globl _MainSpriteLabel
	.globl _GameTiles
	.globl _GameTilesIndex
	.globl _freq_vals
	.globl _Map1Label
	.globl _BaseBG
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_GameTilesIndex::
	.ds 41
_GameTiles::
	.ds 640
_MainSpriteLabel::
	.ds 576
_ExitTile::
	.ds 4
_BlankTile::
	.ds 4
_paused::
	.ds 1
_pressing_up::
	.ds 1
_pressing_down::
	.ds 1
_pressing_left::
	.ds 1
_pressing_right::
	.ds 1
_frame_counter::
	.ds 1
_GameMap::
	.ds 320
_GameMapWidth::
	.ds 1
_GameMapHeight::
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;main.c:76: void squareone_play(uint8_t reg0, uint8_t reg1, uint8_t reg2, uint8_t reg3, uint8_t reg4){
;	---------------------------------
; Function squareone_play
; ---------------------------------
_squareone_play::
	ldh	(_NR10_REG + 0), a
	ld	a, e
	ldh	(_NR11_REG + 0), a
;main.c:79: NR12_REG = reg2;
	ldhl	sp,	#2
;main.c:80: NR13_REG = reg3;
	ld	a, (hl+)
	ldh	(_NR12_REG + 0), a
;main.c:81: NR14_REG = reg4;
	ld	a, (hl+)
	ldh	(_NR13_REG + 0), a
	ld	a, (hl)
	ldh	(_NR14_REG + 0), a
;main.c:82: }
	pop	hl
	add	sp, #3
	jp	(hl)
_BaseBG:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_Map1Label:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x08	; 8
	.db #0x0a	; 10
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x09	; 9
	.db #0x0b	; 11
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x1c	; 28
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x1d	; 29
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x16	; 22
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x15	; 21
	.db #0x17	; 23
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_freq_vals:
	.db #0x21	; 33
	.db #0x41	; 65	'A'
	.db #0x61	; 97	'a'
	.db #0x81	; 129
	.db #0xa1	; 161
	.db #0xc1	; 193
	.db #0xf1	; 241
;main.c:84: void noise_play(uint8_t reg1, uint8_t reg2, uint8_t reg3, uint8_t reg4){
;	---------------------------------
; Function noise_play
; ---------------------------------
_noise_play::
	ldh	(_NR41_REG + 0), a
	ld	a, e
	ldh	(_NR42_REG + 0), a
;main.c:87: NR43_REG = reg3;
	ldhl	sp,	#2
;main.c:88: NR44_REG = reg4;
	ld	a, (hl+)
	ldh	(_NR43_REG + 0), a
	ld	a, (hl)
	ldh	(_NR44_REG + 0), a
;main.c:89: }
	pop	hl
	pop	af
	jp	(hl)
;main.c:91: uint8_t canplayermove(uint8_t playerX, uint8_t playerY){ 
;	---------------------------------
; Function canplayermove
; ---------------------------------
_canplayermove::
	add	sp, #-6
	ld	c, a
	ldhl	sp,	#5
	ld	(hl), e
;main.c:99: indexTLx = (playerX - 8) / 8;
	ldhl	sp,	#1
	ld	a, c
	ld	(hl+), a
	xor	a, a
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0008
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ldhl	sp,	#4
	ld	(hl-), a
	ld	(hl), e
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	bit	7, (hl)
	jr	Z, 00111$
	dec	hl
	dec	hl
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0xffff
	add	hl, de
	ld	c, l
	ld	b, h
00111$:
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	ldhl	sp,	#0
	ld	(hl), c
;main.c:100: indexTLy = (playerY - 16) / 8;
	ldhl	sp,	#5
	ld	a, (hl)
	ldhl	sp,	#1
	ld	(hl+), a
	xor	a, a
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0010
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ldhl	sp,	#4
	ld	(hl-), a
	ld	(hl), e
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	bit	7, (hl)
	jr	Z, 00112$
	dec	hl
	dec	hl
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0xfff7
	add	hl, de
	ld	c, l
	ld	b, h
00112$:
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
;main.c:101: tileindexTL = 20 * indexTLy + indexTLx;
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	ld	c, l
	ld	b, h
	ldhl	sp,	#0
	ld	a, (hl)
	ld	e, #0x00
	add	a, c
	ld	c, a
	ld	a, e
	adc	a, b
	ld	b, a
;main.c:102: if (GameMap[tileindexTL] >= 0x04 && GameMap[tileindexTL] <= 0x07) {
	ld	hl, #_GameMap
	add	hl, bc
	ld	c, (hl)
	ld	a, c
	sub	a, #0x04
	jr	C, 00106$
	ld	a, #0x07
	sub	a, c
	jr	C, 00106$
;main.c:103: result = 1;
	ld	a, #0x01
	jr	00107$
00106$:
;main.c:104: } else if ((GameMap[tileindexTL] >= 0x14 && GameMap[tileindexTL] <= 0x17)){
	ld	a, c
	sub	a, #0x14
	jr	C, 00102$
	ld	a, #0x17
	sub	a, c
	jr	C, 00102$
;main.c:105: result = 2;
	ld	a, #0x02
	jr	00107$
00102$:
;main.c:107: result = 0;
	xor	a, a
00107$:
;main.c:110: return result;
;main.c:111: }
	add	sp, #6
	ret
;main.c:113: void update_level_map(unsigned char new_BG[], uint8_t new_width, uint8_t new_height){
;	---------------------------------
; Function update_level_map
; ---------------------------------
_update_level_map::
	add	sp, #-5
	ldhl	sp,	#3
	ld	(hl), e
	inc	hl
	ld	(hl), d
	dec	hl
	dec	hl
	ld	(hl), a
;main.c:115: for (i=0; i<320; ++i) 
	ld	bc, #0x0000
00102$:
;main.c:117: GameMap[i] = new_BG[i];
	ld	hl, #_GameMap
	add	hl, bc
	inc	sp
	inc	sp
	push	hl
	ldhl	sp,	#3
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
	ld	e, l
	ld	d, h
	ld	a, (de)
	pop	hl
	push	hl
	ld	(hl), a
;main.c:115: for (i=0; i<320; ++i) 
	inc	bc
	ld	e, c
	ld	d, b
	ld	a, e
	sub	a, #0x40
	ld	a, d
	sbc	a, #0x01
	jr	C, 00102$
;main.c:119: GameMapWidth = new_width;
	ldhl	sp,	#2
	ld	a, (hl)
	ld	(#_GameMapWidth),a
;main.c:120: GameMapHeight = new_height;
	ldhl	sp,	#7
	ld	a, (hl)
	ld	hl, #_GameMapHeight
	ld	(hl), a
;main.c:121: set_bkg_tiles(0, 0, GameMapWidth, GameMapHeight, GameMap);
	ld	de, #_GameMap
	push	de
	ld	a, (hl)
	push	af
	inc	sp
	ld	a, (#_GameMapWidth)
	push	af
	inc	sp
	xor	a, a
	rrca
	push	af
	xor	a, a
	call	_set_bkg_tiles
	add	sp, #6
;main.c:122: }
	add	sp, #5
	pop	hl
	inc	sp
	jp	(hl)
;main.c:124: void game(){
;	---------------------------------
; Function game
; ---------------------------------
_game::
	add	sp, #-8
;main.c:126: uint8_t game_state = 0;
	ldhl	sp,	#2
;main.c:131: robot.x = 24;
	ld	a, #0x00
	ld	(hl-), a
	dec	hl
;main.c:132: robot.y = 32;
	ld	a, #0x18
	ld	(hl+), a
	ld	(hl), #0x20
;main.c:134: update_level_map(Map1Label, Map1LabelWidth, Map1LabelHeight);
	ld	a, #0x10
	push	af
	inc	sp
	ld	a, #0x14
	ld	de, #_Map1Label
	call	_update_level_map
;main.c:136: SPRITES_8x16;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x04
	ldh	(_LCDC_REG + 0), a
;main.c:137: set_bkg_data(0, 40, GameTiles);
	ld	de, #_GameTiles
	push	de
	ld	hl, #0x2800
	push	hl
	call	_set_bkg_data
	add	sp, #4
;main.c:138: set_sprite_data(0, 4 , MainSpriteLabel);
	ld	de, #_MainSpriteLabel
	push	de
	ld	hl, #0x400
	push	hl
	call	_set_sprite_data
	add	sp, #4
;E:/gbdk/include/gb/gb.h:1602: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 2)
	ld	(hl), #0x01
;main.c:140: move_sprite(0, robot.x, 64);
	ldhl	sp,	#0
	ld	c, (hl)
;E:/gbdk/include/gb/gb.h:1675: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #_shadow_OAM
;E:/gbdk/include/gb/gb.h:1676: itm->y=y, itm->x=x;
	ld	a, #0x40
	ld	(hl+), a
	ld	(hl), c
;E:/gbdk/include/gb/gb.h:1602: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 6)
	ld	(hl), #0x02
;main.c:142: move_sprite(1, robot.x + 8, 64);
	ldhl	sp,	#0
	ld	a, (hl)
	add	a, #0x08
	ld	c, a
;E:/gbdk/include/gb/gb.h:1675: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #(_shadow_OAM + 4)
;E:/gbdk/include/gb/gb.h:1676: itm->y=y, itm->x=x;
	ld	(hl), #0x40
	inc	hl
	ld	(hl), c
;main.c:144: uint8_t joy_inp = joypad();
	call	_joypad
	ldhl	sp,	#3
	ld	(hl), a
;main.c:147: while(1) {
00142$:
;main.c:149: prev_joy_inp = joy_inp;
	ldhl	sp,	#3
	ld	c, (hl)
;main.c:150: joy_inp = joypad();
	call	_joypad
	ldhl	sp,	#3
	ld	(hl), a
;main.c:212: if (joy_inp & J_START && !(prev_joy_inp & J_START)) {
	ld	a, (hl+)
	and	a, #0x80
	ld	(hl+), a
	xor	a, a
	ld	(hl+), a
	ld	a, c
	and	a, #0x80
	ld	(hl+), a
	ld	(hl), #0x00
;main.c:152: switch (game_state) {
	ldhl	sp,	#2
	ld	a, (hl)
	or	a, a
	jr	Z, 00101$
	ldhl	sp,	#2
	ld	a, (hl)
	dec	a
	jp	Z,00135$
	jp	00140$
;main.c:153: case 0:
00101$:
;main.c:154: if (joy_inp & J_UP) {   
	push	hl
	ldhl	sp,	#5
	bit	2, (hl)
	pop	hl
	jr	Z, 00109$
;main.c:155: if (!pressing_up) {
	ld	hl, #_pressing_up
	ld	a, (hl)
	or	a, a
	jr	NZ, 00110$
;main.c:156: switch (canplayermove(robot.x, robot.y - 16)){
	ldhl	sp,	#1
	ld	a, (hl-)
	add	a, #0xf0
	ld	b, a
	ld	c, (hl)
	ld	e, b
	ld	a, c
	call	_canplayermove
	or	a, a
	jr	Z, 00110$
	cp	a, #0x01
	jr	Z, 00103$
	sub	a, #0x02
	jr	Z, 00104$
	jr	00110$
;main.c:159: case 1:
00103$:
;main.c:160: squareone_play(0x08,0x80,0x26,freq_vals[frame_counter % 7],0x86);
	ld	hl, #_frame_counter
	ld	e, (hl)
	ld	d, #0x00
	ld	bc, #0x0007
	call	__modsint
	ld	hl, #_freq_vals
	add	hl, bc
	ld	a, (hl)
	ld	h, #0x86
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	inc	sp
	ld	h, a
	ld	l, #0x26
	push	hl
	ld	e, #0x80
	ld	a, #0x08
	call	_squareone_play
;main.c:161: robot.y -= 16;
	ldhl	sp,	#1
	ld	a, (hl)
	add	a, #0xf0
	ld	(hl), a
;main.c:162: pressing_up = TRUE;
	ld	hl, #_pressing_up
	ld	(hl), #0x01
;main.c:163: break;
	jr	00110$
;main.c:164: case 2:
00104$:
;main.c:165: noise_play(0x2D,0x67,0x01,0x80);
	ld	hl, #0x8001
	push	hl
	ld	e, #0x67
	ld	a, #0x2d
	call	_noise_play
;main.c:166: robot.y -= 16;
	ldhl	sp,	#1
	ld	a, (hl)
	add	a, #0xf0
	ld	(hl), a
;main.c:167: pressing_up = TRUE;
	ld	hl, #_pressing_up
	ld	(hl), #0x01
;main.c:168: update_level_map(BaseBG, BaseBGWidth, BaseBGHeight);
	ld	a, #0x10
	push	af
	inc	sp
	ld	a, #0x14
	ld	de, #_BaseBG
	call	_update_level_map
;main.c:170: }
	jr	00110$
00109$:
;main.c:173: pressing_up = FALSE;
	ld	hl, #_pressing_up
	ld	(hl), #0x00
00110$:
;main.c:176: if (joy_inp & J_DOWN) {     
	push	hl
	ldhl	sp,	#5
	bit	3, (hl)
	pop	hl
	jr	Z, 00116$
;main.c:177: if (!pressing_down) {       
	ld	hl, #_pressing_down
	ld	a, (hl)
	or	a, a
	jr	NZ, 00117$
;main.c:178: if (canplayermove(robot.x, robot.y + 16)) {
	ldhl	sp,	#1
	ld	a, (hl-)
	add	a, #0x10
	ld	b, a
	ld	c, (hl)
	ld	e, b
	ld	a, c
	call	_canplayermove
	or	a, a
	jr	Z, 00117$
;main.c:179: squareone_play(0x08,0x80,0x26,freq_vals[frame_counter % 7],0x86);
	ld	hl, #_frame_counter
	ld	e, (hl)
	ld	d, #0x00
	ld	bc, #0x0007
	call	__modsint
	ld	hl, #_freq_vals
	add	hl, bc
	ld	a, (hl)
	ld	h, #0x86
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	inc	sp
	ld	h, a
	ld	l, #0x26
	push	hl
	ld	e, #0x80
	ld	a, #0x08
	call	_squareone_play
;main.c:180: robot.y += 16;
	ldhl	sp,	#1
	ld	a, (hl)
	add	a, #0x10
	ld	(hl), a
;main.c:181: pressing_down = TRUE;
	ld	hl, #_pressing_down
	ld	(hl), #0x01
	jr	00117$
00116$:
;main.c:185: pressing_down = FALSE;
	ld	hl, #_pressing_down
	ld	(hl), #0x00
00117$:
;main.c:188: if (joy_inp & J_LEFT) {   
	push	hl
	ldhl	sp,	#5
	bit	1, (hl)
	pop	hl
	jr	Z, 00123$
;main.c:189: if (!pressing_left) {
	ld	hl, #_pressing_left
	ld	a, (hl)
	or	a, a
	jr	NZ, 00124$
;main.c:190: if (canplayermove(robot.x - 16, robot.y)) {
	ldhl	sp,	#1
	ld	a, (hl-)
	ld	b, a
	ld	a, (hl)
	add	a, #0xf0
	ld	e, b
	call	_canplayermove
	or	a, a
	jr	Z, 00124$
;main.c:191: squareone_play(0x08,0x80,0x26,freq_vals[frame_counter % 7],0x86);
	ld	hl, #_frame_counter
	ld	e, (hl)
	ld	d, #0x00
	ld	bc, #0x0007
	call	__modsint
	ld	hl, #_freq_vals
	add	hl, bc
	ld	a, (hl)
	ld	h, #0x86
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	inc	sp
	ld	h, a
	ld	l, #0x26
	push	hl
	ld	e, #0x80
	ld	a, #0x08
	call	_squareone_play
;main.c:192: robot.x -= 16;
	ldhl	sp,	#0
	ld	a, (hl)
	add	a, #0xf0
	ld	(hl), a
;main.c:193: pressing_left = TRUE;
	ld	hl, #_pressing_left
	ld	(hl), #0x01
	jr	00124$
00123$:
;main.c:197: pressing_left = FALSE;
	ld	hl, #_pressing_left
	ld	(hl), #0x00
00124$:
;main.c:200: if (joy_inp & J_RIGHT) {     
	push	hl
	ldhl	sp,	#5
	bit	0, (hl)
	pop	hl
	jr	Z, 00130$
;main.c:201: if (!pressing_right) {       
	ld	a, (#_pressing_right)
	or	a, a
	jr	NZ, 00131$
;main.c:202: if (canplayermove(robot.x + 16, robot.y)) {
	ldhl	sp,	#1
	ld	a, (hl-)
	ld	b, a
	ld	a, (hl)
	add	a, #0x10
	ld	e, b
	call	_canplayermove
	or	a, a
	jr	Z, 00131$
;main.c:203: squareone_play(0x08,0x80,0x26,freq_vals[frame_counter % 7],0x86);
	ld	hl, #_frame_counter
	ld	e, (hl)
	ld	d, #0x00
	ld	bc, #0x0007
	call	__modsint
	ld	hl, #_freq_vals
	add	hl, bc
	ld	a, (hl)
	ld	h, #0x86
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	inc	sp
	ld	h, a
	ld	l, #0x26
	push	hl
	ld	e, #0x80
	ld	a, #0x08
	call	_squareone_play
;main.c:204: robot.x += 16;
	ldhl	sp,	#0
	ld	a, (hl)
	add	a, #0x10
	ld	(hl), a
;main.c:205: pressing_right = TRUE;
	ld	hl, #_pressing_right
	ld	(hl), #0x01
	jr	00131$
00130$:
;main.c:209: pressing_right = FALSE;
	ld	hl, #_pressing_right
	ld	(hl), #0x00
00131$:
;main.c:212: if (joy_inp & J_START && !(prev_joy_inp & J_START)) {
	ldhl	sp,	#5
	ld	a, (hl-)
	or	a, (hl)
	jr	Z, 00140$
	ldhl	sp,	#7
	ld	a, (hl-)
	or	a, (hl)
	jr	NZ, 00140$
;main.c:213: game_state = 1;
	ldhl	sp,	#2
	ld	(hl), #0x01
;main.c:214: set_bkg_tiles(0, 0, 2, 2, BaseBG);
	ld	de, #_BaseBG
	push	de
	ld	hl, #0x202
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
;main.c:216: break;
	jr	00140$
;main.c:219: case 1:
00135$:
;main.c:220: if (joy_inp & J_START && !(prev_joy_inp & J_START)) {
	ldhl	sp,	#5
	ld	a, (hl-)
	or	a, (hl)
	jr	Z, 00140$
	ldhl	sp,	#7
	ld	a, (hl-)
	or	a, (hl)
	jr	NZ, 00140$
;main.c:221: game_state = 0;
	ldhl	sp,	#2
	ld	(hl), #0x00
;main.c:222: set_bkg_tiles(2, 0, 2, 2, BaseBG);
	ld	de, #_BaseBG
	push	de
	ld	hl, #0x202
	push	hl
	ld	hl, #0x02
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
;main.c:229: }
00140$:
;main.c:231: move_sprite(0, robot.x, robot.y);
	ldhl	sp,	#1
	ld	a, (hl-)
	ld	c, a
	ld	b, (hl)
;E:/gbdk/include/gb/gb.h:1675: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #_shadow_OAM
;E:/gbdk/include/gb/gb.h:1676: itm->y=y, itm->x=x;
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
;main.c:232: move_sprite(1, robot.x + 8, robot.y);
	ldhl	sp,	#1
	ld	a, (hl-)
	ld	c, a
	ld	a, (hl)
	add	a, #0x08
	ld	e, a
;E:/gbdk/include/gb/gb.h:1675: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #(_shadow_OAM + 4)
;E:/gbdk/include/gb/gb.h:1676: itm->y=y, itm->x=x;
	ld	(hl), c
	inc	hl
	ld	(hl), e
;main.c:234: frame_counter++;
	ld	hl, #_frame_counter
	inc	(hl)
;main.c:235: wait_vbl_done();
	call	_wait_vbl_done
	jp	00142$
;main.c:237: }
	add	sp, #8
	ret
;main.c:239: void main(){
;	---------------------------------
; Function main
; ---------------------------------
_main::
;main.c:241: SHOW_BKG;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
;main.c:242: SHOW_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x02
	ldh	(_LCDC_REG + 0), a
;main.c:243: DISPLAY_ON;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x80
	ldh	(_LCDC_REG + 0), a
;main.c:244: NR52_REG = 0x80;
	ld	a, #0x80
	ldh	(_NR52_REG + 0), a
;main.c:245: NR50_REG = 0x77;
	ld	a, #0x77
	ldh	(_NR50_REG + 0), a
;main.c:246: NR51_REG = 0xFF;
	ld	a, #0xff
	ldh	(_NR51_REG + 0), a
;main.c:248: game();
;main.c:250: }
	jp	_game
	.area _CODE
	.area _INITIALIZER
__xinit__GameTilesIndex:
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x09	; 9
	.db #0x0a	; 10
	.db #0x0b	; 11
	.db #0x0c	; 12
	.db #0x0d	; 13
	.db #0x0e	; 14
	.db #0x0f	; 15
	.db #0x10	; 16
	.db #0x11	; 17
	.db #0x12	; 18
	.db #0x13	; 19
	.db #0x14	; 20
	.db #0x15	; 21
	.db #0x16	; 22
	.db #0x17	; 23
	.db #0x18	; 24
	.db #0x19	; 25
	.db #0x1a	; 26
	.db #0x1b	; 27
	.db #0x1c	; 28
	.db #0x1d	; 29
	.db #0x1e	; 30
	.db #0x1f	; 31
	.db #0x20	; 32
	.db #0x21	; 33
	.db #0x22	; 34
	.db #0x23	; 35
	.db #0x24	; 36
	.db #0x25	; 37
	.db #0x26	; 38
	.db #0x27	; 39
	.db #0x00	; 0
__xinit__GameTiles:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x85	; 133
	.db #0x85	; 133
	.db #0x85	; 133
	.db #0x85	; 133
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0xa1	; 161
	.db #0xa1	; 161
	.db #0xa1	; 161
	.db #0xa1	; 161
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xb0	; 176
	.db #0xb0	; 176
	.db #0xcc	; 204
	.db #0x8c	; 140
	.db #0x82	; 130
	.db #0x82	; 130
	.db #0xc2	; 194
	.db #0x82	; 130
	.db #0x82	; 130
	.db #0x82	; 130
	.db #0xc2	; 194
	.db #0x82	; 130
	.db #0x82	; 130
	.db #0x82	; 130
	.db #0xca	; 202
	.db #0x8a	; 138
	.db #0x8a	; 138
	.db #0x8a	; 138
	.db #0xd2	; 210
	.db #0x82	; 130
	.db #0x82	; 130
	.db #0x82	; 130
	.db #0xd2	; 210
	.db #0x82	; 130
	.db #0x82	; 130
	.db #0x82	; 130
	.db #0xd2	; 210
	.db #0x82	; 130
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x0d	; 13
	.db #0x0d	; 13
	.db #0x33	; 51	'3'
	.db #0x31	; 49	'1'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x43	; 67	'C'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x43	; 67	'C'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x53	; 83	'S'
	.db #0x51	; 81	'Q'
	.db #0x51	; 81	'Q'
	.db #0x51	; 81	'Q'
	.db #0x4b	; 75	'K'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x4b	; 75	'K'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x4b	; 75	'K'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xa0	; 160
	.db #0xa0	; 160
	.db #0xe0	; 224
	.db #0xa0	; 160
	.db #0x90	; 144
	.db #0x90	; 144
	.db #0xd0	; 208
	.db #0x90	; 144
	.db #0x88	; 136
	.db #0x88	; 136
	.db #0xc8	; 200
	.db #0x88	; 136
	.db #0x88	; 136
	.db #0x88	; 136
	.db #0xc8	; 200
	.db #0x88	; 136
	.db #0xa8	; 168
	.db #0xa8	; 168
	.db #0xe8	; 232
	.db #0xa8	; 168
	.db #0x88	; 136
	.db #0x88	; 136
	.db #0xd8	; 216
	.db #0x88	; 136
	.db #0x88	; 136
	.db #0x88	; 136
	.db #0xd8	; 216
	.db #0x88	; 136
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x0b	; 11
	.db #0x09	; 9
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x13	; 19
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x13	; 19
	.db #0x11	; 17
	.db #0x15	; 21
	.db #0x15	; 21
	.db #0x17	; 23
	.db #0x15	; 21
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x1b	; 27
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x1b	; 27
	.db #0x11	; 17
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0xbf	; 191
	.db #0xbf	; 191
	.db #0xbf	; 191
	.db #0xbf	; 191
	.db #0xbf	; 191
	.db #0xbf	; 191
	.db #0xbf	; 191
	.db #0xbf	; 191
	.db #0xbf	; 191
	.db #0xbf	; 191
	.db #0xbf	; 191
	.db #0xbf	; 191
	.db #0xbf	; 191
	.db #0xbc	; 188
	.db #0xbf	; 191
	.db #0xbc	; 188
	.db #0xbf	; 191
	.db #0xb0	; 176
	.db #0xbf	; 191
	.db #0xb0	; 176
	.db #0xbf	; 191
	.db #0x80	; 128
	.db #0xbf	; 191
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0xfd	; 253
	.db #0xf1	; 241
	.db #0xfd	; 253
	.db #0xf1	; 241
	.db #0xfd	; 253
	.db #0xc1	; 193
	.db #0xfd	; 253
	.db #0xc1	; 193
	.db #0xfd	; 253
	.db #0x01	; 1
	.db #0xed	; 237
	.db #0x11	; 17
	.db #0xed	; 237
	.db #0x11	; 17
	.db #0xed	; 237
	.db #0x11	; 17
	.db #0xed	; 237
	.db #0x11	; 17
	.db #0x81	; 129
	.db #0x7d	; 125
	.db #0xc5	; 197
	.db #0x39	; 57	'9'
	.db #0xed	; 237
	.db #0x11	; 17
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0xcf	; 207
	.db #0x80	; 128
	.db #0xde	; 222
	.db #0x80	; 128
	.db #0xfc	; 252
	.db #0x80	; 128
	.db #0xf8	; 248
	.db #0x80	; 128
	.db #0xf1	; 241
	.db #0x80	; 128
	.db #0xe3	; 227
	.db #0x80	; 128
	.db #0xc7	; 199
	.db #0x80	; 128
	.db #0xcf	; 207
	.db #0x80	; 128
	.db #0xdf	; 223
	.db #0x80	; 128
	.db #0xfe	; 254
	.db #0x80	; 128
	.db #0xfc	; 252
	.db #0x80	; 128
	.db #0xf8	; 248
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0x1f	; 31
	.db #0x01	; 1
	.db #0x3f	; 63
	.db #0x01	; 1
	.db #0x7f	; 127
	.db #0x01	; 1
	.db #0xfb	; 251
	.db #0x01	; 1
	.db #0xf3	; 243
	.db #0x01	; 1
	.db #0xe3	; 227
	.db #0x01	; 1
	.db #0xc7	; 199
	.db #0x01	; 1
	.db #0x8f	; 143
	.db #0x01	; 1
	.db #0x1b	; 27
	.db #0x01	; 1
	.db #0x3b	; 59
	.db #0x01	; 1
	.db #0x7b	; 123
	.db #0x01	; 1
	.db #0xc3	; 195
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0x90	; 144
	.db #0xdf	; 223
	.db #0xb0	; 176
	.db #0xfe	; 254
	.db #0x80	; 128
	.db #0xfc	; 252
	.db #0x80	; 128
	.db #0xf8	; 248
	.db #0x80	; 128
	.db #0xf1	; 241
	.db #0x80	; 128
	.db #0xe3	; 227
	.db #0x80	; 128
	.db #0xc7	; 199
	.db #0x80	; 128
	.db #0x8f	; 143
	.db #0x80	; 128
	.db #0x9f	; 159
	.db #0x80	; 128
	.db #0xbf	; 191
	.db #0x90	; 144
	.db #0xdf	; 223
	.db #0xb1	; 177
	.db #0xfe	; 254
	.db #0x83	; 131
	.db #0xfc	; 252
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0x8f	; 143
	.db #0x05	; 5
	.db #0x17	; 23
	.db #0x0d	; 13
	.db #0x3f	; 63
	.db #0x01	; 1
	.db #0x7f	; 127
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0x03	; 3
	.db #0xfd	; 253
	.db #0x07	; 7
	.db #0xf9	; 249
	.db #0x0d	; 13
	.db #0xf3	; 243
	.db #0x19	; 25
	.db #0xe7	; 231
	.db #0x31	; 49	'1'
	.db #0xcf	; 207
	.db #0x61	; 97	'a'
	.db #0x9f	; 159
	.db #0xc5	; 197
	.db #0x37	; 55	'7'
	.db #0x8d	; 141
	.db #0x7f	; 127
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x83	; 131
	.db #0x83	; 131
	.db #0x8d	; 141
	.db #0x8f	; 143
	.db #0x9d	; 157
	.db #0x8f	; 143
	.db #0x9d	; 157
	.db #0x9f	; 159
	.db #0xa0	; 160
	.db #0x9f	; 159
	.db #0xbd	; 189
	.db #0x9f	; 159
	.db #0xbd	; 189
	.db #0x9f	; 159
	.db #0xa0	; 160
	.db #0x8f	; 143
	.db #0x9d	; 157
	.db #0x8f	; 143
	.db #0x9d	; 157
	.db #0x83	; 131
	.db #0x8d	; 141
	.db #0x80	; 128
	.db #0x83	; 131
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0xc1	; 193
	.db #0xc1	; 193
	.db #0xb1	; 177
	.db #0xf1	; 241
	.db #0xb9	; 185
	.db #0xf5	; 245
	.db #0xb9	; 185
	.db #0xf9	; 249
	.db #0x05	; 5
	.db #0xf9	; 249
	.db #0xbd	; 189
	.db #0xf9	; 249
	.db #0xbd	; 189
	.db #0xf9	; 249
	.db #0x05	; 5
	.db #0xf1	; 241
	.db #0xb9	; 185
	.db #0xf1	; 241
	.db #0xb9	; 185
	.db #0xc1	; 193
	.db #0xb1	; 177
	.db #0x01	; 1
	.db #0xc1	; 193
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x83	; 131
	.db #0x83	; 131
	.db #0x8f	; 143
	.db #0x8f	; 143
	.db #0x9f	; 159
	.db #0x8f	; 143
	.db #0x9f	; 159
	.db #0x9f	; 159
	.db #0xbf	; 191
	.db #0x9f	; 159
	.db #0xbf	; 191
	.db #0x9f	; 159
	.db #0xbf	; 191
	.db #0x9f	; 159
	.db #0xbf	; 191
	.db #0x8f	; 143
	.db #0x9f	; 159
	.db #0x8f	; 143
	.db #0x9f	; 159
	.db #0x83	; 131
	.db #0x8f	; 143
	.db #0x80	; 128
	.db #0x83	; 131
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0xc1	; 193
	.db #0xc1	; 193
	.db #0xf1	; 241
	.db #0xf1	; 241
	.db #0xf9	; 249
	.db #0xf5	; 245
	.db #0xf9	; 249
	.db #0xf9	; 249
	.db #0xfd	; 253
	.db #0xf9	; 249
	.db #0xfd	; 253
	.db #0xf9	; 249
	.db #0xfd	; 253
	.db #0xf9	; 249
	.db #0xfd	; 253
	.db #0xf1	; 241
	.db #0xf9	; 249
	.db #0xf1	; 241
	.db #0xf9	; 249
	.db #0xc1	; 193
	.db #0xf1	; 241
	.db #0x01	; 1
	.db #0xc1	; 193
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0xff	; 255
	.db #0xff	; 255
__xinit__MainSpriteLabel:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x5f	; 95
	.db #0x60	; 96
	.db #0x7f	; 127
	.db #0x4c	; 76	'L'
	.db #0x7b	; 123
	.db #0x56	; 86	'V'
	.db #0x77	; 119	'w'
	.db #0x5a	; 90	'Z'
	.db #0x7f	; 127
	.db #0x4c	; 76	'L'
	.db #0x7f	; 127
	.db #0x40	; 64
	.db #0x7f	; 127
	.db #0x43	; 67	'C'
	.db #0x4f	; 79	'O'
	.db #0x70	; 112	'p'
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0xfa	; 250
	.db #0x06	; 6
	.db #0xfe	; 254
	.db #0x32	; 50	'2'
	.db #0xee	; 238
	.db #0x5a	; 90	'Z'
	.db #0xde	; 222
	.db #0x6a	; 106	'j'
	.db #0xfe	; 254
	.db #0x32	; 50	'2'
	.db #0xfe	; 254
	.db #0x02	; 2
	.db #0xfe	; 254
	.db #0xc2	; 194
	.db #0xf2	; 242
	.db #0x0e	; 14
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x78	; 120	'x'
	.db #0x7f	; 127
	.db #0x5c	; 92
	.db #0x57	; 87	'W'
	.db #0x5f	; 95
	.db #0x53	; 83	'S'
	.db #0x5f	; 95
	.db #0x50	; 80	'P'
	.db #0x5f	; 95
	.db #0x50	; 80	'P'
	.db #0x5f	; 95
	.db #0x50	; 80	'P'
	.db #0x3f	; 63
	.db #0x30	; 48	'0'
	.db #0x0f	; 15
	.db #0x08	; 8
	.db #0x0b	; 11
	.db #0x0c	; 12
	.db #0x07	; 7
	.db #0x06	; 6
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x1e	; 30
	.db #0xfe	; 254
	.db #0x2a	; 42
	.db #0xfa	; 250
	.db #0xca	; 202
	.db #0xfa	; 250
	.db #0xca	; 202
	.db #0x3a	; 58
	.db #0xca	; 202
	.db #0x3a	; 58
	.db #0x8a	; 138
	.db #0x7a	; 122	'z'
	.db #0x8c	; 140
	.db #0x7c	; 124
	.db #0x90	; 144
	.db #0x70	; 112	'p'
	.db #0x10	; 16
	.db #0xf0	; 240
	.db #0x60	; 96
	.db #0xe0	; 224
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x1c	; 28
	.db #0x13	; 19
	.db #0x0f	; 15
	.db #0x0c	; 12
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x0b	; 11
	.db #0x0d	; 13
	.db #0x17	; 23
	.db #0x1b	; 27
	.db #0x1f	; 31
	.db #0x15	; 21
	.db #0x2f	; 47
	.db #0x33	; 51	'3'
	.db #0x3f	; 63
	.db #0x21	; 33
	.db #0x3f	; 63
	.db #0x27	; 39
	.db #0x2f	; 47
	.db #0x31	; 49	'1'
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0x38	; 56	'8'
	.db #0xc8	; 200
	.db #0xf0	; 240
	.db #0x30	; 48	'0'
	.db #0x20	; 32
	.db #0xe0	; 224
	.db #0xd0	; 208
	.db #0x30	; 48	'0'
	.db #0xe8	; 232
	.db #0xd8	; 216
	.db #0xf8	; 248
	.db #0x08	; 8
	.db #0xf4	; 244
	.db #0x8c	; 140
	.db #0xfc	; 252
	.db #0x44	; 68	'D'
	.db #0xfc	; 252
	.db #0x84	; 132
	.db #0xf4	; 244
	.db #0x0c	; 12
	.db #0x08	; 8
	.db #0xf8	; 248
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x0f	; 15
	.db #0x08	; 8
	.db #0x1f	; 31
	.db #0x11	; 17
	.db #0x1e	; 30
	.db #0x12	; 18
	.db #0x1f	; 31
	.db #0x11	; 17
	.db #0x17	; 23
	.db #0x18	; 24
	.db #0x0b	; 11
	.db #0x0c	; 12
	.db #0x07	; 7
	.db #0x06	; 6
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xf0	; 240
	.db #0x10	; 16
	.db #0xe8	; 232
	.db #0x98	; 152
	.db #0x68	; 104	'h'
	.db #0x58	; 88	'X'
	.db #0xe8	; 232
	.db #0x98	; 152
	.db #0xe8	; 232
	.db #0x18	; 24
	.db #0xd0	; 208
	.db #0x30	; 48	'0'
	.db #0x60	; 96
	.db #0xe0	; 224
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x40	; 64
	.db #0xc0	; 192
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x1f	; 31
	.db #0x18	; 24
	.db #0x3f	; 63
	.db #0x20	; 32
	.db #0x3f	; 63
	.db #0x20	; 32
	.db #0x3f	; 63
	.db #0x38	; 56	'8'
	.db #0x3f	; 63
	.db #0x27	; 39
	.db #0x3f	; 63
	.db #0x20	; 32
	.db #0x2f	; 47
	.db #0x30	; 48	'0'
	.db #0x1b	; 27
	.db #0x1c	; 28
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xf8	; 248
	.db #0x18	; 24
	.db #0xe4	; 228
	.db #0x1c	; 28
	.db #0xe4	; 228
	.db #0x1c	; 28
	.db #0xdc	; 220
	.db #0x3c	; 60
	.db #0xe4	; 228
	.db #0xfc	; 252
	.db #0xc4	; 196
	.db #0x3c	; 60
	.db #0x84	; 132
	.db #0x7c	; 124
	.db #0x98	; 152
	.db #0x78	; 120	'x'
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x1f	; 31
	.db #0x18	; 24
	.db #0x3f	; 63
	.db #0x20	; 32
	.db #0x3f	; 63
	.db #0x20	; 32
	.db #0x1f	; 31
	.db #0x18	; 24
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xf8	; 248
	.db #0x18	; 24
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xfc	; 252
	.db #0x04	; 4
	.db #0xf8	; 248
	.db #0x18	; 24
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x40	; 64
	.db #0x7f	; 127
	.db #0x42	; 66	'B'
	.db #0x7d	; 125
	.db #0x44	; 68	'D'
	.db #0x7b	; 123
	.db #0x4e	; 78	'N'
	.db #0x71	; 113	'q'
	.db #0x44	; 68	'D'
	.db #0x7b	; 123
	.db #0x48	; 72	'H'
	.db #0x77	; 119	'w'
	.db #0x40	; 64
	.db #0x7f	; 127
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0x7c	; 124
	.db #0x84	; 132
	.db #0x7e	; 126
	.db #0x86	; 134
	.db #0x7c	; 124
	.db #0x84	; 132
	.db #0x7c	; 124
	.db #0x84	; 132
	.db #0x7c	; 124
	.db #0x84	; 132
	.db #0x7e	; 126
	.db #0x86	; 134
	.db #0x7c	; 124
	.db #0x84	; 132
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x18	; 24
	.db #0x08	; 8
	.db #0x78	; 120	'x'
	.db #0x10	; 16
	.db #0x30	; 48	'0'
	.db #0x20	; 32
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x8e	; 142
	.db #0x8e	; 142
	.db #0x46	; 70	'F'
	.db #0x66	; 102	'f'
	.db #0x0a	; 10
	.db #0x1a	; 26
	.db #0x10	; 16
	.db #0x18	; 24
	.db #0x20	; 32
	.db #0x24	; 36
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x82	; 130
	.db #0x82	; 130
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x82	; 130
	.db #0x82	; 130
	.db #0x42	; 66	'B'
	.db #0x42	; 66	'B'
	.db #0x22	; 34
	.db #0x22	; 34
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
__xinit__ExitTile:
	.db #0x14	; 20
	.db #0x16	; 22
	.db #0x15	; 21
	.db #0x17	; 23
__xinit__BlankTile:
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x05	; 5
	.db #0x07	; 7
__xinit__paused:
	.db #0x00	;  0
__xinit__pressing_up:
	.db #0x00	;  0
__xinit__pressing_down:
	.db #0x00	;  0
__xinit__pressing_left:
	.db #0x00	;  0
__xinit__pressing_right:
	.db #0x00	;  0
__xinit__frame_counter:
	.db #0x00	; 0
__xinit__GameMap:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x05	; 5
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
__xinit__GameMapWidth:
	.db #0x14	; 20
__xinit__GameMapHeight:
	.db #0x10	; 16
	.area _CABS (ABS)
