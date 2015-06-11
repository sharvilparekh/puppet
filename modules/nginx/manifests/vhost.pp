define nginx::vhost (
	$port = 80,
	$site_domain
){

include nginx

file { "/etc/nginx/conf.d/${name}.conf":
	content => template('nginx/vhost.conf.erb'),
	notify => Service['nginx'],
}

file { "/var/www/${name}":
	ensure => directory,
}

file { "/var/www/${name}/index.html":
	content => template('nginx/index.html.erb'),
	}
}