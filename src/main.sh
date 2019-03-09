#!/bin/bash

g++ -Wall -g main.cpp -std=c++11 -o bin/main.exe
./bin/main.exe < input/in

# toda esta parte comentada nao diz respeito ao algoritmo Q, mas aos outros tipos de estimadores.

# gnuplot <<- EOF
#   set grid layerdefault linewidth 1
#   set xlabel "Etiquetas"
#   set ylabel "Slots"
#   set title "Numero total de Slots usados por cada estimador, iniciando em 64"
#   set style line 1 pt 1
#   set style line 2 pt 2
#   set term png
#   set output "graphs/slots.png"
#   plot "output/slots.csv" u 1:2 pt 1 title "LowerBound" w linespoints, "output/slots.csv" u 1:3 title "Eom Lee" w linespoints, "output/slots.csv" u 1:4 title "DS-MAP" w linespoints, "output/slots.csv" u 1:5 title "Chen" w linespoints
# EOF

# gnuplot <<- EOF
#   set grid layerdefault linewidth 1
#   set xlabel "Etiquetas"
#   set ylabel "Slots"
#   set title "Numero total de Slots usados por cada estimador, iniciando em 128"
#   set style line 1 pt 1
#   set style line 2 pt 2
#   set term png
#   set output "graphs/slots128.png"
#   plot "output/slots128.csv" u 1:2 pt 1 title "LowerBound" w linespoints, "output/slots128.csv" u 1:3 title "Eom Lee" w linespoints, "output/slots128.csv" u 1:4 title "DS-MAP" w linespoints, "output/slots128.csv" u 1:5 title "Chen" w linespoints
# EOF

# #set yrange [inf:sup]

# gnuplot <<- EOF
#   set grid layerdefault linewidth 1
#   set xlabel "Etiquetas"
#   set ylabel "Slots vazios"
#   set title "Numero total de Slots vazios para cada estimador"
#   set term png
#   set output "graphs/empties.png"
#   plot "output/empties.csv" u 1:2 title "LowerBound" w linespoints, "output/empties.csv" u 1:3 title "Eom Lee" w linespoints, "output/empties.csv" u 1:4 title "DS-MAP" w linespoints,  "output/empties.csv" u 1:5 title "Chen" w linespoints
# EOF

# gnuplot <<- EOF
#   set grid layerdefault linewidth 1
#   set xlabel "Etiquetas"
#   set ylabel "Slots vazios"
#   set title "Numero total de Slots vazios para cada estimador - 128"
#   set term png
#   set output "graphs/empties128.png"
#   plot "output/empties128.csv" u 1:2 title "LowerBound" w linespoints, "output/empties128.csv" u 1:3 title "Eom Lee" w linespoints, "output/empties128.csv" u 1:4 title "DS-MAP" w linespoints,  "output/empties128.csv" u 1:5 title "Chen" w linespoints
# EOF

# gnuplot <<- EOF
#   set grid layerdefault linewidth 1
#   set xlabel "Etiquetas"
#   set ylabel "colisoes"
#   set title "Numero total de colisoes para cada estimador"
#   set term png
#   set output "graphs/collisions.png"
#   plot "output/collisions.csv" u 1:2 title "LowerBound" w linespoints, "output/collisions.csv" u 1:3 title "Eom Lee" w linespoints, "output/collisions.csv" u 1:4 title "DS-MAP" w linespoints, "output/collisions.csv" u 1:5 title "Chen" w linespoints
# EOF

# gnuplot <<- EOF
#   set grid layerdefault linewidth 1
#   set xlabel "Etiquetas"
#   set ylabel "colisoes"
#   set title "Numero total de colisoes para cada estimador - 128"
#   set term png
#   set output "graphs/collisions128.png"
#   plot "output/collisions128.csv" u 1:2 title "LowerBound" w linespoints, "output/collisions128.csv" u 1:3 title "Eom Lee" w linespoints, "output/collisions128.csv" u 1:4 title "DS-MAP" w linespoints, "output/collisions128.csv" u 1:5 title "Chen" w linespoints
# EOF

