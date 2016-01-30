require 'rails_helper'

RSpec.describe Post, ".generate_short_code" do
  it "Generates a unique short code for the post" do
    #exercise
    post = create(:post)

    #verify
    expect(post.short_code).not_to be_empty
  end
end
