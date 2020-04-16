class ssh::service{

case  $operatingsystemmajrelease{
'6':{
service{"iptables":
  name => "iptables",
  ensure => 'stopped',
  enable => 'false',
 }
}

'7':{
service{"firewalld":
  name => "firewalld",
  ensure => 'stopped',
  enable => 'false',
}
}
}
service {'sshd':
 name => 'sshd',
 ensure => 'running',
 hasstatus => 'true',
 hasrestart => 'true',
 enable => 'true',
 require => Class["ssh::config"],
   }
}
