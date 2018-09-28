class Tweet < ActiveRecord::Base

    belongs_to :user
    # validates :text, length: { in: 1..6 }

end
