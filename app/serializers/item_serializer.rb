class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :user_id, :list_id, :created_at

  def created_at
    object.created_at.strftime('%B %d, %Y')
  end
end
