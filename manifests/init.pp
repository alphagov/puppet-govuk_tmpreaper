# == Class: govuk_tmpreaper
#
# Class to install and configure tmpreaper
#
class govuk_tmpreaper {

  package { 'tmpreaper':
    ensure => present,
  }

  file { '/etc/tmpreaper.conf':
    ensure  => present,
    content => file('govuk_tmpreaper/tmpreaper.conf'),
  }

}
