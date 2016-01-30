class Post < ActiveRecord::Base
  before_validation :assign_short_code, on: :create

  private

  def assign_short_code
    self.short_code = SecureRandom.urlsafe_base64
  end
end
