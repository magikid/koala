module Features
  def fill_in_new_post_form(post)
    fill_in 'Title', with: post.title
    fill_in 'URL', with: post.url
    fill_in 'Text', with: post.body
  end
end
