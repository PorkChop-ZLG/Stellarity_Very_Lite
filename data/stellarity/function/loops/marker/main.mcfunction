#function stellarity:items/main_marker

# Exit Portal loop
# Used for stuff like respawn checks, etc.
# execute if entity @s[tag=fe.exit_portal] run function far_end:structures/exit_portal/main

# Scheduled checks for End Portal animation
execute if entity @s[tag=stellarity.end_portal_animation,tag=stellarity.end_portal_animation.check_schedule] run function stellarity:sfx/end_portal/checks/base

execute if entity @s[tag=stellarity.end_portal] run function stellarity:sfx/end_portal/marker_loop
execute if entity @s[tag=stellarity.end_portal_animation] run function stellarity:sfx/end_portal/open_animation/main

# Dragon markers
