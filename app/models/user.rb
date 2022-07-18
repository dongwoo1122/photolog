class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :challenges

  validates :nickname, presence: true
  validates :skintype_id, numericality: { other_than: 1 , message: "肌タイプを選択してください"} 

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :skintype

  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i.freeze
  validates :password, format: { with: VALID_PASSWORD_REGEX } 
  
end
