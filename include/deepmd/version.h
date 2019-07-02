#pragma once

#include <string>
using namespace std;

#ifdef HIGH_PREC
const string global_float_prec="double";
#else 
const string global_float_prec="float";
#endif

const string global_install_prefix="/home/arjun/jim/packages/deepmd-gpu/deepmd-kit3";
const string global_git_summ="v0.12.4-4-gdf917f6-dirty";
const string global_git_hash="df917f6";
const string global_git_date="2019-03-02 14:11:53 +0800";
const string global_git_branch="master";
const string global_tf_include_dir="/home/arjun/jim/packages/deepmd-gpu/tensorflow_gpu/include";
const string global_tf_lib="/home/arjun/jim/packages/deepmd-gpu/tensorflow_gpu/lib/libtensorflow_cc.so;/home/arjun/jim/packages/deepmd-gpu/tensorflow_gpu/lib/libtensorflow_framework.so";
