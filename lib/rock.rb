class String
  define_method(:rock_score) do
    array_selection = ["rock", "paper", "scissors"]
    outcome =0
    user_1 = self
    user_2 = array_selection.sample()
    if user_1 == user_2
      outcome =1
    elsif (user_1 == "rock" and user_2 =="paper") || (user_1 == "paper" and user_2 == "scissors") || (user_1 == "scissors" and user_2 == "rock")
      outcome = 0
    else
      outcome = 2
    end
    outcome
  end
end
