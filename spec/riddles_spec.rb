require('rspec')
require('riddles')
require('pry')

describe('Riddles') do
  describe('#select_random')
    it("selects random riddle from the pool") do
      riddles = Riddles.new()
      riddles.select_random
      expect(riddles.riddle_pool.key?(riddles.current_riddle)).to(eq(true))
    end
end
