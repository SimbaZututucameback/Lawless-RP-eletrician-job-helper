script_name("Lawless RP Electrician Job Helper")
script_author("SpnKO")
script_version("1.0")

local sampev = require 'samp.events'
local searchForPattern = false
local patternNumber = 0
local startSolving = false

function main()
	while not isSampAvailable() do wait(0) end
		while sampGetCurrentServerName() == "SA-MP" do wait(0) end
			if not sampGetCurrentServerName():lower():match("lawless roleplay") then
			thisScript():unload()
			return
		end
	while true do
	wait(0)
		if searchForPattern == true then
			sampSendClickTextdraw(50)
			wait(150)
			sampSendClickTextdraw(patternNumber + 55)
			wait(150)
		end
	end
end

function sampev.onServerMessage(color, text)
	if string.find(text, "You need to connect the middle lower 5 wires to the other wires") then
		searchForPattern = true
	end
end

function sampev.onDisplayGameText(style, gtime, text)
	if style == 6 and text == "~r~ERROR!" and searchForPattern == true then
		patternNumber = patternNumber + 1
	end
	if style == 6 and text == "~g~CONNECTED!" and searchForPattern == true then
		searchForPattern = false
			if patternNumber == 0 then
				lua_thread.create(function()
				sampSendClickTextdraw(51)
				wait(150)
				sampSendClickTextdraw(56)
				wait(150)
				sampSendClickTextdraw(52)
				wait(150)
				sampSendClickTextdraw(57)
				wait(150)
				sampSendClickTextdraw(53)
				wait(150)
				sampSendClickTextdraw(58)
				wait(150)
				sampSendClickTextdraw(54)
				wait(150)
				sampSendClickTextdraw(59)
				wait(150)
				end)
			end
			if patternNumber == 1 then
				lua_thread.create(function()
				sampSendClickTextdraw(51)
				wait(150)
				sampSendClickTextdraw(57)
				wait(150)
				sampSendClickTextdraw(52)
				wait(150)
				sampSendClickTextdraw(59)
				wait(150)
				sampSendClickTextdraw(53)
				wait(150)
				sampSendClickTextdraw(58)
				wait(150)
				sampSendClickTextdraw(54)
				wait(150)
				sampSendClickTextdraw(55)
				wait(150)
				end)
			end
			if patternNumber == 2 then
				lua_thread.create(function()
				sampSendClickTextdraw(51)
				wait(150)
				sampSendClickTextdraw(55)
				wait(150)
				sampSendClickTextdraw(52)
				wait(150)
				sampSendClickTextdraw(58)
				wait(150)
				sampSendClickTextdraw(53)
				wait(150)
				sampSendClickTextdraw(56)
				wait(150)
				sampSendClickTextdraw(54)
				wait(150)
				sampSendClickTextdraw(59)
				wait(150)
				end)
			end
			if patternNumber == 4 then
				lua_thread.create(function()
				sampSendClickTextdraw(51)
				wait(150)
				sampSendClickTextdraw(58)
				wait(150)
				sampSendClickTextdraw(52)
				wait(150)
				sampSendClickTextdraw(56)
				wait(150)
				sampSendClickTextdraw(53)
				wait(150)
				sampSendClickTextdraw(55)
				wait(150)
				sampSendClickTextdraw(54)
				wait(150)
				sampSendClickTextdraw(57)
				wait(150)
				end)
			end
	end
	if style == 6 and text == "~g~ALL WIRES CONNECTED!" then
		patternNumber = 0
	end
end