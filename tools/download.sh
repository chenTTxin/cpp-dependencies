
old_dir=`pwd`
repo_name="cpp-dependencies"

if [ -d $repo_name ]; then
    echo "please remove $repo_name first"
    exit 1
fi

git clone https://github.com/eflagcomm/${repo_name}.git
cd $repo_name
./tools/git-archive-all/git_archive_all.py ${repo_name}.tar.gz
cd $old_dir
mv ${repo_name}/${repo_name}.tar.gz .
