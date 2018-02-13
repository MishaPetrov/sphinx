#!/usr/bin/ruby

class Riddles
  attr_reader(:current_riddle, :riddle_pool, :win_counter, :loss_counter)
  def initialize
    @riddle_pool = {"David's father has three sons : Snap, Crackle and _____ ?" => "david",
      "What runs around the whole yard without moving?" => "fence",
      "I'm white, and used for cutting and grinding. When I'm damaged, humans usually remove me or fill me. For most animals I am a useful tool. What am I?" => "tooth"}
    @win_counter = 0
    @loss_counter = 0
  end

  def select_random
    @current_riddle = @riddle_pool.keys.sample
  end

  def evaluate_answer(user_input)
    binding.pry
    if @riddle_pool[@current_riddle].include?(user_input.downcase.split(/[\W\d]+/).join)
      @win_counter += 1
      return true
    end
    @loss_counter += 1
    false
  end
end

# def evaluate_answer(user_input)
#   processed_input = user_input.downcase.split(/[\W\d]+/).join
#   answer = @riddle_pool[:@current_riddle]
#   if answer.include?(processed_input)
#     return true
#   end
#   false
# end
