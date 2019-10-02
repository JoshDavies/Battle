feature 'players can view their HP' do

  scenario "p1 can seed p2's hp" do
    sign_in_and_play
    expect(page).to have_content "Josh the destroyer: 200hp The DOMinator: 200hp"
  end

end
