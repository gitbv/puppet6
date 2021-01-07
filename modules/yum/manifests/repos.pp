class yum::repos {

  yumrepo { 'nexus-base':
    descr    => 'CentOS-$releasever - Base',
    baseurl  => 'http://nexus-load-balancing-751807086.eu-west-1.elb.amazonaws.com/repository/nexus-centos/$releasever/os/$basearch/',
    enabled  => 1,
    gpgcheck => 0,
  }

  yumrepo { 'nexus-updates':
    descr    => 'CentOS-$releasever - Updates',
    baseurl  => 'http://nexus-load-balancing-751807086.eu-west-1.elb.amazonaws.com/repository/nexus-centos/$releasever/updates/$basearch/',
    enabled  => 1,
    gpgcheck => 0,
  }

  yumrepo { 'nexus-extras':
    descr    => 'CentOS-$releasever - Extras',
    baseurl  => 'http://nexus-load-balancing-751807086.eu-west-1.elb.amazonaws.com/repository/nexus-centos/$releasever/extras/$basearch/',
    enabled  => 1,
    gpgcheck => 0,
  }

  yumrepo { 'nexus-epel':
    descr    => 'Nexus epel-release',
    baseurl  => 'http://nexus-load-balancing-751807086.eu-west-1.elb.amazonaws.com/repository/nexus-epel/$releasever/$basearch/',
    enabled  => 1,
    gpgcheck => 0,
  }

  yumrepo { 'nexus-puppet':
    descr    => 'Nexus epel-release',
    baseurl  => 'http://nexus-load-balancing-751807086.eu-west-1.elb.amazonaws.com/repository/nexus-epel/$releasever/$basearch/',
    enabled  => 1,
    gpgcheck => 0,
  }

  yumrepo { 'nexus-pbiso':
    descr    => 'Nexus PBIS-Open',
    baseurl  => 'http://nexus-load-balancing-751807086.eu-west-1.elb.amazonaws.com/repository/nexus-pbiso/$basearch/',
    enabled  => 1,
    gpgcheck => 0,
  }

  yumrepo { 'nexus-php':
    descr    => 'Nexus webtatic.com PHP',
    baseurl  => 'http://nexus-load-balancing-751807086.eu-west-1.elb.amazonaws.com/repository/nexus-php/el$releasever/$basearch/',
    enabled  => 1,
    gpgcheck => 0,
  }

  yumrepo { 'nexus-nodejs':
<<<<<<< HEAD
    descr    => 'Nexus Nodesource nodejs',
=======
    descr    => 'Nexus Nodesource nodejs 12.x',
>>>>>>> 81509ce8f0a44a005bbc7be970101cb615b4ec89
    baseurl  => 'http://nexus-load-balancing-751807086.eu-west-1.elb.amazonaws.com/repository/nexus-nodejs/$releasever/$basearch/',
    enabled  => 1,
    gpgcheck => 0,
  }

  yumrepo { 'nexus-sngrep':
    descr    => 'Nexus yum sngrep',
    baseurl  => 'http://nexus-load-balancing-751807086.eu-west-1.elb.amazonaws.com/repository/nexus-sngrep/$releasever/$basearch/',
    enabled  => 1,
    gpgcheck => 0,
  }

  yumrepo { 'nexus-hosted':
    descr    => 'Nexus yum hosted',
    baseurl  => 'http://nexus-load-balancing-751807086.eu-west-1.elb.amazonaws.com/repository/nexus-hosted/$releasever/$basearch/',
    enabled  => 1,
    gpgcheck => 0,
  }

}
