Facter.add(:updates) do
  setcode do
    Facter::Core::Execution.execute("cat /data/update.log/updates.$(date +%Y%m)")
#    Facter::Core::Execution.execute('cat /var/log/yum.log |grep -E "$(date +%b).*Updated"')
  end
end
