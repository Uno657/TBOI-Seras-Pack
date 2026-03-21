# Version 0 // Pre-Release

## Version 0.9
- Added a new item; Poop Baby
- Removed some old print() functions from bug-testing
- Changed items to use their local RNG objects rather than the global RNG object

## Version 0.8
- Added a new item; Cool Shades
- Fixed Tainted Hearts not being able to be collected
- Fixed Tainted Hearts replacing every pickup that spawned after they did
- Fixed revive count not being displayed on the health bar
- Moved local functions to a new globally accessible file
    - sFunc:getEntry()
    - sFunc:isFamineChargeDamage()
    - sFunc:isSacrificeSpikeDamage()
    - sFunc:isSacrificeDamage()
    - sFunc:getIndex()
    - sFunc:isValidEntity()
    - sFunc:isBoss()
    - sFunc:isFamiliarProjectile()
    - sFunc:isPlayerProjectile()

## Version 0.7
- Added a new item; Fleshy Dice
- Fixed a potential issue where Tainted Hearts' pick up animation wouldn't be played if it was picked up during game start
- Removed some old print() functions from bug-testing

## Version 0.6
- Added a new item; Panacea

## Version 0.5
- Added a new item type; Tainted Foods
- Added a new pickup; Tainted Hearts
- Fixed Mother's Blessing trying to spawn a maggot after the player died
- Removed some old print() functions from bug-testing

## Version 0.4
- Added a new item; Mother's Blessing

## Version 0.3
- Added a new item; Profane Orb
- Changed Unstable File to use rng:RandomInt() instead of math.random()
- Fixed Unstable File not changing stats when MC_EVALUATE_CACHE was called by something else
- Fixed Unstable File + D8 synergy not working as intended

## Version 0.2
- Added a new item; Anatomy Textbook

## Version 0.1
- Added a new item; Unstable File