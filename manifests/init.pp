# Class: kickstack
#
# This module manages kickstack, a thin wrapper around the Stackforge
# Puppet modules that enables easy deployment with any Puppet External
# Node Classifier (ENC), such as Puppet Dashboard, Puppet Enterprise,
# or The Foreman.
#
# Parameters:
#   fact_prefix - Prefix to be used for the facts passed around
#     between various nodes in the kickstack installation. If your
#     Puppet environment manages only one single kickstack deployment,
#     there is no need to change this. However, if you use one Puppet
#     environment to manage several kickstack installations, you will
#     need to set these to distinguish the kickstack installations from
#     each other.
#   fact_filename - The name of the file (relative to facter/facts.d)
#     where kickstack stores its custom facts.
class kickstack ( 
  $fact_prefix   = $kickstack::params::fact_prefix,
  $fact_filename = $kickstack::params::fact_filename,
  $database      = $kickstack::params::database,
  $rpc           = $kickstack::params::rpc,
  $rabbit_user   = $kickstack::params::rabbit_user,
  $rabbit_virtual_host = $kickstack::params::rabbit_virtual_host,
  $qpid_username   = $kickstack::params::qpid_username,
) inherits kickstack::params {

  include exportfact
} 