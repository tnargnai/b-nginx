default['nginx']['default_site_enabled'] = false

default['b-nginx']['site']['domain'] = '' # webapp.sb.com
default['b-nginx']['site']['config'] = "etc/nginx/sites-available/#{node['b-nginx']['site']['domain']}.erb"
