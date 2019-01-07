-- Copyright 2015 Daniel Dickinson <openwrt@daniel.thecshore.com>
-- Licensed to the public under the Apache License 2.0.

local fs = require("nixio.fs")

local s
local anonymous_enable, listen_port

local m = Map("vsftpd", translate("vsftpd"),
	translate("very secure FTP daemon"))

local s = m:section(TypedSection, "service", "")
s.addremove = false
s.anonymous = false

s:tab("general", translate("General Settings"))
s:tab("advanced", translate("Advanced Settings"),
	translate("Settings which are either rarely needed"))

anonymous_enable = s:taboption("general", Flag, "anonymous_enable",
	translate("Anonymous enabled"),
	translate("Controls whether anonymous logins are permitted or not. If enabled, both the usernames ftp and anonymous are recognised as anonymous logins"))

listen_port = s:taboption("general", Value, "listen_port",
	translate("Listen port"),
	translate("If in standalone mode, this is the port it will listen on for incoming FTP connections"))
listen_port.datatype = "port"
listen_port.placeholder = 21
--VSFTPD_BOOLS='
--allow_anon_ssl
--anon_mkdir_write_enable
--anon_other_write_enable
--anon_upload_enable
--anon_world_readable_only
--anonymous_enable
--ascii_download_enable
--ascii_upload_enable
--async_abor_enable
--check_shell
--chmod_enable
--chown_uploads
--chroot_list_enable
--chroot_local_user
--connect_from_port_20
--debug_ssl
--delete_failed_uploads
--deny_email_enable
--dirlist_enable
--dirmessage_enable
--download_enable
--dual_log_enable
--force_dot_files
--force_anon_data_ssl
--force_anon_logins_ssl
--force_local_data_ssl
--force_local_logins_ssl
--guest_enable
--hide_ids
--implicit_ssl
--listen
--listen_ipv6
--local_enable
--lock_upload_files
--log_ftp_protocol
--ls_recurse_enable
--mdtm_write
--no_anon_password
--no_log_lock
--one_process_model
--passwd_chroot_enable
--pasv_addr_resolve
--pasv_enable
--pasv_promiscuous
--port_enable
--port_promiscuous
--require_cert
--require_ssl_reuse
--reverse_lookup_enable
--run_as_launching_user
--secure_email_list_enable
--session_support
--setproctitle_enable
--ssl_enable
--ssl_request_cert
--ssl_sslv2
--ssl_sslv3
--ssl_tlsv1
--strict_ssl_read_eof
--strict_ssl_write_shutdown
--syslog_enable
--tcp_wrappers
--text_userdb_names
--tilde_user_enable
--use_localtime
--use_sendfile
--userlist_deny
--userlist_enable
--validate_cert
--userlist_log
--virtual_use_local_privs
--write_enable
--xferlog_enable
--xferlog_std_format
--isolate_network
--isolate

--VSFTPD_NUMERIC='
--accept_timeout
--anon_max_rate
--anon_umask
--chown_upload_mode
--connect_timeout
--data_connection_timeout
--delay_failed_login
--delay_successful_login
--file_open_mode
--ftp_data_port
--idle_session_timeout
--listen_port
--local_max_rate
--local_umask
--max_clients
--max_login_fails
--max_per_ip
--pasv_max_port
--pasv_min_port
--trans_chunk_size


--VSFTPD_STRING='
--anon_root
--banned_email_file
--banner_file
--ca_certs_file
--chown_username
--chroot_list_file
--cmds_allowed
--cmds_denied
--deny_file
--dsa_cert_file
--dsa_private_key_file
--email_password_file
--ftp_username
--ftpd_banner
--guest_username
--hide_file
--listen_address
--listen_address6
--local_root
--message_file
--nopriv_user
--pam_service_name
--pasv_address
--rsa_cert_file
--rsa_private_key_file
--secure_chroot_dir
--ssl_ciphers
--user_config_dir
--user_sub_token
--userlist_file
--vsftpd_log_file
--xferlog_file

return m
