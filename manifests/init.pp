# Class: regedit
# ===========================
#
# Full description of class regedit here.
#
# Parameters
# ----------
#
# Document parameters here.
#
# * `sample parameter`
# Explanation of what this parameter affects and what it defaults to.
# e.g. "Specify one or more upstream ntp servers as an array."
#
# Variables
# ----------
#
# Here you should define a list of variables that this module would require.
#
# * `sample variable`
#  Explanation of how this variable affects the function of this class and if
#  it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#  External Node Classifier as a comma separated list of hostnames." (Note,
#  global variables should be avoided in favor of class parameters as
#  of Puppet 2.6.)
#
# Examples
# --------
#
# @example
#    class { 'regedit':
#      servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#    }
#
# Authors
# -------
#
# Author Name <author@domain.com>
#
# Copyright
# ---------
#
# Copyright 2016 Your name here, unless otherwise noted.
#
class regedit {

# Enable/Disable IE-ESC setting, enable=1 and disable=0
registry_value { 'HKLM\software\Microsoft\Active Setup\Installed Components\{A509B1A7-37EF-4b3f-8CFC-4F3A74704073}\IsInstalled' :
 type => dword,
 data => '1',
}
registry_value { 'HKLM\software\Microsoft\Active Setup\Installed Components\{A509B1A8-37EF-4b3f-8CFC-4F3A74704073}\IsInstalled' :
 type => dword,
 data => '1',
}

# Enable/Disable Windows Shutdown Event Tracker, enable=1 and disable=0

registry_value { 'HKLM\software\policies\microsoft\windows NT\Reliability\ShutdownReasonOn':
  type => dword,
  data => '1',
}

registry_value { 'HKLM\software\policies\microsoft\windows NT\Reliability\ShutdownReasonUI':
  type => dword,
  data => '1',
}

}
