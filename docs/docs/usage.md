---
sidebar_position: 2
---

# Usage

Begin by requiring the module.

```lua
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Lithium = require(ReplicatedStorage.Packages.Lithium)
```

```lua
local lithium = Lithium.new()
```

## Configuration

The constructor can receive a configuration object:

```lua
local myConfig = {
	throwErrors = true;
}

local lithium = Lithium.new(config)
```

The configuration can later be modified by calling the `modifyConfig` function. The provided config will be merged with the instance's existing config:

```lua
local configChange = {
	yieldMax = 5;
}

lithium:modifyConfig(configChange)
```

## Simulation

To simulate a network call, call the `makeCall` function.

```lua
lithium:makeCall()
```

This has the potential to yield or throw depending on your configuration.

## Errors

To cause Lithium to throw an error, set its config's `throwErrors` field to `true`. When `makeCall` is called, an intentional error will be thrown. If yielding is enabled, the call will yield before throwing an error.

## Yielding

When the `doYield` config field is enabled, `makeCall` will yield for a random duration between `yieldMin` and `yieldMax`. If no `yieldMin` is present, the call will yield for `yieldMax`.