require('rspec')
require('./app')
require('capybara/rspec')
require('rock')
Capybara.app = Sinatra::Application
set(:show_excpetions, false)

describe('String#rock_score') do
  it ('displays the users choice') do
    expect("rock".rock_score()).to(be_between(0, 2))
    expect("paper".rock_score()).to(be_between(0, 2))
    expect("scissors".rock_score()).to(be_between(0, 2))
  end
end
