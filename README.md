centos6-omnibus.erb
====
By Yeonki Choi  <a href="http://hyper-choi.blogspot.com">http://hyper-choi.blogspot.com</a>

About 
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
