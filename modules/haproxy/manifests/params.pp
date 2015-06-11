class haproxy::params{

  $loghost           	= '127.0.0.1'
  $log_location      	= 'local2'
  $chroot            	= '/var/lib/haproxy'
  $pidfile           	= '/var/run/haproxy.pid'
  $maxconn           	= 4000
  $user              	= 'haproxy'
  $group            	= 'haproxy'
  $daemon			      	= ''

  $stats_socket				= '/var/lib/haproxy/stats'
  

  $mode				       	= 'http'
  $log 					      = 'global'
  $option				      = 'httplog'
  $option_a				    = 'dontlognull'
  $option_httpserverclose = ''
  $option_forwardfor	= 'except 127.0.0.0/8'
  $option_b				    = 'redispatch'
  $retries				    = 3
  $timeout_http_request = 10s
  $timeout_queue        = 1m
  $timeout_connect      = 10s
  $timeout_client       = 1m
  $timeout_server       = 1m
  $timeout_http_keepalive = 10s
  $timeout_check        = 10s
  $maxconn_a            = 3000
} 