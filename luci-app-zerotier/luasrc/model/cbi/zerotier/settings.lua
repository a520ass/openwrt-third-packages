
a=Map("zerotier",translate("ZeroTier"),translate("Zerotier is an open source, cross-platform and easy to use virtual LAN"))
a:section(SimpleSection).template  = "zerotier/zerotier_status"

t=a:section(NamedSection,"sample_config","zerotier")
t.anonymous=true
t.addremove=false

e=t:option(Flag,"enabled",translate("Enable"))
e.default=0
e.rmempty=false

e=t:option(Value,"secret",translate("Secret"))
e.password=true

e=t:option(DynamicList,"join",translate('ZeroTier Network ID'))
e.password=true
e.rmempty=false

local apply = luci.http.formvalue("cbi.apply")
if apply then
	io.popen("/etc/init.d/zerotier restart")
end

return a
