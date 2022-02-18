local DefaultConfig = require(script.DefaultConfig)

local Llama = require(script.Parent.Llama)

local Lithium = {}
Lithium.__index = Lithium

function Lithium.new(config: DefaultConfig.Config?)
	local self = {
		_RNG = Random.new();
	}

	setmetatable(self, Lithium)
	self:modifyConfig(config or {})

	return self
end

function Lithium:makeCall()
	if self._config.doYield then
		local yieldMax = self._config.yieldMax
		local yieldMin = self._config.yieldMin or yieldMax
		task.wait(self._RNG:NextNumber(yieldMin, yieldMax))
	end

	if self._config.throwErrors then
		error("Intentional error")
	end
end

function Lithium:modifyConfig(config: DefaultConfig.Config)
	config = Llama.Dictionary.join(self._config or DefaultConfig, config)

	if config.doYield then
		assert(config.yieldMax, "yieldMax is required if doYield is enabled")
	end

	self._config = config

	return config
end

return Lithium