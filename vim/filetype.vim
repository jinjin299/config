" vim syntax highlight customizations
if exists("did_load_filetypes")
  finish
endif

augroup filetypedetect
  au! BufRead,BufNewFile in.*,*.in           setfiletype lammps
  au! BufRead,BufNewFile *.lmp          setfiletype lammps
  au! BufRead,BufNewFile *.gpl          setfiletype gnuplot
  au! BufRead,BufNewFile *.tcl          setfiletype tcl
"  au! BufRead,BufNewFile *.lt           setfiletype moltemplate
augroup END