# gnuplot <<- EOF
#   set grid layerdefault linewidth 1
#   set xlabel "Etiquetas"
#   set ylabel "Runtime in Microseconds"
#   set title "Total Simulation Runtime in Microseconds"
#   set term png
#   set output "graphs/time.png"
#   plot "output/time.csv" u 1:2 title "LowerBound" w linespoints, "output/time.csv" u 1:3 title "Eom Lee" w linespoints, "output/time.csv" u 1:4 title "DS-MAP" w linespoints, "output/time.csv" u 1:5 title "Chen" w linespoints
# EOF

# gnuplot <<- EOF
#   set grid layerdefault linewidth 1
#   set xlabel "Etiquetas"
#   set ylabel "Runtime in Microseconds"
#   set title "Total Simulation Runtime in Microseconds - 128"
#   set term png
#   set output "graphs/time128.png"
#   plot "output/time128.csv" u 1:2 title "LowerBound" w linespoints, "output/time128.csv" u 1:3 title "Eom Lee" w linespoints, "output/time128.csv" u 1:4 title "DS-MAP" w linespoints, "output/time128.csv" u 1:5 title "Chen" w linespoints
# EOF

# gnuplot <<- EOF
#   set grid layerdefault linewidth 1
#   set xlabel "Etiquetas"
#   set ylabel "Throughput"
#   set title "Total Throughput"
#   set term png
#   set output "graphs/flow.png"
#   plot "output/flow.csv" u 1:2 title "LowerBound" w linespoints, "output/flow.csv" u 1:3 title "Eom Lee" w linespoints, "output/flow.csv" u 1:4 title "DS-MAP" w linespoints, "output/flow.csv" u 1:5 title "Chen" w linespoints
# EOF

# gnuplot <<- EOF
#   set grid layerdefault linewidth 1
#   set xlabel "Etiquetas"
#   set ylabel "Throughput"
#   set title "Total Throughput - 128"
#   set term png
#   set output "graphs/flow128.png"
#   plot "output/flow128.csv" u 1:2 title "LowerBound" w linespoints, "output/flow128.csv" u 1:3 title "Eom Lee" w linespoints, "output/flow128.csv" u 1:4 title "DS-MAP" w linespoints, "output/flow128.csv" u 1:5 title "Chen" w linespoints
# EOF

# gnuplot <<- EOF
#   set grid layerdefault linewidth 1
#   set xlabel "Etiquetas"
#   set ylabel "Efficiency"
#   set title "Efficiency for each Estimator"
#   set term png
#   set output "graphs/efficiency.png"
#   plot "output/efficiency.csv" u 1:2 title "LowerBound" w linespoints, "output/efficiency.csv" u 1:3 title "Eom Lee" w linespoints, "output/efficiency.csv" u 1:4 title "DS-MAP" w linespoints, "output/efficiency.csv" u 1:5 title "Chen" w linespoints
# EOF

# gnuplot <<- EOF
#   set grid layerdefault linewidth 1
#   set xlabel "Etiquetas"
#   set ylabel "Slots"
#   set title "Numero total de Slots usados por Q"
#   set style line 1 pt 1
#   set style line 2 pt 2
#   set term png
#   set output "graphs/Qnovo/QSlots.png"
#   plot "output/QSlots.csv" u 1:2 pt 1 title "Algorythm Q" w linespoints, "output/QSlotso.csv" u 1:2 title "Otimo Q" w linespoints
# EOF

# gnuplot <<- EOF
#   set grid layerdefault linewidth 1
#   set xlabel "Etiquetas"
#   set ylabel "Vazios"
#   set title "Numero total de Slots vazios"
#   set style line 1 pt 1
#   set style line 2 pt 2
#   set term png
#   set output "graphs/Qnovo/Qempties.png"
#   plot "output/Qempities.csv" u 1:2 pt 1 title "Algorythm Q" w linespoints, "output/Qempitieso.csv" u 1:2 title "Otimo Q" w linespoints
# EOF

# gnuplot <<- EOF
#   set grid layerdefault linewidth 1
#   set xlabel "Etiquetas"
#   set ylabel "Efficiency"
#   # set yrange [0.3:0.36]
#   set title "Eficiencia de Q"
#   set style line 1 pt 1
#   set style line 2 pt 2
#   set term png
#   set output "graphs/Qnovo/Qefficience.png"
#   plot "output/Qefficience.csv" u 1:2 pt 1 title "Algorythm Q" w linespoints, "output/Qefficienceo.csv" u 1:2 title "Otimo Q" w linespoints
# EOF

