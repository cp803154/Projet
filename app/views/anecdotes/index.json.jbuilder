json.array!(@anecdotes) do |anecdote|
  json.extract! anecdote, :id, :sujet, :texte, :themes, :chapitre_id
  json.url anecdote_url(anecdote, format: :json)
end
