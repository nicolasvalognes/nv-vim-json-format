function! s:jsonFormat()
  execute ":g/'/s/'/\"/g"
  execute ":g/True/s/True/\"True\"/g"
  execute ":g/False/s/False/\"False\"/g"
  execute ":g/None/s/None/\"None\"/g"
  execute ":w"
  execute ":%!python3 -m json.tool"
  execute "normal! ggVG="
endfunction

command! -nargs=0 JsonFormat :call <SID>jsonFormat()
