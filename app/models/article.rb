class Article < ActiveRecord::Base
  has_many :comments, dependent: :destroy #dependent: :destroy для рекурсивного удаления (при удалении статьи удаляться и комментарии)
  validates :title, presence: true,
                    length: {minimum: 5}
end
