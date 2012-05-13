##############################################################
# @filename : init.pp
# @author : Mick Pollard <aussielunix@gmail.com>
##############################################################
#
# Class: motd  
#
# This class distributes a ``/etc/motd`` to alert users the server is managed by Puppet   
#
# Parameters:
#	None
#
# Actions:  
#	Distributes a ``/etc/motd``  
#
# Requires:
#	None
#
class motd {
  file { "/etc/motd.tail" :
    mode    => 444,
    content => template("motd/motd.erb")
  }
}

