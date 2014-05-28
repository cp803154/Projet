json.array!(@scenes) do |scene|
  json.extract! scene, :id, :texte, :lieu, :date, :chapitre_id
  json.url scene_url(scene, format: :json)
end
