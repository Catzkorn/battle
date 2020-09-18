require "./spec/features/web_helpers"

feature "player 1" do
  scenario "be able to view player 2's hit points" do
    sign_in_and_play
    expect(page).to have_content "Gary: 60HP"
  end

  scenario "be able to view player 1's hit points" do
    sign_in_and_play
    expect(page).to have_content "Charlie: 60HP"
  end
end
