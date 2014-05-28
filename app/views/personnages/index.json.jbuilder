json.array!(@personnages) do |personnage|
  json.extract! personnage, :id, :nom, :prenom, :age
  json.url personnage_url(personnage, format: :json)
end
