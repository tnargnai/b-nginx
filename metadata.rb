name 'b-nginx'
maintainer 'Barclays'
maintainer_email 'ian.grant@barclays.com'
license 'all_rights'
description 'Installs/Configures b-nginx'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.1.2'

supports 'debian'
supports 'ubuntu'
supports 'redhat'
supports 'centos'
supports 'fedora'

depends 'apt'
depends 'yum'
depends 'nginx', '~> 2.7.5'
