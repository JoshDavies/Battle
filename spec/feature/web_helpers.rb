def sign_in_and_play
  visit '/'
  fill_in( 'player1', with: "Josh the destroyer" )
  fill_in( 'player2', with: "The DOMinator" )
  click_button('submit')
end
