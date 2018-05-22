#! /bin/sh

source /sps/lsst/software/lsst_sims/sims_2_7_0/loadLSST.bash
setup sims_maf -t sims

export LS_COLORS="exfxcxdxbxegedabagacad"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

alias ls="ls $LS_OPTIONS"
alias ll="ls -l $LS_OPTIONS"
alias rm="rm -i"
alias xemacs="xemacs -l ~/.xemacs-options"

PS1='${PWD}>'

#PACKAGES
export TOPDIR="/pbs/throng/lsst/users/dagoret"
export PACKAGES=${TOPDIR}/External
export HDF5DIR=${PACKAGES}/HDF5
export HDF4DIR=${PACKAGES}/HDF4
export NETCDFDIR=${PACKAGES}/NetCDF
export LIBRADTRANDIR=${PACKAGES}/libRadtran/libRadtran-2.0.1
export PATH=.:${HDF4DIR}/bin:${PATH}
export PATH=.:${NETCDFDIR}/bin:${PATH}
export PATH=.:${LIBRADTRANDIR}/bin:${PATH}

export INCLUDE_DIRS=${NETCDFDIR}/include:${HDF4DIR}/include:${HDF5DIR}/include:${INCLUDE_DIRS}
export LIBRARY_DIRS=${HDF4DIR}/lib:${HDF5DIR}/lib:${NETCDFDIR}/lib:${LIBRARY_DIRS}


# only when working with Librandtran

export LD_LIBRARY_PATH=${NETCDFDIR}/lib:${HDF4DIR}/lib
#export PATH=${HOME}/.local/bin${PATH:+:$PATH}

source /sps/lsst/software/lsst_sims/sims_2_7_0/loadLSST.bash
setup sims_maf -t sims

