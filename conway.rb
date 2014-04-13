require './lib/grid'
require './lib/curses_screen'
require './lib/start_positions'
require './lib/game'

p = StartPositions.new.glider
g = Game.new
s = CursesScreen.new g

s.play p
