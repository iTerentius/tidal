let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +17 Music/tidal/fx/fx-2021.08.29.tidal
badd +1 ~/Music/tidal/2021.07.23.tidal
badd +6 Music/supercollider/tidal/orbit-routing.scd
badd +136 \[sclang]
badd +21 term://.//6819:tidal
badd +0 Music/tidal/2021.09.24a.tidal
argglobal
%argdel
edit Music/tidal/2021.09.24a.tidal
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd w
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 31 + 119) / 238)
exe '2resize ' . ((&lines * 49 + 30) / 60)
exe 'vert 2resize ' . ((&columns * 102 + 119) / 238)
exe '3resize ' . ((&lines * 49 + 30) / 60)
exe 'vert 3resize ' . ((&columns * 103 + 119) / 238)
exe '4resize ' . ((&lines * 6 + 30) / 60)
exe 'vert 4resize ' . ((&columns * 206 + 119) / 238)
argglobal
enew
file NERD_tree_1
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
wincmd w
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists("Music/supercollider/tidal/orbit-routing.scd") | buffer Music/supercollider/tidal/orbit-routing.scd | else | edit Music/supercollider/tidal/orbit-routing.scd | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 34 - ((33 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
34
normal! 0
wincmd w
argglobal
if bufexists("term://.//6819:tidal") | buffer term://.//6819:tidal | else | edit term://.//6819:tidal | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 21 - ((1 * winheight(0) + 3) / 6)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
21
normal! 025|
wincmd w
exe 'vert 1resize ' . ((&columns * 31 + 119) / 238)
exe '2resize ' . ((&lines * 49 + 30) / 60)
exe 'vert 2resize ' . ((&columns * 102 + 119) / 238)
exe '3resize ' . ((&lines * 49 + 30) / 60)
exe 'vert 3resize ' . ((&columns * 103 + 119) / 238)
exe '4resize ' . ((&lines * 6 + 30) / 60)
exe 'vert 4resize ' . ((&columns * 206 + 119) / 238)
tabnext 1
if exists('s:wipebuf') && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 winminheight=1 winminwidth=1 shortmess=filnxtToOFAc
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
