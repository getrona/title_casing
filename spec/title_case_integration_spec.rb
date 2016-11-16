require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('from tile to proper casing', {:type => :feature  }) do
  it('will take title and capitalize it accordingly') do
    visit('/')
    fill_in('casing', :with => 'hello' )
    click_button('send')
    expect(page).to have_content ('Hello')
  end
end
