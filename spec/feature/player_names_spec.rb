feature 'players can enter their name' do

  scenario "homepage displays players submited names" do
    sign_in_and_play
    expect(page).to have_content "Josh the destroyer vs The DOMinator"
  end

end
