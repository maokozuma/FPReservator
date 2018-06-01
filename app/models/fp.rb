class Fp < ApplicationRecord
  has_secure_password
  validates :name, length: { maximum: 255 }
end
