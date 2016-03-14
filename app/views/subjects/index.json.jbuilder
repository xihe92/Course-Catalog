json.array!(@subjects) do |subject|
  json.extract! subject, :id, :s_id, :s_name, :s_type, :s_abbr
  json.url subject_url(subject, format: :json)
end
