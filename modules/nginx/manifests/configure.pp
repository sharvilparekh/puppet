class nginx::configure{
#	file { '/var/www/':
#		ensure => directory,
#	}

	file { "/var/www/${site_name}":
		ensure => directory,
	}

	file { '/etc/nginx/conf.d/default.conf':
	#	source => 'puppet:///modules/nginx/cinema.conf',
		content	=> template('nginx/vhost.conf.erb'),
		notify => Service['nginx'],
	}

	file { "/var/www/${site_name}/index.html":
#		source => 'puppet:///modules/nginx/index.html',
		content	=> template('nginx/index.html.erb')
	}
}
