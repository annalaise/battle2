feature 'View hit points' do
  scenario "expects /play to display hit points" do
    sign_in_and_play
    expect(page).to have_text("10HP")
  end
end
