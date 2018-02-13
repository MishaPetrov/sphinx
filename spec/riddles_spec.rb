require('rspec')
require('riddles')
require('pry')

describe('Riddles') do
  describe('#select_random') do
    it("selects random riddle from the pool") do
      riddles = Riddles.new()
      riddles.select_random
      # binding.pry
      expect(riddles.riddle_pool.key?(riddles.current_riddle)).to(eq(true))
    end
  end
  describe('#evaluate_answer') do
    it("evaluates if user response matches riddle answer") do
      riddles = Riddles.new()
      riddles.select_random
      correct_answer = riddles.riddle_pool[riddles.current_riddle]
      # binding.pry
      expect(riddles.evaluate_answer(correct_answer)).to(eq(true))
      expect(riddles.evaluate_answer("incorrect")).to(eq(false))
    end
    it("is case, non-letter insensitive") do
      riddles = Riddles.new()
      riddles.select_random
      correct_answer = riddles.riddle_pool[riddles.current_riddle]
      expect(riddles.evaluate_answer(correct_answer.upcase + ".0%")).to(eq(true))
    end
    it("if the answer chosen by the user is correct, add +1 to win counter") do
      riddles = Riddles.new()
      riddles.select_random
      correct_answer = riddles.riddle_pool[riddles.current_riddle]
      riddles.evaluate_answer(correct_answer)
      expect(riddles.win_counter).to(eq(1))
    end
    it("if the answer chosen by the user is incorrect, add +1 to loss counter") do
      riddles = Riddles.new()
      riddles.select_random
      correct_answer = riddles.riddle_pool[riddles.current_riddle]
      riddles.evaluate_answer("Wrong answer")
      expect(riddles.loss_counter).to(eq(1))
    end
  end
end
