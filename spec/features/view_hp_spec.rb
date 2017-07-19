feature 'View hit points' do
  scenario "expects /play to display hit points" do
    visit('/')
    fill_in :player_1_name, with: "Mike"
    fill_in :player_2_name, with: "Tom"
    click_button "Submit"
    expect(page).to have_text("10HP")
  end
end
