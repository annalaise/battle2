require_relative '../../lib/player.rb'
feature 'View hit points' do
  scenario "expects /play to display hit points" do
    sign_in_and_play
    expect(page).to have_text(Player::DEFAULT_HP.to_s + "HP")
  end
end
