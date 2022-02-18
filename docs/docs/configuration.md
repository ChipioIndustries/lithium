---
sidebar_position: 3
---

# Configuration

Lithium instances can be configured with a dictionary to change the way `makeCall` behaves.

## doYield

`doYield` is a boolean that determines if `makeCall` should yield.

## throwErrors

`throwErrors` is a boolean that determines if `makeCall` should throw an error when called.

## yieldMax

The maximum amount of time `makeCall` will yield for if `doYield` is true.

## yieldMin

The minimum amount of time `makeCall` will yield for if `doYield` is true. If this value is not present, `makeCall` will wait for `yieldMax`.
