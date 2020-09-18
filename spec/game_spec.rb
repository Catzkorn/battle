require "game"

describe Game do
  let(:charlie) { Player.new("Charlie") }
  let(:gary) { Player.new("Gary") }
  subject(:game) { Game.new(charlie, gary) }

  it "expects game to be initated with two players " do
    expect(Game).to respond_to(:new).with(2).arguments
  end

  describe "#attack" do
    it "attacks a player" do
      expect(gary).to receive(:take_damage)
      game.attack(gary)
    end
  end
end