# gnuplot <<- EOF
#   set grid layerdefault linewidth 1
#   set xlabel "Etiquetas"
#   set ylabel "collisions"
#   set title "Numero total de colisoes ocorridas utilizando Q"
#   set style line 1 pt 1
#   set style line 2 pt 2
#   set term png
#   set output "graphs/Qnovo/QCollisions.png"
#   plot "output/QCollision.csv" u 1:2 pt 1 title "Algorythm Q" w linespoints, "output/QCollisiono.csv" u 1:2 title "Otimo Q" w linespoints
# EOF

# gnuplot <<- EOF
#   set grid layerdefault linewidth 1
#   set xlabel "Etiquetas"
#   set ylabel "Run time in microsseconds"
#   set title "Total Simulation Runtime in Microseconds"
#   set style line 1 pt 1
#   set style line 2 pt 2
#   set term png
#   set output "graphs/Qnovo/Qtime.png"
#   plot "output/QTime.csv" u 1:2 pt 1 title "Algorythm Q" w linespoints, "output/QTimeo.csv" u 1:2 title "Otimo Q" w linespoints
# EOF

gnuplot <<- EOF
  set grid 
  # set xtics 020
  # set ytics 020
  # set ztics 050
  set xlabel "CqC"
  set ylabel "CqE"
  set zlabel "Time"
  set yrange [0.1:0.5]
  set xrange [0.1:0.5]
  set title "Total Simulation Runtime in Microseconds for 100 tags"
  set hidden3d
  set view 65,35,1,1
  set style line 1 pt 1
  set style line 2 pt 2
  set contour base
  # set cntrparam levels incremental 0,25,300;
  set dgrid3d 30,30
  set term png
  set output "graphs/Qnovo/Qtime3d100.png"
  splot "output/3dinfo/Qtime100.csv" u 1:2:3 w lines
EOF

gnuplot <<- EOF
  set grid 
  # set xtics 020
  # set ytics 020
  # set ztics 050
  set xlabel "CqC"
  set ylabel "CqE"
  set zlabel "Time"
  set yrange [0.1:0.5]
  set xrange [0.1:0.5]
  set title "Total Simulation Runtime in Microseconds for 200 tags"
  set hidden3d
  set view 65,35,1,1
  set style line 1 pt 1
  set style line 2 pt 2
  set contour base
  # set cntrparam levels incremental 0,25,300;
  set dgrid3d 30,30
  set term png
  set output "graphs/Qnovo/Qtime3d200.png"
  splot "output/3dinfo/Qtime200.csv" u 1:2:3 w lines
EOF

gnuplot <<- EOF
  set grid 
  # set xtics 020
  # set ytics 020
  # set ztics 050
  set xlabel "CqC"
  set ylabel "CqE"
  set zlabel "Time"
  set yrange [0.1:0.5]
  set xrange [0.1:0.5]
  set title "Total Simulation Runtime in Microseconds for 300 tags"
  set hidden3d
  set view 65,35,1,1
  set style line 1 pt 1
  set style line 2 pt 2
  set contour base
  # set cntrparam levels incremental 0,25,300;
  set dgrid3d 30,30
  set term png
  set output "graphs/Qnovo/Qtime3d300.png"
  splot "output/3dinfo/Qtime300.csv" u 1:2:3 w lines
EOF

gnuplot <<- EOF
  set grid 
  # set xtics 020
  # set ytics 020
  # set ztics 050
  set xlabel "CqC"
  set ylabel "CqE"
  set zlabel "Time"
  set yrange [0.1:0.5]
  set xrange [0.1:0.5]
  set title "Total Simulation Runtime in Microseconds for 400 tags"
  set hidden3d
  set view 65,35,1,1
  set style line 1 pt 1
  set style line 2 pt 2
  set contour base
  # set cntrparam levels incremental 0,25,300;
  set dgrid3d 30,30
  set term png
  set output "graphs/Qnovo/Qtime3d400.png"
  splot "output/3dinfo/Qtime400.csv" u 1:2:3 w lines
EOF

