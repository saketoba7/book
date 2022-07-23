class Reservation < ApplicationRecord
    belongs_to :post
    belongs_to :user

    validates :start_date, presence:true
    validates :end_date, presence: true
    validates :number, presence: true

   
end
