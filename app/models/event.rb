class Event < ApplicationRecord
	belongs_to :group
	has_many :entries
	has_many :users, through: :entries

	validates :name,length:{in: 20..100}
	validates :place,presence:true
	validates :description,length:{in: 50..200}
	validates :group_id,presence:true
	validates :price,presence:true
	validates :start_time,presence:true
	validates :end_time,presence:true
	validates :dead_line,presence:true
	validates :release,presence:true
	validates :accepted,presence:true
	validates :accepted_number,presence:true

end
