set linetype 4 lc rgb 'green'

set title "農業総産出額（億円）" font "HiraKakuPro-W3, 20"
set xtics font "HiraKakuPro-W3, 20"
set xtics rotate by -90
set ytics font "HiraKakuPro-W3, 20"

set xlabel font "HiraKakuPro-W3, 15"
set ylabel font "HiraKakuPro-W3, 15"
set xlabel "品目"
set ylabel "農業総産出額"

set key off

set style fill solid border lc rgb "black"
set boxwidth 0.5 relative

plot 'sousansyutugaku.dat' using 0:2:($0+3):xticlabels(1) with boxes linecolor variable, '' u 0:($2 + 300):($2) with labels

