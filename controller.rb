require('sinatra')
require('sinatra/contrib/all') if development?

require_relative('./models/game.rb')
also_reload('./models/*')

get '/' do
  erb(:welcome)
end

get '/:player1/:player2' do
  player1 = params['player1']
  player2 = params['player2']
  @result = Game.check(player1, player2)
  erb(:result)
end
