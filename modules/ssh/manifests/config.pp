class ssh::config{

 file { "/etc/banner":
   ensure  => present,
   owner   => 0,
   group   => 0,
   mode    => '0644',
   content => template('ssh/banner.epp'),
  }

 file { "/etc/ssh/sshd_config":
   ensure  => present,
   owner   => 'root',
   group   => 'root',
   mode    => 'a-x',
   content => template('ssh/sshd_config.epp'),
   notify  => Class["ssh::service"],
  }

 exec { "hosts_deny":
   onlyif  => 'grep "ALL: ALL" /etc/hosts.deny 2>/dev/null',
   command => 'sed -i "/ALL: ALL/d" /etc/hosts.deny',
   user    => 'root',
   path    => '/sbin:/bin:usr/sbin:/usr/bin',
  }

}
