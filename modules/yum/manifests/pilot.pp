class yum::pilot{

include yum::repos, yum::config

exec {"yum uat":
  onlyif  => 'test $(repoquery -a --pkgnarrow=updates |wc -l) -gt 0 -a $(date +%H) -eq 12',     
  command => 'bash /data/patch.sh',
  timeout => 600,
  user    => "root",
  path    => "/usr/local/sbin:/usr/local/bin:/sbin:/bin:usr/sbin:/usr/bin",
 }

}
