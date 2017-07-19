feature 'Attack' do
  scenario "expects ask question attack to result in teacher answer" do
    sign_in_and_play
    click_button "Ask obvious question"
    expect(page).to have_text("Mike attacks Tom with Ask obvious question")
  end

  scenario "player2 hp reduces by 10 after savage attack from player1" do
    sign_in_and_play
    click_button "Ask obvious question"
    expect(page).to have_text("Tom lost 10HP")
  end

end
