class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :name, :email, :tradr_points
end
