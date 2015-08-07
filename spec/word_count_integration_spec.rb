require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the word_count_path', {:type => :feature}) do
  it('searches the user entry and returns the number of times an inputted word was found') do
    visit('/')
    fill_in('sentence', :with => 'me myself and i')
    fill_in('word', :with => 'and')
    click_button('Search!')
    expect(page).to have_content("1")
  end
end
