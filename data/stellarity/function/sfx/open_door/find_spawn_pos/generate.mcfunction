# 执行者: marker
# 执行位置: 末地祭坛最下方的基岩方块

setblock ~ ~ ~ structure_block[mode=load]{name:"far_end:exit_portal/activated",posX:-7,posY:0,posZ:-7,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
setblock ~ ~1 ~ minecraft:redstone_block

kill @s

# 输出提示
execute as @a in minecraft:the_end run tellraw @s {"translate":"message.stellarity.open_door","color":"dark_aqua","bold":true}
