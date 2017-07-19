feature 'Enter names' do
  scenario "expects players to fill in their names in a form" do
    visit('/')
    fill_in :player_1_name, with: "Mike"
    fill_in :player_2_name, with: "Tom"
    click_button "Submit"
    expect(page).to have_text("Mike") and have_text("Tom")
  end
end
