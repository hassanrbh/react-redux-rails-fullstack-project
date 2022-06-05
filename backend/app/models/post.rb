# == Schema Information
#
# Table name: posts
#
#  id         :bigint           not null, primary key
#  title      :string           not null
#  body       :string           not null
#  done       :boolean          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Post < ApplicationRecord
    validates :title, presence: true
    validates :body, presence: true
    validates :done, presence: true, inclusion: { in: [true, false] }
end
