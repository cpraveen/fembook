# FEM examples using deal.II

The codes in directory `deal.II` are based on [deal.II](http://www.dealii.org) library. This is a C++ library for FEM in 1/2/3 dimensions. The examples here do not have detailed explanations and will not be sufficient to learn deal.II by themselves. Please study the superbly documented examples on the deal.II [website](https://www.dealii.org/developer/doxygen/deal.II/Tutorial.html). This is also a great resource to learn C++. You can also consult the following books for more on C++:

1. [B. Stroustrup: Tour of C++](http://www.stroustrup.com/tour2.html)
1. P. Gottschling: Discovering Modern C++

## Examples

1. ex01: 1-d BVP, Dirichlet bc
1. ex02: 2-d Poisson equation on unit square, Dirichlet bc, 2d/3d
1. ex03: 2-d Poisson equation on unit square, Dirichlet bc, assembly using MatrixCreator
1. ex04: 2-d Poisson equation on unit square, Dirichlet bc, convergence under uniform grid refinement
1. ex05: 2-d Poisson on unit square, mixed bc
1. ex06: 2-d Laplace equation in non-convex (Gamma-shaped) domain, convergence under uniform refinement
1. ex07: 2-d Laplace equation in non-convex (Gamma-shaped) domain, convergence under adaptive refinement
1. ex08: 2-d unsteady heat equation

## Installing deal.II
The examples are based on deal.II finite element library. You can find detailed installation instructions on the [deal.II website](http://www.dealii.org/developer/readme.html). To run most of the examples given here, it is enough to compile deal.II in serial mode. You will need a C++ compiler and cmake, which can be installed using the package manager in your operating system. Download the latest stable version of deal.II [here](https://github.com/dealii/dealii/releases). The instructions below are written assuming v9.2.0 but change this to the actual version you are using.

You will need to have C and C++ compilers installed. In Debian/Ubuntu, you can install like this
```
sudo apt update
sudo apt install build-essential
```
We need `cmake` to generate makefiles and we also use `wget` below to download some files; also install fortran compiler and gnuplot for visualization,
```
sudo apt install gfortran gnuplot cmake wget
```
Suppose we want to install deal.II in `$HOME/deal.II` directory. Add following line in your `$HOME/.bashrc` file
```
export DEAL_II_DIR=$HOME/deal.II
```
You may have to source the file
```
source $HOME/.bashrc
```
or open a new terminal window.

To compile deal.II, follow these steps. A sample `dealii.sh` script is included in this repository.
```
cd $HOME
wget https://github.com/dealii/dealii/releases/download/v9.2.0/dealii-9.2.0.tar.gz
tar zxvf dealii-9.2.0.tar.gz
cd dealii-9.2.0
wget https://raw.githubusercontent.com/cpraveen/fembook/master/deal.II/dealii.sh
mkdir -p build && cd build
sh ../dealii.sh
```
This creates Makefile etc., and the contents of the `build`  directory look something like this
```
$ ls
bin		CMakeFiles	     detailed.log  lib		 source
bundled		cmake_install.cmake  doc	   Makefile	 summary.log
cmake		contrib		     examples	   revision.log  tests
CMakeCache.txt	CTestTestfile.cmake  include	   share
```
Now compile
```
make -j4      # number = number of CPU cores
make install
```
Now you can delete the directory where you compiled and also the source file
```
cd $HOME
rm -rf dealii-9.2.0
rm dealii-9.2.0.tar.gz
```
Also, download and install the offline documentation by following these steps.
```
cd $DEAL_II_DIR
wget https://github.com/dealii/dealii/releases/download/v9.2.0/dealii-9.2.0-offline_documentation.tar.gz
tar zxvf dealii-9.2.0-offline_documentation.tar.gz
rm dealii-9.2.0-offline_documentation.tar.gz
```
Now you can open `$DEAL_II_DIR/doc/index.html` in your web browser and view the documentation.

## Automated installation

A bash script that can automate the above installation process is also included. Do the following steps
```
cd $HOME
wget https://raw.githubusercontent.com/cpraveen/fembook/master/deal.II/dealii_basic.sh
sh ./dealii_basic.sh
```
This will install deal.II into the directory `$HOME/deal.II`; you can set the location of install directory by editing the bash script.
