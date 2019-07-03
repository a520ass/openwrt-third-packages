local fs = require "nixio.fs"
local util = require "nixio.util"

local m, s, o

m = Map("modem", translate("Access Modem"), translate("Access modem in bridge mode"))

s = m:section(TypedSection, "modem", translate("Basic Setting"))
s.anonymous = true

s:option(Flag, "enable", translate("Enable"))

o = s:option(Value, "ipaddr", translate("IP Address"))
o.datatype = "ipaddr"
o.default = "192.168.1.254"
o.placeholder = "192.168.1.254"

o = s:option(Value, "netmask", translate("Netmask"))
o.datatype = "ipaddr"
o.default = "255.255.255.0"
o.placeholder = "255.255.255.0"

o = s:option(Value, "ifname", translate("Interface"))
o.template = "cbi/network_ifacelist"
o.widget = "radio"
o.nobridges = true
o.rmempty = false

return m
