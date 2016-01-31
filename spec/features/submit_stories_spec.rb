require 'rails_helper'

RSpec.feature "User submits a story" do
  scenario "while logged out" do
    post = create(:post)

    visit new_post_path

    fill_in_new_post_form(post)
    click_button "Submit Post"
    user_sees_error t("posts.create.logged_in_error")
  end
end
