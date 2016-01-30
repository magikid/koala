require 'rails_helper'

RSpec.feature 'Guest visits homepage' do
  scenario 'sees list of recent posts' do
    post = create(:post)

    visit root_path

    expect(page).to have_content(post.title)
  end

  scenario 'can submit a new story' do
    visit root_path

    expect(page).to have_link t("application.header.submit"),
      href: new_post_path
  end
end
