# common recipe

# disable selinux
include_recipe 'selinux::disabled'

# install common packages
package 'epel-release' if node[:platform] == 'redhat'

packages = [
  'git',
  'tig'
]

packages.each do |pkg|
  package pkg
end
