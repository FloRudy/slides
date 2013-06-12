

set terminal postscript enhanced eps color

set size 0.95,0.95

set key top right
set style fill solid border -1
set style data histogram
set style histogram rowstacked
set boxwidth 0.95

## Vector addition

set output 'vector-addition.eps'
set ylabel "Vector Additions per Second (more is better)"
plot newhistogram "float" lt 1, \
     "vector-addition" index 0 using (100.0/$2):xticlabels(1) title "standard" lt 1 lc rgb "#4444FF", \
     "" index 0 using (100.0/$3 - 100.0/$2) title "tuned" lt 1 lc rgb "#CCCCFF", \
     newhistogram "double" lt 1, \
     "vector-addition" index 1 using (100.0/$2):xticlabels(1) notitle lt 1 lc rgb "#4444FF", \
     "" index 1 using (100.0/$3 - 100.0/$2) notitle lt 1 lc rgb "#CCCCFF"

## Inner products

set output 'inner-product.eps'
set ylabel "Inner Products per Second (more is better)"
plot newhistogram "float" lt 1, \
     "inner-product" index 0 using (100.0/$2):xticlabels(1) title "standard" lt 1 lc rgb "#4444FF", \
     "" index 0 using (100.0/$3 - 100.0/$2) title "tuned" lt 1 lc rgb "#CCCCFF", \
     newhistogram "double" lt 1, \
     "inner-product" index 1 using (100.0/$2):xticlabels(1) notitle lt 1 lc rgb "#4444FF", \
     "" index 1 using (100.0/$3 - 100.0/$2) notitle lt 1 lc rgb "#CCCCFF"

## Matrix-Vector

set output 'matvec-product.eps'
set ylabel "Matrix Vector Products per Second (more is better)"
plot newhistogram "float" lt 1, \
     "matvec-product" index 0 using (100.0/$2):xticlabels(1) title "standard" lt 1 lc rgb "#4444FF", \
     "" index 0 using (100.0/$3 - 100.0/$2) title "tuned" lt 1 lc rgb "#CCCCFF", \
     newhistogram "double" lt 1, \
     "matvec-product" index 1 using (100.0/$2):xticlabels(1) notitle lt 1 lc rgb "#4444FF", \
     "" index 1 using (100.0/$3 - 100.0/$2) notitle lt 1 lc rgb "#CCCCFF"



## CG Solver
set output 'cg-solver.eps'
set ylabel "Conjugate Gradient Iterations per Second (more is better)"
set yrange [0:2500]
#Note: 10 benchmark runs with 10 iterations each!
plot newhistogram "float" lt 1, \
     "cg-solver" index 0 using (100.0/$2):xticlabels(1) title "standard" lt 1 lc rgb "#4444FF", \
     "" index 0 using (100.0/$3 - 100.0/$2) title "tuned" lt 1 lc rgb "#CCCCFF", \
     newhistogram "double" lt 1, \
     "cg-solver" index 1 using (100.0/$2):xticlabels(1) notitle lt 1 lc rgb "#4444FF", \
     "" index 1 using (100.0/$3 - 100.0/$2) notitle lt 1 lc rgb "#CCCCFF"

