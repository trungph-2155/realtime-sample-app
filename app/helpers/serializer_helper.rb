module SerializerHelper
  def serializer_data model, data, params = nil
    params.present? ? model.new(data, params).serializable_hash : model.new(data).serializable_hash
  end
end
