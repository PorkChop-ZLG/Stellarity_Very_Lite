# 执行者: marker

# 如果遍历至 Y轴 0 坐标则直接在55位置生成传送门结构
execute if predicate {condition:"entity_properties",entity:"this",predicate:{location:{position:{y:{max:100}}}}} \
    positioned 0 55 0 run return \
    run function stellarity:sfx/open_door/find_spawn_pos/generate

# 如果当前位置不是基岩则向上移动一格
execute unless block ~ ~1 ~ bedrock run tp ~ ~1 ~

# 如果当前位置是基岩则在当前位置生成传送门结构
execute if block ~ ~1 ~ bedrock run return \
    run function stellarity:sfx/open_door/find_spawn_pos/generate

# 继续向下遍历
execute at @s run function stellarity:sfx/open_door/find_spawn_pos/set-marker