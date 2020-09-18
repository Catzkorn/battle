require "./spec/features/web_helpers"

feature "switching turns" do
  scenario "player one takes a turn, followed by player two" do
    sign_in_and_play
    expect(page).to have_content "Charlie's Turn"
    click_button "Attack"
    click_link "Return to Play"
    expect(page).to have_content "Gary's Turn"
  end
end
