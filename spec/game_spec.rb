require	'./lib/game'

describe Game do
  it "increments the game" do
    start = Grid.new
    start.alive! 2, 1
    start.alive! 2, 2
    start.alive! 2, 3

    expected = Grid.new
    expected.alive! 1, 2
    expected.alive! 2, 2
    expected.alive! 3, 2

    game = Game.new 5, 5

    game.step(start).should be_eq expected
  end
end
