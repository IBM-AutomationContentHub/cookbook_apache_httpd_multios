name 'httpd'
maintainer 'IBM Corp'
maintainer_email ''
license 'Copyright IBM Corp. 2016, 2017'
depends 'ibm_cloud_utils'
description <<-EOH
## DESCRIPTION
The Apache HTTP cookbook provides the necessary resources to install and manage Apache HTTP Server
## Platforms Support
* RHEL 6.x
* RHEL 7.x
* Ubuntu Server 14.04 or greater

## Versions
Apache HTTP Server 2.4

## Use Cases
* Single installation with no configuration.
* Single installation with SSL and Proxy configuration

## Platform Pre-Requisites
* Linux YUM Repository - An onsite linux YUM Repsoitory is required.

EOH

version '1.1.42'

attribute 'httpd/conf_file_mode',
          :default => '0640',
          :description => 'OS Permisssions of confguration files',
          :displayname => 'HTTP Server OS Poermissions Configuration Files',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/custom_log',
          :default => 'access_log',
          :description => 'Name of the custom log, for the standard virtual host.',
          :displayname => 'HTTP Server Custom Log name',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/custom_log_format',
          :default => 'combined',
          :description => 'Directory of log to be configured in HTTP server',
          :displayname => 'HTTP Server Log Directory',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/data_dir_mode',
          :default => '0750',
          :description => 'OS Permisssions of data folders',
          :displayname => 'HTTP Server OS Permissions Data Directory',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/directory_index',
          :default => 'index.html info.php',
          :description => 'Enable or Disable directory listing',
          :displayname => 'HTTP Server Enable Directory Listing',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/document_root',
          :default => '',
          :description => 'File System Location of the Document Root',
          :displayname => 'HTTP Server Document Root Location',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/enable_MMAP',
          :default => 'off',
          :description => 'HTTP Server enable_MMAP',
          :displayname => 'HTTP Server enable_MMAP',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/enable_send_file',
          :default => 'off',
          :description => 'HTTP Server enable_send_file',
          :displayname => 'HTTP Server enable_send_file',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/error_log',
          :default => 'error_log',
          :description => 'Name of the error log, for the standard virtual host.',
          :displayname => 'HTTP Server Error Log name',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/hostname_lookups',
          :default => 'off',
          :description => 'HTTP Server hostname_lookups',
          :displayname => 'HTTP Server hostname_lookups',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/httpd_home',
          :default => '',
          :description => 'Directory of the HTTP Server Process.',
          :displayname => 'Home Directory of the HTTP Server Process',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/install_dir',
          :default => '',
          :description => 'Directory where  HTTP Server will be installed',
          :displayname => 'HTTP Installation Directory',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/keep_alive',
          :default => 'off',
          :description => 'HTTP Server TCP Keep alive',
          :displayname => 'HTTP Server keep_alive',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/keep_alive_timeout',
          :default => '15',
          :description => 'HTTP Server keep_alive_timeout',
          :displayname => 'HTTP Server keep_alive_timeout',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/listen',
          :default => '80',
          :description => 'Listening port to be configured in HTTP server',
          :displayname => 'HTTP Server Listen Port',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/log_dir',
          :default => '',
          :description => 'Directory where HTTP Server logs will be sent',
          :displayname => 'HTTP Log Directory',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/log_level',
          :default => 'warn',
          :description => 'Log levels of the http process',
          :displayname => 'HTTP Server Log Levels',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/max_keep_alive_requests',
          :default => '100',
          :description => 'HTTP Server max_keep_alive_requests',
          :displayname => 'HTTP Server TCP max_keep_alive_requests',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/os_users/daemon/comment',
          :default => 'HTTP Server daemon user',
          :description => 'HTTP Server daemon comment',
          :displayname => 'HTTP Server daemon comment',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/os_users/daemon/gid',
          :default => 'apache',
          :description => 'HTTP Server daemon gid',
          :displayname => 'HTTP Server daemon gid',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/os_users/daemon/ldap_user',
          :attribute => 'HTTP Server daemon home',
          :default => '',
          :description => 'HTTP Server daemon home',
          :displayname => 'HTTP Server daemon ldap_user',
          :options => 'true',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/os_users/daemon/name',
          :default => 'apache',
          :description => 'HTTP Server daemon name',
          :displayname => 'HTTP Server daemon name',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/os_users/daemon/shell',
          :default => '/sbin/nologin',
          :description => 'HTTP Server daemon shell',
          :displayname => 'HTTP Server daemon shell',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/os_users/web_content_owner/comment',
          :default => 'httpd daemon user',
          :description => 'Comment, describing the User purpose',
          :displayname => 'HTTP Server HTTP Web Content Owner comment',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/os_users/web_content_owner/gid',
          :default => 'apache',
          :description => 'Group ID of web content owner to be configured in HTTP server',
          :displayname => 'Group Name of HTTP Web Content Owner',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/os_users/web_content_owner/home',
          :default => '/home/webmaster',
          :description => 'Home directory of web content owner to be configured in HTTP server',
          :displayname => 'Home Directory of HTTP Web Content Owner',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/os_users/web_content_owner/ldap_user',
          :default => 'false',
          :description => 'Use LDAP to authenticate Web Content Owner account on Linux HTTP server as well as web site logins',
          :displayname => 'Use LDAP for Authentication',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/os_users/web_content_owner/name',
          :default => 'webmaster',
          :description => 'User ID of web content owner to be configured in HTTP server',
          :displayname => 'User Name of HTTP Web Content Owner',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/os_users/web_content_owner/shell',
          :default => '/bin/bash',
          :description => 'Default shell configured on Linux server',
          :displayname => 'HTTP Server HTTP Web Content Owner Unix Shell',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/php_mod_enabled',
          :default => 'true',
          :description => 'Enable PHP in Apache on Linux by Loading the Module',
          :displayname => 'Enable PHP Module',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/prefork_max_clients',
          :default => '256',
          :description => 'HTTP Server prefork_max_clients',
          :displayname => 'HTTP Server prefork_max_clients',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/prefork_max_requests_per_child',
          :default => '4000',
          :description => 'HTTP Server prefork_max_requests_per_child',
          :displayname => 'HTTP Server prefork_max_requests_per_child',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/prefork_max_spare_servers',
          :default => '20',
          :description => 'HTTP Server prefork_max_spare_servers',
          :displayname => 'HTTP Server prefork_max_spare_servers',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/prefork_min_spare_servers',
          :default => '5',
          :description => 'HTTP Server prefork_min_spare_servers',
          :displayname => 'HTTP Server prefork_min_spare_servers',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/prefork_server_limit',
          :default => '256',
          :description => 'HTTP Server prefork_server_limit',
          :displayname => 'HTTP Server prefork_server_limit',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/prefork_start_servers',
          :default => '8',
          :description => 'HTTP Server prefork_start_servers',
          :displayname => 'HTTP Server prefork_start_servers',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/proxy/rules/ProxyPass/path',
          :default => '/sw/',
          :description => 'HTTP Server ProxyPass path',
          :displayname => 'HTTP Server ProxyPass path',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/proxy/rules/ProxyPass/url',
          :default => 'http://localhost',
          :description => 'HTTP Server ProxyPass url',
          :displayname => 'HTTP Server ProxyPass url',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/proxy/rules/ProxyPassReverse/path',
          :default => '/sw/',
          :description => 'HTTP Server ProxyPassReverse path',
          :displayname => 'HTTP Server ProxyPassReverse path',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/proxy/rules/ProxyPassReverse/url',
          :default => 'http://localhost',
          :description => 'HTTP Server ProxyPassReverse url',
          :displayname => 'HTTP Server ProxyPassReverse url',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/server_admin',
          :default => 'webmaster@localhost',
          :description => 'Email Address of the Webmaster',
          :displayname => 'HTTP Server Admin',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/server_name',
          :default => '',
          :description => 'The Name of the HTTP Server, normally the FQDN of server.',
          :displayname => 'HTTPd Server Name',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/server_root',
          :default => '',
          :description => 'httpd server_root',
          :displayname => 'httpd server_root',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/service_name',
          :default => '',
          :description => 'Name the HTTP Server process will run as',
          :displayname => 'HTTP Server Service Name',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/ssl/https_port',
          :default => '443',
          :description => 'Secure Port for the HTTP Server',
          :displayname => 'HTTP Server SSL Port',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/ssl/install_mod_ssl',
          :default => 'true',
          :description => 'Enable SSL within HTTP Server Configuration',
          :displayname => 'Enable SSL Module',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/ssl/sslcompression',
          :default => '',
          :description => 'Enable SSL compression within HTTP Server Configuration',
          :displayname => 'Enable SSL Compression',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/ssl/sslproxycacertificatefile',
          :default => '',
          :description => 'SSL proxy Certificate file name',
          :displayname => 'SSL proxy Certificate file name',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/ssl/sslproxycacertificatepath',
          :default => '',
          :description => 'SSL proxy Certificate file path',
          :displayname => 'SSL proxy Certificate file path',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/ssl/sslproxycarevocationcheck',
          :default => '',
          :description => 'SSL proxy CA revocation check',
          :displayname => 'SSL proxy CA revocation check',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/ssl/sslproxycarevocationfile',
          :default => '',
          :description => 'SSL proxy CA revocation file',
          :displayname => 'SSL proxy CA revocation file',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/timeout',
          :default => '60',
          :description => 'httpd timeout',
          :displayname => 'HTTP Server TCP timeout',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/use_canonical_name',
          :default => 'off',
          :description => 'Should the HTTP Server use the canonical hostname',
          :displayname => 'Enable HTTP Server Canonical hostname',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/version',
          :default => '',
          :description => 'Version of HTTP Server to be installed.',
          :displayname => 'HTTP Server version',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/vhosts_enabled',
          :attribute => 'Enable Virtual Host Configuration',
          :default => 'name_based',
          :description => 'Allow to configure virtual hosts to run multiple websites on the same HTTP server',
          :displayname => 'Enable Virtual Host Configuration',
          :options => 'true',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/virtualhosts/default_http_server/custom_log',
          :default => '',
          :description => 'Location of the HTTP Server Custom Log',
          :displayname => 'Default HTTP Server Virtual Host Custom Log Directory',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/virtualhosts/default_http_server/custom_log_format',
          :default => 'combined',
          :description => 'Log Format of the Custom Log',
          :displayname => 'Default HTTP Server Virtual Host Custom Log Format',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/virtualhosts/default_http_server/document_root',
          :default => '',
          :description => 'Location of the Default Docuement Root',
          :displayname => 'Default HTTP Server Virtual Host Document Root',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/virtualhosts/default_http_server/error_log',
          :default => '',
          :description => 'Location of the HTTP Server Error Log',
          :displayname => 'Default HTTP Server Virtual Host Error Log Directory',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/virtualhosts/default_http_server/global_ssl_config',
          :attribute => 'Type of Virtual Host for HTTP communication',
          :default => 'name_based',
          :description => 'Specify type of virtual host for HTTP communication in HTTP server',
          :displayname => 'Use Default Global Configuration for HTTPs Communication',
          :options => 'true',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/virtualhosts/default_http_server/log_dir',
          :displayname => 'Default HTTP Server Virtual Host Log Directory'
