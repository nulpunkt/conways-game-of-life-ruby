require './lib/grid'

describe Grid do
  before(:each) do
    @g = Grid.new 5, 5
  end

  it "starts with dead cells" do
    @g.alive?(3, 3).should be_false
    @g.alive?(7, 3).should be_false
    @g.alive?(3, 7).should be_false
  end

  it "knows if a cell is alive" do
    @g.alive!(3, 3)
    @g.alive?(3, 3).should be_true
    @g.alive?(2, 3).should be_false
  end

  it "it can have no alive neighbours" do
    @g.alive_neighbours(3, 3).should be 0
  end

  it "it can have alive neighbours" do
    @g.alive!(4, 3)
    @g.alive!(3, 4)
    @g.alive!(3, 3)
    @g.alive_neighbours(3, 3).should be 2
  end

  it "can be compared, when equal" do
    g1 = Grid.new 5, 5
    g1.alive! 3, 1
    g2 = Grid.new 5, 5
    g2.alive! 3, 1

    g1.should be_eq g2
  end

  it "can be compared, when not equal" do
    g1 = Grid.new 5, 5 
    g1.alive! 3, 1
    g2 = Grid.new 5, 5
    g2.alive! 3, 1
    g2.alive! 3, 3

    g1.should_not be_eq g2
  end

  it "can create a new of same size" do
    @g.new_of_same_size.should be_eq @g
  end
end
