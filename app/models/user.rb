# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  username               :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  name                   :string(255)
#  admin                  :boolean          default(FALSE), not null
#  created_at             :datetime
#  updated_at             :datetime
#  team_id                :integer          not null
#  avatar                 :string(255)
#

class User < ActiveRecord::Base
  devise :database_authenticatable, :rememberable, :trackable

  validates :username, presence: true, length: { minimum: 3 }
  validates :name, presence: true, length: { minimum: 3 }
  validates :password, presence: { on: :create}, length: { minimum: 5, on: :create }
  validate :correct_password_confirmation

  belongs_to :team

  protected
  def correct_password_confirmation
    return if self.password.nil? || self.password_confirmation.nil?
    if self.password != self.password_confirmation
      errors[:password_confirmation] = 'errors.user.password_confirmation.bad_match'
    end
  end
end
