class MessageSerializer < ActiveModel::Serializer
  attributes :id, :description, :language, :content, :voice
  belongs_to :category
end
