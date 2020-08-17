class Group < ApplicationRecord
<<<<<<< Updated upstream
  has_many :groups_users
  has_many :users, through: :groups_users
  has_many :messages
  validates :name, presence: true, uniqueness: true

  def show_last_message
    if (last_message = messages.last).present?
      if last_message.content?
        last_message.content
      else
        '画像が投稿されています'
      end
    else
      'まだメッセージはありません。'
    end
  end
=======
  has_many :group_users
  has_many :users, through: :group_users
  validates :name, presence: true, uniqueness: true
>>>>>>> Stashed changes
end
