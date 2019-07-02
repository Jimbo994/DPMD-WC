/* -*- c++ -*- ----------------------------------------------------------
   LAMMPS - Large-scale Atomic/Molecular Massively Parallel Simulator
   http://lammps.sandia.gov, Sandia National Laboratories
   Steve Plimpton, sjplimp@sandia.gov

   Copyright (2003) Sandia Corporation.  Under the terms of Contract
   DE-AC04-94AL85000 with Sandia Corporation, the U.S. Government retains
   certain rights in this software.  This software is distributed under
   the GNU General Public License.

   See the README file in the top-level LAMMPS directory.
------------------------------------------------------------------------- */

#ifdef PAIR_CLASS

PairStyle(deepmd,PairNNP)

#else

#ifndef LMP_PAIR_NNP_H
#define LMP_PAIR_NNP_H

#include "pair.h"
#include "NNPInter.h"
#include <iostream>
#include <fstream>

#define GIT_SUMM v0.12.4-4-gdf917f6-dirty
#define GIT_HASH df917f6
#define GIT_BRANCH master
#define GIT_DATE 2019-03-02 14:11:53 +0800
#ifdef HIGH_PREC
#define FLOAT_PREC double
#else
#define FLOAT_PREC float
#endif
#define DEEPMD_ROOT /home/arjun/jim/packages/deepmd-gpu/deepmd-kit3
#define TensorFlow_INCLUDE_DIRS /home/arjun/jim/packages/deepmd-gpu/tensorflow_gpu/include
#define TensorFlow_LIBRARY /home/arjun/jim/packages/deepmd-gpu/tensorflow_gpu/lib/libtensorflow_cc.so;/home/arjun/jim/packages/deepmd-gpu/tensorflow_gpu/lib/libtensorflow_framework.so
#define DPMD_CVT_STR(x) #x
#define DPMD_CVT_ASSTR(X) DPMD_CVT_STR(X)
#define STR_GIT_SUMM DPMD_CVT_ASSTR(GIT_SUMM)
#define STR_GIT_HASH DPMD_CVT_ASSTR(GIT_HASH)
#define STR_GIT_BRANCH DPMD_CVT_ASSTR(GIT_BRANCH)
#define STR_GIT_DATE DPMD_CVT_ASSTR(GIT_DATE)
#define STR_FLOAT_PREC DPMD_CVT_ASSTR(FLOAT_PREC)
#define STR_DEEPMD_ROOT DPMD_CVT_ASSTR(DEEPMD_ROOT)
#define STR_TensorFlow_INCLUDE_DIRS DPMD_CVT_ASSTR(TensorFlow_INCLUDE_DIRS)
#define STR_TensorFlow_LIBRARY DPMD_CVT_ASSTR(TensorFlow_LIBRARY)

namespace LAMMPS_NS {

class PairNNP : public Pair {
 public:
  PairNNP(class LAMMPS *);
  virtual ~PairNNP();
  virtual void compute(int, int);
  virtual void *extract(const char *, int &);
  void settings(int, char **);
  virtual void coeff(int, char **);
  void init_style();
  double init_one(int i, int j);
  int pack_reverse_comm(int, int, double *);
  void unpack_reverse_comm(int, int *, double *);
  void print_summary(const string pre) const;

 protected:  
  virtual void allocate();
  double **scale;

private:  
  NNPInter nnp_inter;
  NNPInterModelDevi nnp_inter_model_devi;
  unsigned numb_models;
  double cutoff;
  int numb_types;
  vector<vector<double > > all_force;
  ofstream fp;
  int out_freq;
  string out_file;
};

}

#endif
#endif
