# == Class: mediawiki::exports
#
class mediawiki::exports {
  @@apache::vhost::include::proxy { "mediawiki_${fqdn}_default_ssl_reverseproxy":
    proxy_vhost => 'default_ssl_vhost',
    location    => '/mediawiki/',
    dest        => "http://${fqdn}/",
    tag         => ['intranet', 'extranet']
  }

}
