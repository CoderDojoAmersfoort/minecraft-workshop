import mcpi.minecraft as minecraft
import time

mc = minecraft.Minecraft.create()
water = 9
ice = 79

while True:
    time.sleep(0.2)
    pos = mc.player.getPos()
    x = pos.x
    y = pos.y
    z = pos.z

    blockBelow = mc.getBlock(x, y - 1, z)

    if blockBelow == water:
      mc.setBlock(x, y - 1, z, ice)
