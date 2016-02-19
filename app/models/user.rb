class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, :confirmable

  # Validations
  validates_inclusion_of :gender, :in => %w(M F U), allow_nil: true, allow_blank: false
  validates :username, presence: true, uniqueness: true, allow_nil: false
end
