class UserSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  attributes :id, :username, :bio, :categories, :avatar_url

  def categories
    ActiveModel::SerializableResource.new(object.categories,  each_serializer: CategorySerializer)
  end

  def avatar_url
    return 'http://localhost:3001' + rails_blob_path(object.avatar, only_path: true) if object&.avatar&.attached?
  end

end