attribute 'httpd/virtualhosts/default_http_server/server_admin',
          :default => '',
          :description => 'Email address of the Server Admin',
          :displayname => 'Default HTTP Server Virtual Host Server Admin',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/virtualhosts/default_http_server/server_name',
          :default => '',
          :description => 'Vhost server name for directing requests',
          :displayname => 'Virtual Host server name for directing requests',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/virtualhosts/default_http_server/ssl_enabled',
          :attribute => 'Enable Proxy for Virtual Host for HTTPS Communication',
          :default => 'false',
          :description => 'Enable proxy usage for virtual host for HTTPS Communication in HTTP server',
          :displayname => 'Enable SSL for Virtual Host for HTTPs Communication',
          :options => 'true',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/virtualhosts/default_http_server/vhost_listen',
          :default => '80',
          :description => 'Listening port configured in virtual host for HTTP communication in HTTP server',
          :displayname => 'Listen Port in Virtual Host for HTTP communication',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/virtualhosts/default_https_server/custom_log',
          :default => '',
          :description => 'Vhost custom log dir',
          :displayname => 'DefaultHTTPSVhostCustomLogDir',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/virtualhosts/default_https_server/custom_log_format',
          :default => 'combined',
          :description => 'Vhost custom log format',
          :displayname => 'DefaultHTTPSVhostCustomLogFormat',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/virtualhosts/default_https_server/document_root',
          :default => '',
          :description => 'Vhost document root',
          :displayname => 'DefaultHTTPSVhostDocumentRoot',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/virtualhosts/default_https_server/error_log',
          :default => '',
          :description => 'Vhost error log dir',
          :displayname => 'DefaultHTTPSVhostErrorLogDir',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/virtualhosts/default_https_server/global_ssl_config',
          :attribute => 'Enable ProxyPreserveHost',
          :default => 'On',
          :description => 'Instruct the reverse proxy to preserve original host header from the client browser',
          :displayname => 'Use Default Global Configuration for HTTPS Communication',
          :options => 'true',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/virtualhosts/default_https_server/log_dir',
          :default => '',
          :description => 'Vhost log dir',
          :displayname => 'DefaultHTTPSVhostLogDir',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/virtualhosts/default_https_server/server_admin',
          :default => '',
          :description => 'Vhost Server admin',
          :displayname => 'DefaultHTTPSVhostServerAdmin',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/virtualhosts/default_https_server/server_name',
          :default => '',
          :description => 'Vhost server name for directing requests',
          :displayname => 'DefaultHTTPSVhostServerName',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/virtualhosts/default_https_server/ssl_enabled',
          :attribute => 'DefaultHTTPSGlobalSSLConfig',
          :default => 'true',
          :description => 'Enable proxy configuration',
          :displayname => 'Enable SSL for Virtual Host for HTTP Communication',
          :options => 'true',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/virtualhosts/default_https_server/vhost_listen',
          :default => '443',
          :description => 'Listening port configured in virtual host for HTTPS communication in HTTP server',
          :displayname => 'Listen Port in Virtual Host for HTTPS communication',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/worker_max_clients',
          :default => '25',
          :description => 'HTTP Server worker_max_clients',
          :displayname => 'HTTP Server worker_max_clients',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/worker_max_requests_per_child',
          :default => '0',
          :description => 'HTTP Server worker_max_requests_per_child',
          :displayname => 'HTTP Server worker_max_requests_per_child',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/worker_max_spare_servers',
          :default => '25',
          :description => 'HTTP Server worker_max_spare_servers',
          :displayname => 'HTTP Server worker_max_spare_servers',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/worker_min_spare_servers',
          :default => '300',
          :description => 'HTTP Server worker_min_spare_servers',
          :displayname => 'HTTP Server worker_min_spare_servers',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/worker_server_limit',
          :default => '75',
          :description => 'HTTP Server worker_server_limit',
          :displayname => 'HTTP Server worker_server_limit',
          :parm_type => 'node',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
