json.array!(@enrollments) do |enrollment|
  json.extract! enrollment, :id, :u_id, :c_code, :c_name, :s_id
  json.url enrollment_url(enrollment, format: :json)
end
