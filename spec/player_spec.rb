require 'player'

describe Player do
subject {Player.new("Player 1")}
  it "return name" do
    expect(subject.name).to eq "Player 1"
  end
end