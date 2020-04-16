# ntp
#
# Main class, includes all other classes.
#
class ntp { 
  contain ntp::install
  contain ntp::config
  contain ntp::service

  Class['::ntp::install']
  -> Class['::ntp::config']
  ~> Class['::ntp::service']
}
