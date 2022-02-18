local configs = {
	toTry = {
		{
			name = "no config";
			config = nil;
		};
		{
			name = "empty config";
			config = {};
		};
	};
	toFail = {
		name = "invalid config";
		config = {
			doYield = true;
			yieldMax = nil;
		}
	};
}

return function()
	describe("Lithium.lua", function()
		local Lithium = require(script.Parent)

		for _, config in ipairs(configs.toTry) do
			it("should work with config " .. config.name, function()
				local lithium = Lithium.new(config)
				expect(lithium).to.be.ok()
			end)
		end

		for _, config in ipairs(configs.toFail) do
			it("should work with config " .. config.name, function()
				expect(function()
					Lithium.new(config)
				end).to.throw()
			end)
		end

		it("should throw errors only when enabled", function()
			local config1 = {
				throwErrors = true
			}
			local config2 = {
				throwErrors = false
			}

			local lithium1 = Lithium.new(config1)
			local lithium2 = Lithium.new(config2)

			expect(function()
				lithium1:makeCall()
			end).to.throw()

			lithium2:makeCall()
		end)

		it("should yield when enabled", function()
			local config1 = {
				doYield = true
			}
			local config2 = {
				doYield = false
			}

			local lithium1 = Lithium.new(config1)
			local lithium2 = Lithium.new(config2)

			local hasRun1 = false
			task.spawn(function()
				lithium1:makeCall()
				hasRun1 = true
			end)
			expect(hasRun1).to.equal(false)

			local hasRun2 = false
			task.spawn(function()
				lithium2:makeCall()
				hasRun2 = true
			end)
			expect(hasRun2).to.equal(true)
		end)

		it("should modify config", function()
			local config = {
				doYield = true;
			}

			local lithium = Lithium.new(config)

			local hasRun1 = false
			task.spawn(function()
				lithium:makeCall()
				hasRun1 = true
			end)

			expect(hasRun1).to.equal(false)

			lithium:modifyConfig({
				doYield = false;
			})

			local hasRun2 = false
			task.spawn(function()
				lithium:makeCall()
				hasRun2 = true
			end)

			expect(hasRun2).to.equal(true)
		end)
	end)
end