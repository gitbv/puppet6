class ncs::services{

## refresh pdns service if those lists have beed modified 
service{"pdns-recursor":
  name => "pdns-recursor",
  ensure => "running",
  enable => "true",
  hasstatus => true,
  hasrestart => true,
}
#service{"dhcpd":
# name => "dhcpd",
# ensure => "running",
# enable => "true",
# hasstatus => true,
# hasrestart => true,
#}
}
