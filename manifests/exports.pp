# == Class: mediawiki::exports
#
class mediawiki::exports {
  @@apache::vhost::include::proxy { "mediawiki_${fqdn}_default_ssl_reverseproxy":
    proxy_vhost => 'default_ssl_vhost',
    location    => $::mediawiki_export_vhost_location,
    dest        => "http://${fqdn}/",
    tag         => ['intranet', 'extranet']
  }

}
