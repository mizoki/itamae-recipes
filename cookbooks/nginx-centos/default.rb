# nginx

remote_file 'add nginx repo' do
  action :create
  source 'files/nginx.repo'
  path '/etc/yum.repos.d/nginx.repo'
  owner 'root'
  group 'root'
end

package 'nginx' do
  action :install
  options '--enablerepo=nginx'
end

service 'nginx' do
  action [:enable, :start]
end
