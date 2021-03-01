
# Question is simple math addition problem 
# states: number_one, number_two, answer 
# behaviour: 
# - A question is set with two numbers (1..20) and an answer taking the sum of the two
# - A question checks to see if the player's answer is correct or not

class Question 
  attr_reader :number_one, :number_two, :answer

  def initialize
    @number_one = rand(1..20)
    @number_two = rand(1..20)
    @answer = @number_one + @number_two
  end

  def answer?(answer)
    @answer.to_s == answer
  end
end