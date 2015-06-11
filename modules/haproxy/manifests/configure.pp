class haproxy::configure{

	file { '/etc/haproxy/haproxy.cfg':
#		source 	=> 'puppet:///modules/haproxy/haproxy.cfg',
		content	=> template('haproxy/haproxy.cfg.erb'),
		notify	=> Service['haproxy'],
	}
}