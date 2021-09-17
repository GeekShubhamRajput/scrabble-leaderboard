class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable, :lockable,
         :recoverable, :rememberable, :validatable

  validates :first_name, :last_name, presence: true
  validates :mobile_number, numericality: { only_integer: true }, allow_blank: true
  validates :mobile_number, length: { is: 10 }, allow_blank: true

  has_many :participants, dependent: :destroy

  def full_name
    "#{first_name} #{last_name}".strip || email
  end
         
end
