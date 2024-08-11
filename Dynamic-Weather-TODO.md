# TODO List for Dynamic Weather Mod

## HOTFIX
- [ ] Fixing Rain bug, after changing transition or weather manually from thunderstorm, ground still full of rain even it's not raining.
- [ ] Adding a logic inside Thunderstorm/Transition to remove rain/wind force also from the ground to fix that.
- [ ] Reducing Rain and Wind force to prevent making Roads Slippery (unable to drive a vehicle)

## Bug Fixes
- [ ] Adjust the script to account for the game being paused, preventing weather changes during pause. Consider using in-game time instead of ticks.
- [ ] Investigate and resolve issues with QuantV and the new hurricane weather where rain doesn't stop after a hurricane.

## Features and Enhancements
- [ ] Implement a longer weather transition option, allowing transitions up to 30 seconds.
- [ ] Introduce a flexible weather change interval, allowing random weather changes within a specified minimum and maximum timeframe.
  - [ ] Ensure the option to prevent the same weather from occurring consecutively.
- [ ] Add an option for random weather at game start for more dynamic gameplay.
- [ ] Update notification logo to a custom icon from Dynamic Weather.
- [ ] Add friendly announcements for weather changes. Examples include:
  - "It’s gonna be a beautiful day with a lot of sun."
  - Consider adding similar messages to replace more formal or alarming notifications.