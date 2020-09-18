require "./spec/features/web_helpers"
feature "player 1" do
  scenario "attack player 2 and recieve confirmation" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content "Charlie attacked Gary"
  end

  scenario "when player 1 attacks player 2, their HP is reduced by 10" do
    sign_in_and_play
    click_button "Attack"
    expect(page).not_to have_content "Gary: 60HP"
    expect(page).to have_content "Gary: 50HP"
  end
end

feature "player 2" do
  scenario "attack player 1 and recieve confirmation" do
    sign_in_and_play
    click_button "Attack"
    click_link "Return to Play"
    expect(page).to have_content "Gary's Turn"
    click_button "Attack"
    expect(page).to have_content "Charlie: 50HP"
  end
end
