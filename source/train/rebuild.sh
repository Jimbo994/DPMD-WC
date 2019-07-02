#!/bin/bash
cd ../build
make
make install
cd ../train
echo 'rebuild complete'
