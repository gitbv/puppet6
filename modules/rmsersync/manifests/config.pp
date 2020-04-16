class rmsersync::config {
  exec {"remove sersync":
     onlyif  => 'test $(pgrep sersync2 |wc -l) -ge 1',
     command => "pkill sersync2 && sed -i '/sersync2/d' /etc/rc.local && rm -rf /usr/local/sersync && sed -i '/sersync/d' /etc/profile && source /etc/profile",
     user    => 'root',
     path    => '/sbin:/bin:/usr/sbin:/usr/bin',
    }
}
