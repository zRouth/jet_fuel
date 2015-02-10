class Url < ActiveRecord::Base
  validates :full_url, presence: true

  def create_slug
    self.slug = SecureRandom.urlsafe_base64(4)
  end

end
