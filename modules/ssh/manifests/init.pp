class ssh {
  contain ssh::install
  contain ssh::config
  contain ssh::service

  Class['::ssh::install']
  -> Class['::ssh::config']
  ~> Class['::ssh::service']
}
