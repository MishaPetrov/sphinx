require('rspec')
require('riddles')
require('pry')

describe('Riddles') do
  describe('#select_random') do
    it("selects random riddle from the pool") do
      riddles = Riddles.new()
      riddles.select_random
      expect(riddles.riddle_pool.key?(riddles.current_riddle)).to(eq(true))
    end
  end
  describe('#evaluate_answer') do
    it("evaluates if user response matches riddle answer") do
      riddles = Riddles.new()
      riddles.select_random
      correct_answer = riddles.riddle_pool[:current_riddle]
      expect(riddles.evaluate_answer(correct_answer)).to(eq(true))
      expect(riddles.evaluate_answer("incorrect")).to(eq(false))

    end
  end
end
