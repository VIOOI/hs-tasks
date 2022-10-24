let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
let AutoPairsMapCh =  1 
let AutoPairsMapBS =  1 
let AutoPairsSmartQuotes =  1 
let AutoPairsShortcutBackInsert = "<M-b>"
let AutoPairsLoaded =  1 
let AutoPairsShortcutToggle = "<M-p>"
let AutoPairsShortcutFastWrap = "<M-e>"
let AutoPairsMultilineClose =  1 
let AutoPairsMapCR =  1 
let AutoPairsShortcutJump = "<M-n>"
let AutoPairsMapSpace =  1 
let AutoPairsMoveCharacter = "()[]{}\"'"
let AutoPairsWildClosedPair = ""
let AutoPairsCenterLine =  1 
let AutoPairsFlyMode =  0 
silent only
silent tabonly
cd ~/Documents/Code/HTML/hs-alpine
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +71 ~/Documents/Code/HTML/hs-alpine/src/main.ts
badd +361 ~/Documents/Code/HTML/hs-alpine/index.html
badd +13 ~/Documents/Code/HTML/hs-alpine/src/styles/style.scss
badd +98 ~/Documents/Code/HTML/hs-alpine/src/styles/header.scss
badd +351 ~/Documents/Code/HTML/hs-alpine/src/styles/main.scss
badd +67 ~/Documents/Code/HTML/hs-alpine/src/styles/footer.scss
argglobal
%argdel
$argadd ./
tabnew +setlocal\ bufhidden=wipe
tabnew +setlocal\ bufhidden=wipe
tabrewind
edit ~/Documents/Code/HTML/hs-alpine/src/main.ts
argglobal
balt ~/Documents/Code/HTML/hs-alpine/index.html
setlocal fdm=expr
setlocal fde=nvim_treesitter#foldexpr()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
14
normal! zo
20
normal! zo
29
normal! zo
39
normal! zo
44
normal! zo
49
normal! zo
54
normal! zo
61
normal! zo
62
normal! zo
let s:l = 71 - ((16 * winheight(0) + 30) / 61)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 71
normal! 027|
tabnext
edit ~/Documents/Code/HTML/hs-alpine/index.html
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 104 + 104) / 208)
exe 'vert 2resize ' . ((&columns * 103 + 104) / 208)
argglobal
balt ~/Documents/Code/HTML/hs-alpine/src/styles/style.scss
setlocal fdm=expr
setlocal fde=nvim_treesitter#foldexpr()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
2
normal! zo
3
normal! zo
9
normal! zo
10
normal! zo
11
normal! zo
12
normal! zo
13
normal! zo
20
normal! zo
21
normal! zo
22
normal! zo
24
normal! zo
26
normal! zo
32
normal! zo
33
normal! zo
34
normal! zo
38
normal! zo
41
normal! zo
42
normal! zo
44
normal! zo
45
normal! zo
46
normal! zo
47
normal! zo
55
normal! zo
56
normal! zo
57
normal! zo
59
normal! zo
60
normal! zo
62
normal! zo
73
normal! zo
84
normal! zo
85
normal! zo
89
normal! zo
93
normal! zo
94
normal! zo
97
normal! zo
112
normal! zo
138
normal! zo
142
normal! zo
145
normal! zo
158
normal! zo
162
normal! zo
175
normal! zo
176
normal! zo
182
normal! zo
183
normal! zo
188
normal! zo
212
normal! zo
231
normal! zo
234
normal! zo
235
normal! zo
253
normal! zo
257
normal! zo
273
normal! zo
274
normal! zo
282
normal! zo
290
normal! zo
299
normal! zo
314
normal! zo
327
normal! zo
327
normal! zo
356
normal! zo
356
normal! zo
357
normal! zo
360
normal! zo
let s:l = 382 - ((49 * winheight(0) + 30) / 61)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 382
normal! 034|
wincmd w
argglobal
if bufexists(fnamemodify("~/Documents/Code/HTML/hs-alpine/src/styles/footer.scss", ":p")) | buffer ~/Documents/Code/HTML/hs-alpine/src/styles/footer.scss | else | edit ~/Documents/Code/HTML/hs-alpine/src/styles/footer.scss | endif
if &buftype ==# 'terminal'
  silent file ~/Documents/Code/HTML/hs-alpine/src/styles/footer.scss
endif
balt ~/Documents/Code/HTML/hs-alpine/src/styles/main.scss
setlocal fdm=expr
setlocal fde=nvim_treesitter#foldexpr()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 70 - ((53 * winheight(0) + 30) / 61)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 70
normal! 05|
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 104 + 104) / 208)
exe 'vert 2resize ' . ((&columns * 103 + 104) / 208)
tabnext
edit ~/Documents/Code/HTML/hs-alpine/src/styles/header.scss
argglobal
balt ~/Documents/Code/HTML/hs-alpine/src/styles/style.scss
setlocal fdm=expr
setlocal fde=nvim_treesitter#foldexpr()
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 135 - ((9 * winheight(0) + 30) / 61)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 135
normal! 0
tabnext 2
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
