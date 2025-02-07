if (NOT DEBUG)
  string(APPEND CFLAGS " -O2 -Mvect=nosimd")
endif()
if (COMP_NAME STREQUAL gptl)
  string(APPEND CPPDEFS " -DHAVE_SLASHPROC")
endif()
if (NOT DEBUG)
  string(APPEND FFLAGS " -O2 -Mvect=nosimd -DSUMMITDEV_PGI")
endif()
string(APPEND LDFLAGS " -gpu=cc70,cc60,deepcopy -Minfo=accel")
string(APPEND SLIBS " -L$ENV{PNETCDF_PATH}/lib -lpnetcdf -L$ENV{HDF5_PATH}/lib -lhdf5_hl -lhdf5 -L$ENV{NETCDF_C_PATH}/lib -lnetcdf -L$ENV{NETCDF_FORTRAN_PATH}/lib -lnetcdff -L$ENV{ESSL_PATH}/lib64 -lessl -L$ENV{OLCF_NETLIB_LAPACK_ROOT}/lib -llapack")
set(CXX_LINKER "FORTRAN")
string(APPEND CXX_LIBS " -lstdc++")
set(KOKKOS_OPTIONS "--arch=Power9,Volta70 --with-cuda=$ENV{CUDA_DIR} --with-cuda-options=enable_lambda")
set(MPICXX "mpiCC")
set(PIO_FILESYSTEM_HINTS "gpfs")
set(SFC "pgfortran")
set(NETCDF_C_PATH "$ENV{NETCDF_C_PATH}")
set(NETCDF_FORTRAN_PATH "$ENV{NETCDF_FORTRAN_PATH}")
set(PNETCDF_PATH "$ENV{PNETCDF_PATH}")
set(SUPPORTS_CXX "TRUE")
