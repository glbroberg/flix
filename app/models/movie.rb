# == Schema Information
#
# Table name: movies
#
#  id          :integer          not null, primary key
#  description :text
#  rating      :string
#  released_on :date
#  title       :string
#  total_gross :decimal(, )
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Movie < ApplicationRecord
  def flop?
    total_gross.blank? || total_gross < 225_000_000
  end
end
