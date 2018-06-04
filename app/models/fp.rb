class Fp < ApplicationRecord
  has_secure_password
  validates :name, length: { maximum: 255 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
            format: { with: VALID_EMAIL_REGEX },
            uniqueness: true

  VALID_PASSWORD_REGEX = /\A[a-z\d]{8,100}+\z/i # 半角英数字8文字以上100文字以下
  validates :password_digest, presence: true,
  format: { with: VALID_PASSWORD_REGEX}

end
