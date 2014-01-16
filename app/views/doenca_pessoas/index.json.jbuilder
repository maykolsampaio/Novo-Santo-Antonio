json.array!(@doenca_pessoas) do |doenca_pessoa|
  json.extract! doenca_pessoa, :data, :observacao
  json.url doenca_pessoa_url(doenca_pessoa, format: :json)
end
