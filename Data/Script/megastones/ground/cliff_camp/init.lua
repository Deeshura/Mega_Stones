require 'origin.common'

local cliff_camp = {}

--------------------------------------------------
-- Map Callbacks
--------------------------------------------------

--------------------------------------------------
-- Objects Callbacks
--------------------------------------------------
function cliff_camp.East_Exit_Touch(obj, activator)
  DEBUG.EnableDbgCoro() --Enable debugging this coroutine
  UI:ResetSpeaker()
  
  local dungeon_entrances = { 'fertile_valley', 'flyaway_cliffs', 'wayward_wetlands', 'deserted_fortress', 'bravery_road', 'geode_underpass', 'the_sky' }
  local ground_entrances = {{Flag=SV.canyon_camp.ExpositionComplete,Zone='guildmaster_island',ID=5,Entry=0},
  {Flag=SV.rest_stop.ExpositionComplete,Zone='guildmaster_island',ID=6,Entry=0},
  {Flag=SV.final_stop.ExpositionComplete,Zone='guildmaster_island',ID=7,Entry=0},
  {Flag=SV.guildmaster_summit.GameComplete,Zone='guildmaster_island',ID=8,Entry=0},
  {Flag=SV.shady_shop.ExpositionComplete,Zone='shady_shop',ID=0,Entry=0}}
  COMMON.ShowDestinationMenu(dungeon_entrances,ground_entrances)
end

return cliff_camp