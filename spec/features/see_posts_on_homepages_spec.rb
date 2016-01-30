require 'rails_helper'

RSpec.feature 'Guest visits homepage' do
  scenario 'sees list of recent posts' do
    post = create(:post)

    visit root_path

    expect(page).to have_content(post.title)
  end
end
