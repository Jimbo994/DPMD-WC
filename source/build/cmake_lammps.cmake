set (LMP_INSTALL_PREFIX "/home/arjun/jim/packages/deepmd-gpu/deepmd-kit3/source/build/USER-DEEPMD")
file(READ "/home/arjun/jim/packages/deepmd-gpu/deepmd-kit3/source/build/lmp/lammps_install_list.txt" files)
string(REGEX REPLACE "\n" "" files "${files}")

foreach (cur_file ${files})
  file (
    INSTALL DESTINATION "${LMP_INSTALL_PREFIX}" 
    TYPE FILE
    FILES "${cur_file}"
    )
endforeach ()

file (
  INSTALL DESTINATION "${LMP_INSTALL_PREFIX}" 
  TYPE FILE 
  FILES "/home/arjun/jim/packages/deepmd-gpu/deepmd-kit3/source/build/lmp/env.sh"
)

file (
  INSTALL DESTINATION "${LMP_INSTALL_PREFIX}" 
  TYPE FILE 
  FILES "/home/arjun/jim/packages/deepmd-gpu/deepmd-kit3/source/build/lmp/pair_nnp.h"
)
