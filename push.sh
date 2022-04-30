#!/bin/bash

pkg_name='graceful-udisks'
work_dir=$(dirname $(realpath -- $0))

echo $pkg_name
echo $work_dir
cd $work_dir

[ -d $work_dir/$pkg_name ] && rm -rf $work_dir/$pkg_name

cd $work_dir && git clone ssh://aur@aur.archlinux.org/$pkg_name.git

cp $work_dir/



