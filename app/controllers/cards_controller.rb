#Display a list of all cards for a specific set
get '/sets/:set_id/cards' do

  @set = Set.find(params[:set_id])

  @cards = @set.cards

  erb :'cards/index'

end

#Display a specific card belonging to a specific set
get '/sets/:set_id/cards/:id' do

  @set = Set.find(params[:set_id])

  @card = @set.cards.find(params[:id])

  erb :'cards/show'

end
