require('rspec')
require('./app')
require('capybara/rspec')
require('rock')
Capybara.app = Sinatra::Application
set(:show_excpetions, false)

describe('the rock papers scissors path', {:type => :feature}) do
  it ("processes the user entry and returns the game outcome") do
    visit('/')
     select('Rock', :from => 'user_choice')
     click_button('Play')
    expect(page).to have_content("You lose")
  end
  it ("processes the user entry and returns the game outcome") do
    visit('/')
     select('Rock', :from => 'user_choice')
     click_button('Play')
    expect(page).to have_content("It's a tie")
  end
  it ("processes the user entry and returns the game outcome") do
    visit('/')
     select('Rock', :from => 'user_choice')
     click_button('Play')
    expect(page).to have_content("You win")
  end
end

# describe('String#rock_score') do
#   it ('displays the users choice') do
#     expect("rock".rock_score()).to(be_between(0, 2))
#     expect("paper".rock_score()).to(be_between(0, 2))
#     expect("scissors".rock_score()).to(be_between(0, 2))
#   end
# end
