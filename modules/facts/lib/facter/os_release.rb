Facter.add('os_release') do
  setcode do
    Facter::Core::Execution.execute('cat /etc/redhat-release')
  end
end
