require "curses"
include Curses

class CursesScreen
  def initialize
    init_screen
  end

  def print_grid grid
    begin
      crmode
      grid.cells { | x, y |
        setpos(y, x)
        if grid.alive? x, y then
          addstr("*")
        else
          addstr(".")
        end
      }
      refresh
      sleep 33
    ensure
      close_screen
    end
  end
end
