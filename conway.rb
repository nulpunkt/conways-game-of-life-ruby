require './lib/grid'
require './lib/curses_screen'
require './lib/start_positions'

p = StartPositions.new
s = CursesScreen.new
s.print_grid p.blinker
