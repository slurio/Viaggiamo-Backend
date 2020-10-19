class LessonSerializer < ActiveModel::Serializer
  attributes :id, :question, :answer
end
