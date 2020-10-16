class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :bio, :categories

  def categories
    ActiveModel::SerializableResource.new(object.categories,  each_serializer: CategorySerializer)
  end

end
