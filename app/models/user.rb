class User < ApplicationRecord
  # validates :name, presence: trueでもOK
  validates :name,{presence: true}
  validates :email,{presence: true}
end
