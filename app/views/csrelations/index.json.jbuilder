json.array!(@csrelations) do |csrelation|
  json.extract! csrelation, :id, :c_code, :s_id, :c_name
  json.url csrelation_url(csrelation, format: :json)
end
