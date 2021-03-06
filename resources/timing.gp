# http://gnuplot.respawned.com/
# Scale font and line width (dpi) by changing the size! It will always display stretched.
set terminal svg size 400,300 enhanced fname 'arial'  fsize 10 butt solid
set output 'out.svg'

motor=5
boost=45
startrpm=5000
finishrpm=25000

# Key means label...
unset key
set xlabel 'RPM'
set ylabel 'Timing'
set grid xtics mxtics ytics mytics
set xrange [0:30000]
set yrange [-1:motor+boost+10]

plot motor+(0<=x && x<startrpm ? 0 : startrpm<=x && x<finishrpm ? boost*((x-startrpm)/(finishrpm-startrpm)) : boost), 40
