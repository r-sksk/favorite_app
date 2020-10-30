class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, presence: true
  has_many :recipes, dependent: :destroy
  has_many :favarites, dependent: :destroy

  def already_favarited?(recipe)
    self.favarites.exists?(recipe_id: recipe.id)
  end
end
