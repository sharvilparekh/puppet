class haproxy::install{
	package{'haproxy':
		ensure	=> latest,
	}
}
