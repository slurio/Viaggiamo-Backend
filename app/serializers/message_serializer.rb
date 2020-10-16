class MessageSerializer < ActiveModel::Serializer
  attributes :id, :description
  belongs_to :category
end
