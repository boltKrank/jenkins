# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include jenkins
class jenkins {

  yumrepo { 'http://pkg.jenkins-ci.org/redhat/jenkins.repo':
    ensure => present,
    target => '/etc/yum.repos.d/jenkins.repo',
  }

  package { 'jenkins':
    ensure  => present,
    require => Yumrepo['http://pkg.jenkins-ci.org/redhat/jenkins.repo'],
  }

}
