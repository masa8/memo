set linetype 4 lc rgb 'green'

set title "雑誌「養牛の友」2015年1月〜11月号 掲載広告種類別ページ数" font "HiraKakuPro-W3, 20"
set xtics font "HiraKakuPro-W3, 20"
set xtics rotate by -90
set ytics font "HiraKakuPro-W3, 20"

set xlabel font "HiraKakuPro-W3, 15"
set ylabel font "HiraKakuPro-W3, 15"
set xlabel "広告種別"
set ylabel "ページ数 (ページ)"

set key off

set style fill solid border lc rgb "black"
set boxwidth 0.5 relative

plot 'yougyunotomo.dat' using 0:2:($0+3):xticlabels(1) with boxes linecolor variable, '' u 0:($2 + 2):($3) with labels

