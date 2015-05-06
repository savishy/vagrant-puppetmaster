class profile_puppet (
  $allow_any_crl_auth          = true,
  $dns_alt_names               = [],
  $puppetmaster                = undef,
  $server                      = false,
  $server_ca                   = true,
  $server_ca_proxy             = undef,
  $server_external_nodes       = '/etc/puppet/node.rb',
  $server_foreman              = false,
  $server_foreman_url          = "http://foreman",
  $server_puppetdb_host        = undef,
  $server_reports              = 'store',
  $server_storeconfigs_backend = undef,
  $splay                       = true,
) {
  class { '::puppet':
    allow_any_crl_auth          => $allow_any_crl_auth,
    dns_alt_names               => $dns_alt_names,
    puppetmaster                => $puppetmaster,
    server                      => $server,
    server_ca                   => $server_ca,
    server_ca_proxy             => $server_ca_proxy,
    server_external_nodes       => $server_external_nodes,
    server_foreman              => $server_foreman,
    server_foreman_url          => $server_foreman_url,
    server_puppetdb_host        => $server_puppetdb_host,
    server_reports              => $server_reports,
    server_storeconfigs_backend => $server_storeconfigs_backend,
    splay                       => $splay,
  }
}