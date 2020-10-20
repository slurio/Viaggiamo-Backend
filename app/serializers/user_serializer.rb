class UserSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  attributes :id, :username, :bio, :spanish, :french, :german, :italian, :categories, :avatar_url

  def categories
    ActiveModelSerializers::SerializableResource.new(object.categories,  each_serializer: CategorySerializer)
  end

  def avatar_url
    return 'http://localhost:3001' + rails_blob_path(object.avatar, only_path: true) if object&.avatar&.attached?
  end

end
