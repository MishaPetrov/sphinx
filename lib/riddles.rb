#!/usr/bin/ruby

class Riddles
  attr_reader(:current_riddle, :riddle_pool)
  attr_accessor(:win_counter, :loss_counter)
  def initialize
    @@riddle_pool = {"David's father has three sons : Snap, Crackle and _____ ?" => "david",
      "What runs around the whole yard without moving?" => "fence",
      "I'm white, and used for cutting and grinding. When I'm damaged, humans usually remove me or fill me. For most animals I am a useful tool. What am I?" => "tooth", "I have a head & no body, but I do have a tail. What am I?" => "coin", "What do you call a bear without an ear?" => "b", "I can be made and I can be played. I can be cracked and I can be told. What am I?" => "joke"}
    @win_counter = 0
    @loss_counter = 0
  end

  def select_random
    @@current_riddle = @@riddle_pool.keys.sample
  end

  def current_riddle
    @@current_riddle
  end

  def riddle_pool
    @@riddle_pool
  end

  def win_counter
    @win_counter
  end

  def loss_counter
    @loss_counter
  end

  def evaluate_answer(user_input)
    if @@riddle_pool[@@current_riddle].include?(user_input.downcase.split(/[\W\d]+/).join)
      @win_counter = @win_counter + 1
    else
      @loss_counter = @loss_counter + 1
    end
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