attribute 'httpd/worker_start_servers',
          :default => '4',
          :description => 'HTTP Server worker_start_servers',
          :displayname => 'HTTP Server worker_start_servers',
          :parm_type => 'none',
          :precedence_level => 'node',
          :required => 'recommended',
          :secret => 'false',
          :selectable => 'false',
          :type => 'string'
recipe 'httpd::cleanup.rb', '
Cleanup recipe (cleanup.rb)
Perform post-install cleanup
'
recipe 'httpd::config_httpd_conf.rb', '
Configure httpd server recipe (config_httpd_conf.rb)
Setup the main server configuration file
'
recipe 'httpd::config_ssl.rb', '
SSL configuration recipe (config_proxy.rb)
Install mod_ssl, create SSL configuration file, create certificates
'
recipe 'httpd::config_vhosts.rb', '
vhost configuration recipe (config_vhost.rb)
Create vhost configuration file
'
recipe 'httpd::default.rb', '
Default recipe (default.rb)
The default recipe for the cookbook. It is recommended to not use the default recipe, but explicitly specify a run_list for the deployment node.
'
recipe 'httpd::gather_evidence.rb', '
Gather evidence recipe (gather_evidence.rb)
Gather evidence that installation was successful
'
recipe 'httpd::install.rb', '
Installation recipe (install.rb)
Perform an installation of selected httpd package on the target node.
'
recipe 'httpd::prereq.rb', '
Prerequisites recipe (prereq.rb)
Perform prerequisite tasks.
'
recipe 'httpd::service.rb', '
Service control recipe (service.rb)
Enable and start the httpd service
'
