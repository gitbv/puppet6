class yum::config {

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
