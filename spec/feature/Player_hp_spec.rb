feature 'players can view their HP' do

  scenario "p1 can see p2's hp" do
    sign_in_and_play
    expect(page).to have_content "Josh the destroyer: 200hp The DOMinator: 200hp"
  end

  scenario "p1 can attack p2's hp" do
    sign_in_and_play
    click_button('attac!')
    expect(page).to have_content "Josh the destroyer: 200hp The DOMinator: 190hp"
  end

end
