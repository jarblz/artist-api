class User < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable,
          :confirmable, :omniauthable, omniauth_providers: [:google_oauth2]

  def self.from_omniauth(details)
    u = User.find_or_initialize_by(
      email: details['info']['email']
    )
    u.first_name = details['info']['first_name']
    u.last_name = details['info']['last_name']

    u.password = SecureRandom.urlsafe_base64
    u.skip_confirmation!
    u.save
    return u
  end
end
