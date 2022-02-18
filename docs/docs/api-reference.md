---
sidebar_position: 4
---

# Lithium

Lithium is an instance for simulating network calls that can yield and fail.

## Constructor

```lua
local lithium = Lithium.new()
```

### Parameters

|Type|Name|Default|Description|
|-|-|-|-|
|Dictionary|config|{}|Configuration dictionary|

## Functions

|Return Type|Signature|Description|
|-|-|-|
|void|[`makeCall()`](#makecall)|Simulate a network call based on the instance's config.|
|Dictionary|[`modifyConfig(Dictionary config)`](#modifyconfig)|Update the instance's config with the new values. Returns the final configuration.|

## makeCall

This function simulates a network call based on the instance's config.

```lua
lithium:makeCall()
```

## modifyConfig

This function updates the instance's config with the new values and returns the final configuration.

### Parameters

|Type|Name|Default|Description|
|-|-|-|-|
|Dictionary|config||The config modifications.|
