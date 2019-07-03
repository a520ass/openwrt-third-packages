module("luci.controller.modem", package.seeall)

function index()
	if not nixio.fs.access("/etc/config/modem") then
		return
	end
	local page
	page = entry({"admin", "network", "modem"}, cbi("modem"), _("Access Modem"), 100)
	page.dependent = true
end
