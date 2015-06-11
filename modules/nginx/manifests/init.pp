class nginx(

  $port           =  $nginx::params::port,
  $var_path		  =  $nginx::params::var_path,
  $root_path      =  $nginx::params::root_path,
  $site_name      =  $nginx::params::site_name,
  $site_domain    =  $nginx::params::site_domain,

) inherits nginx::params{

	include nginx::install
	include nginx::configure
	include nginx::service
}