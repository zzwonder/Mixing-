Mixing ++ is an accelerated version of the Mixing Method (https://github.com/locuslab/mixing). The momentum is added for speeding up the convergence.

For more information, see the paper: https://arxiv.org/abs/2106.08775.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
To compile, run $make. (GCC/7.3.0)

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
