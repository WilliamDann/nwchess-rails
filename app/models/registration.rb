class Registration < ApplicationRecord
    has_one :user
    has_one :event

    validates_presence_of :user_id
    validates_presence_of :event_id
    validates_presence_of :registrationType
end
