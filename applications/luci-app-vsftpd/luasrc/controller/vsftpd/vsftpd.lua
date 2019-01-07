-- Copyright 2019 Florian Eckert <fe@dev.tdt.de>
-- Licensed to the public under the Apache License 2.0.

module("luci.controller.vsftpd.vsftpd", package.seeall)

function index()
	if not nixio.fs.access("/etc/config/vsftpd") then
		return
	end

	local page

	page = entry({"admin", "services", "vsftpd"}, cbi("vsftpd/vsftpd"), _("vsftpd"))
	page.leaf = true

end

