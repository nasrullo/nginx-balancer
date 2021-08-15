local balancer = require "ngx.balancer"

local host = "127.0.0.1"
local port = 8000 + ngx.ctx.upid

local ok, err = balancer.set_current_peer(host, port)
if not ok then
    ngx.say("failed to set the current peer: ", err)
end
ngx.header["Content-type"] = "application/json"

