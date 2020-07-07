class yum::patch {

# Run a yum update on the 25th of every month between 03:00am and 03:59am if there are updates available.
exec { "yum update":
  onlyif  => 'test $(date +%d) -eq 25 -a $(date +%H) -eq 03 -a $(repoquery -a --pkgnarrow=updates |wc -l) -gt 0',     
  command => 'bash /data/patch.sh',
  timeout => 1800,
  user    => 'root',
  path    => '/sbin:/bin:/usr/sbin:/usr/bin',
  }

}
