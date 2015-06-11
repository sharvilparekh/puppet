#file {'bollywood':
#	path => '/tmp/bollywood',
#	ensure => present,
#	mode => 0640,
#	content => "100 Years of Indian Cinema",
#}


#file {'tollywood':
#       path => '/tmp/tollywood',
#	mode => 0644,
#	owner => root,
#	group => root,
#	content => "what is tollywood?"
#}

node 'demo'{
#	$site_name = 'bollywood'
#	$site_domain = 'bollywood.in'
#	include nginx
#	include nginx::install
#	include nginx::configure	
#	include nginx::service

#   include nginx
	include haproxy
}

#node 'demo' {
	
#	nginx::vhost{ 'hollywood':
#		port => 81,
#		site_domain => 'hollywood.com'
#	}	
	
#	class { 'ntp':
#		server => 'us.pool.ntp.org',
#	}
#}