gnuplot <<- EOF
  set grid 
  # set xtics 020
  # set ytics 020
  # set ztics 050
  set xlabel "CqC"
  set ylabel "CqE"
  set zlabel "Time"
  set yrange [0.1:0.5]
  set xrange [0.1:0.5]
  set title "Total Simulation Runtime in Microseconds for 500 tags"
  set hidden3d
  set view 65,35,1,1
  set style line 1 pt 1
  set style line 2 pt 2
  set contour base
  # set cntrparam levels incremental 0,25,300;
  set dgrid3d 30,30
  set term png
  set output "graphs/Qnovo/Qtime3d500.png"
  splot "output/3dinfo/Qtime500.csv" u 1:2:3 w lines
EOF

gnuplot <<- EOF
  set grid 
  # set xtics 020
  # set ytics 020
  # set ztics 050
  set xlabel "CqC"
  set ylabel "CqE"
  set zlabel "Time"
  set yrange [0.1:0.5]
  set xrange [0.1:0.5]
  set title "Total Simulation Runtime in Microseconds for 600 tags"
  set hidden3d
  set view 65,35,1,1
  set style line 1 pt 1
  set style line 2 pt 2
  set contour base
  # set cntrparam levels incremental 0,25,300;
  set dgrid3d 30,30
  set term png
  set output "graphs/Qnovo/Qtime3d600.png"
  splot "output/3dinfo/Qtime600.csv" u 1:2:3 w lines
EOF

gnuplot <<- EOF
  set grid 
  # set xtics 020
  # set ytics 020
  # set ztics 050
  set xlabel "CqC"
  set ylabel "CqE"
  set zlabel "Time"
  set yrange [0.1:0.5]
  set xrange [0.1:0.5]
  set title "Total Simulation Runtime in Microseconds for 700 tags"
  set hidden3d
  set view 65,35,1,1
  set style line 1 pt 1
  set style line 2 pt 2
  set contour base
  # set cntrparam levels incremental 0,25,300;
  set dgrid3d 30,30
  set term png
  set output "graphs/Qnovo/Qtime3d700.png"
  splot "output/3dinfo/Qtime700.csv" u 1:2:3 w lines
EOF

gnuplot <<- EOF
  set grid 
  # set xtics 020
  # set ytics 020
  # set ztics 050
  set xlabel "CqC"
  set ylabel "CqE"
  set zlabel "Time"
  set yrange [0.1:0.5]
  set xrange [0.1:0.5]
  set title "Total Simulation Runtime in Microseconds for 800 tags"
  set hidden3d
  set view 65,35,1,1
  set style line 1 pt 1
  set style line 2 pt 2
  set contour base
  # set cntrparam levels incremental 0,25,300;
  set dgrid3d 30,30
  set term png
  set output "graphs/Qnovo/Qtime3d800.png"
  splot "output/3dinfo/Qtime800.csv" u 1:2:3 w lines
EOF

gnuplot <<- EOF
  set grid 
  # set xtics 020
  # set ytics 020
  # set ztics 050
  set xlabel "CqC"
  set ylabel "CqE"
  set zlabel "Time"
  set yrange [0.1:0.5]
  set xrange [0.1:0.5]
  set title "Total Simulation Runtime in Microseconds for 900 tags"
  set hidden3d
  set view 65,35,1,1
  set style line 1 pt 1
  set style line 2 pt 2
  set contour base
  # set cntrparam levels incremental 0,25,300;
  set dgrid3d 30,30
  set term png
  set output "graphs/Qnovo/Qtime3d900.png"
  splot "output/3dinfo/Qtime900.csv" u 1:2:3 w lines
EOF

gnuplot <<- EOF
  set grid 
  # set xtics 020
  # set ytics 020
  # set ztics 050
  set xlabel "CqC"
  set ylabel "CqE"
  set zlabel "Time"
  set yrange [0.1:0.5]
  set xrange [0.1:0.5]
  set title "Total Simulation Runtime in Microseconds for 1000 tags"
  set hidden3d
  set view 65,35,1,1
  set style line 1 pt 1
  set style line 2 pt 2
  set contour base
  # set cntrparam levels incremental 0,25,300;
  set dgrid3d 30,30
  set term png
  set output "graphs/Qnovo/Qtime3d1000.png"
  splot "output/3dinfo/Qtime1000.csv" u 1:2:3 w lines
EOF