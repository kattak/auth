#Display a list of all cards for a specific deck
get '/decks/:deck_id/cards' do

  @deck = Deck.find(params[:deck_id])

  @cards = @deck.cards

  erb :'cards/index'

end

#Display a specific card belonging to a specific deck
get '/decks/:deck_id/cards/:id' do

  @deck = Deck.find(params[:deck_id])

  @card = @deck.cards.find(params[:id])

  erb :'cards/show'

end
