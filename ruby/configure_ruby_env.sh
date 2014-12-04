#!/bin/bash
# This script is for configuring ruby environemtn by sing rbenv
# Author: Yeonki Choi
# Tested on CentOS 6.5



default_version="2.1.5"

# Define ruby version
read -p "Enter Ruby version to install ($default_version) : " ruby_version
ruby_version=${ruby_version:-"$default_version"}

echo "You chose $ruby_version "


# Install git
yum install -y git


# Install rbenv (ruby)
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build


# Require gcc when install ruby
yum install gcc openssl-devel

echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
source ~/.bash_profile


# Ruby install by using rbenv (rbenv install --list )
rbenv install $ruby_version


# Setup the version as global
rbenv global $ruby_version


# Print version of installed ruby
echo "Ruby was successfually installed - "$( rbenv version )
