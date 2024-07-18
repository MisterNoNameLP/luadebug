_G.package.path = _G.package.path .. ";./libs/?.lua"
_G.package.cpath = _G.package.cpath .. ";./libs/?.so"

--local d = require("debug")
local ut = require("UT")

print(loadfile("libs/debug.lua"))

local d = require("luadebug").init()

debug.setLogPrefix("[TEST]")

debug.log("log")
debug.dlog("dlog")
debug.warn("warn")
debug.err("err")
debug.crucial("crucial")
--d.fatal("fatal")

local function func1()
	debug.setFuncPrefix("[FUNC1]")
	debug.log("func1")
	local function subFunc()
		debug.setFuncPrefix("[SUB_FUNC]")
		debug.log("subFunc")
	end
	subFunc()
end

local function func2()
	debug.setFuncPrefix("[FUNC2]")
	debug.log("func2")
end


func1()
func2()