#Display a list of all decks
get '/decks' do

  @decks = Deck.all #define instance variable for view

  erb :'decks/index' #show all decks view (index)

end

#Display a specific set
get '/decks/:id' do

  #gets params from url

  @set = Deck.find(params[:id]) #define instance variable for view

  erb :'decks/show' #show single set view

end
