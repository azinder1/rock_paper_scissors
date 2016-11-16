class String
  define_method(:rock_score) do
    array_selection = ["rock", "paper", "scissors"]
    possible_outcomes = ["You lose", "It's a tie", "You win"]
    # user_2.call()
    user_1 = self
    user_2 = Proc.new {
      array_selection.sample()
    }
    outcome_test = Proc.new { |user_1, user_2|
    if user_1 == user_2
      outcome =1
    elsif (user_1 == "rock" and user_2 =="paper") || (user_1 == "paper" and user_2 == "scissors") || (user_1 == "scissors" and user_2 == "rock")
      outcome = 0
    else
      outcome = 2
    end
  }
    outcome = possible_outcomes[outcome_test.call(user_1, user_2.call())]
  end
end
