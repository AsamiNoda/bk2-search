class Book < ApplicationRecord
	belongs_to :user
	validates :title, presence: true
	validates :body ,presence: true, length: {maximum: 200}

  # def self.search(search) #ここでのself.はUser.を意味する
  #   if search
  #     where(['title LIKE ?', "%#{search}%"]) #検索とnameの部分一致を表示。User.は省略
  #   else
  #     all #全て表示。User.は省略
  #   end
  # end
end