class ncs::forward{
file {"/etc/pdns-recursor/forward.conf":
 ensure => 'present',
 backup => 'true',
 owner  => 'root',
 group  => 'root',
 mode   => '0600',
 content => template('ncs/forward.conf.epp'),
 notify => Service["pdns-recursor"],
}
}
