# web server

include_recipe '../../cookbooks/nginx-centos/default.rb' if node[:platform] == 'redhat'
