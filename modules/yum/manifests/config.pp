class yum::config {

file {"/data":
  owner  => 'root',
  ensure => 'directory',
  }

file {"/data/update.log":
  owner  => 'root',
  ensure => 'directory',
  }

file {"/data/patch.sh":
  ensure  => 'present',
  owner   => 0,
  group   => 0,
  mode    => '0600',
  content => template('yum/patch.sh.epp'),
  }

exec{"restore centos's repos":
  creates => '/etc/yum.repos.d/CentOS-Base.repo',
  command => 'yum reinstall -y centos-release',
  path    => ['/usr/bin','/usr/sbin','/bin','/sbin'],
 }

file {"/etc/yum.repos.d/backup":
  ensure  => 'absent',
  recurse => 'true',
  force   => 'true',
 }

file {"/etc/yum.repos.d/nexus.repo":
  ensure  => 'absent',
  recurse => 'true',
  force   => 'true',
  }

file {"/etc/yum.repos.d/pulp-prod.repo":
  ensure  => 'absent',
  recurse => 'true',
  force   => 'true',
  }
}
