require 'player.rb'

RSpec.describe Player do
  it 'will test for new Player class' do
    player = Player.new("Jon")
    expect(player.name).to eq("Jon")
  end
end
