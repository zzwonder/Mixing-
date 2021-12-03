This repository contains the source code of Mixing Method++ (base on the implentation of Mixing Method: https://github.com/locuslab/mixing).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
To compile, in ./solver/Mixing++, run $make. (GCC/7.3.0)

Usage:
./mixing [OPTIONS] DATA_FILE
OPTIONS:
	-s SOLVER: type of solver
	           "-s maxcut" for maximum cut
	           "-s maxsat" for maximum SAT (default)
	-k RANK: rank of solution (default auto)
	         use "-k /2" to divide the rank by 2
	-e EPS: stopping threshold (default 1.0000e-03)
	-t MAX_ITER: maximum iteration (default 1000)
	             use "-t max" for INT_MAX
	-r N_TRIAL: number of trial in evaluation (default 1)
	-u: use unspeficied wcnf format
	-v: verbose
                -b: parameter of momentum (default 0.45)

e.g.:
      ./solver/Mixing++/mixing -s maxcut -e 1e-5 -b 0.45 -t 10000 ./FilesMaxcut/data/G/Gset/G1/G1.mtx

When b=0, Mixing Method++ is equivalent with Mixing Method.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Experiments and Plots:

The codes for experiments and plots are base on the repository of CGAL (https://github.com/CGAL/cgal).

Due to the space limit, this repository only includes Gset (MAXCUT) as benchmarks in ./FilesMaxcut. It also contains SDPLR, SDPNAL+, Sedumi, CGAL and Mixing Method 
(if you want to test Mosek, please download it manually)  for comparison.

MATLAB is required.

To test a solver (e.g., CGAL), run:

./CGAL.sh DATA_FILE/DICT NAME_OF_DATASET
e.g.
To test on G1 in Gset:
./Mixing_PP.sh FilesMaxcut/data/G/Gset/G1/ G
./Mixing.sh FilesMaxcut/data/G/Gset/G1/ G
./CGAL.sh FilesMaxcut/data/G/G1.mat G
./Sedumi.sh FilesMaxcut/data/G/G1.mat G
./SDPLR.sh FilesMaxcut/data/G/G1.mat G
./SDPNAL.sh FilesMaxcut/data/G/G1.mat G
./Mosek.sh FilesMaxcut/data/G/G1.mat G

To plot Figure 1 and 2 in our paper on all cases in Gset: 

./Mixing_PP.sh FilesMaxcut/data/G/Gset G
./Mixing.sh FilesMaxcut/data/G/Gset G
./CGAL.sh FilesMaxcut/data/G G
./Sedumi.sh FilesMaxcut/data/G G
./SDPLR.sh FilesMaxcut/data/G G
./SDPNAL.sh FilesMaxcut/data/G G
./Mosek.sh FilesMaxcut/data/G G

After the computation, run Figure1_2.m to get Figure 1 and 2 (on Gset)