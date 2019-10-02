feature 'players can enter their name' do

  scenario "homepage displays players submited names" do
    visit '/'
    fill_in( 'player1', with: "Josh the destroyer")
    fill_in( 'player2', with: "The DOMinator")
    click_button('submit')
    expect(page).to have_content "Josh the destroyer vs The DOMinator"
  end


end
