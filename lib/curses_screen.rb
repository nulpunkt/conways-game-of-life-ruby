require "curses"
include Curses

class CursesScreen
  def initialize game
    init_screen
    @game = game
  end

  def play grid
    begin
      crmode
      while true do
        print_step grid
        sleep 0.5
        grid = @game.step grid
      end
    ensure
      close_screen
    end
  end

  def print_step grid
      grid.cells { | x, y |
        setpos(y, x)
        if grid.alive? x, y then
          addstr("*")
        else
          addstr(".")
        end
      }
      refresh
  end
end
