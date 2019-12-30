class User < ApplicationRecord
  enum role: {buyer: 0, admin: 1, master: 2}
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :validatable

  belongs_to :supplier

  protected
  def password_required?
    confirmed? ? super : false
  end  
end
