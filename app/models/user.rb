class User < ApplicationRecord
    has_secure_password

    has_many :registration

    # email validation
    validates :email, presence: true, uniqueness: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: 'Invalid email' }
end
