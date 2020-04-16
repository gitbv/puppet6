# @summary
#   This class handles ntp packages.
#
# @api private
#
class ntp::install {
   package { "ntp":
      ensure => 'present',
   }
}
