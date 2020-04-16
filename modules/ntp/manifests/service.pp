# @summary
#   This class handles the ntp service.
class ntp::service {

    service { 'ntp':
      ensure     => 'running',
      enable     => 'true',
      name       => 'ntpd',
      require    => Class["ntp::config"],
      hasstatus  => 'true',
      hasrestart => 'true',
  }
}
