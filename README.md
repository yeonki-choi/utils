omnibus.erb, .vimrc
====
By Yeonki Choi  <a href="http://hyper-choi.blogspot.com">http://hyper-choi.blogspot.com</a>

About omnibus.erb
====
A distro file for installing chef-client on CentOS 6 or Ubuntu 12.04 with 'knife bootstrap' command instead of running install.sh

- Invoking http://www.opscode.com/chef/install.sh inside of this script.
- Getting the version number of chef client in knife.rb 
- When bootstrapping, hostname is going to be node_name  

Tested on CentOS 6, Redhat 6 and Ubuntu 12.04.3

Requirement
====
Chef 11 

Get Started
====
```
git clone https://github.com/yeonki-choi/chef11_util.git
cd chef11_util
cp omnibus.erb /opt/chef/embedded/lib/ruby/gems/1.9.1/gems/chef-11.2.0/lib/chef/knife/bootstrap/

# Before Run the below command, chef version number must be specified in knife.rb 
vim /root/.chef/knife.rb 
...
knife[:client_version] = "11.2.0-1"

# Run knife bootstrap to install 
knife bootstrap node_name --distro omnibus 

```


About .vimrc
====
This .vimrc is the environment file and is used to development cookbooks via vim.<br>
Plug-in list:
- t9md/vim-chef: Formatting Chef cookbook.
- The-NERD-tree: Provides tree window on vim
- elzr/vim-json: JSON formatting
- minibufexpl.vim: Exploring buffers

Tested on CentOS 6.5

Get Started
====
```
# First, download Vim plugin manager
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle


git clone https://github.com/yeonki-choi/chef11_util.git
cd chef11_util
cp .vimrc ~/

# Install plug-ins
vim +BundleInstall +qall
```
