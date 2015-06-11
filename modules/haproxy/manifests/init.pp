class haproxy (
  $loghost           =  $haproxy::params::loghost,
  $log_location      =  $haproxy::params::log_location,
  $chroot            =  $haproxy::params::chroot,
  $pidfile           = 	$haproxy::params::pidfile,
  $maxconn           =  $haproxy::params::maxconn,
  $user              =  $haproxy::params::user,
  $group             =  $haproxy::params::group, 
  $daemon			       =  $haproxy::params::daemon,

  $stats_socket		   = $haproxy::params::stats_socket,
  

  $mode			    		= $haproxy::params::mode,
  $log 			    		= $haproxy::params::log,
  $option		     		= $haproxy::params::option,
  $option_a		   		= $haproxy::params::option_a,
  $option_httpserverclose = $haproxy::params::option_httpserverclose,
  $option_forwardfor	  = $haproxy::params::option_forwardfor,
  $option_b			       	= $haproxy::params::option_b,
  $retries			       	= $haproxy::params::retries,
  $timeout_http_request = $haproxy::params::timeout_http_request,
  $timeout_queue        = $haproxy::params::timeout_queue,
  $timeout_connect      = $haproxy::params::timeout_connect,
  $timeout_client       = $haproxy::params::timeout_client,
  $timeout_server       = $haproxy::params::timeout_server,
  $timeout_http_keepalive = $haproxy::params::timeout_http_keepalive,
  $timeout_check        = $haproxy::params::timeout_check,
  $maxconn_a            = $haproxy::params::maxconn_a,
) inherits haproxy::params {
	include haproxy::install
	include haproxy::service
	include haproxy::configure
}

