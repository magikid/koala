module Features
  def user_sees_error(text)
    expect(page).to have_css '.flash-error', text: text
  end
end
