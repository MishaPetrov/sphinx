require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('pry')
require('./lib/riddles')


get('/') do
  @@riddles = Riddles.new
  @@riddles.select_random
  erb(:riddle)
end

get('/submit') do
  @user_input = params.fetch("user_answer")
  @@riddles.evaluate_answer(@user_input)
  @@riddles.select_random

  if @@riddles.win_counter >= 3
    return erb(:win)
  end
  if @@riddles.loss_counter >= 2
    return erb(:lose)
  end
  erb(:riddle)
end
