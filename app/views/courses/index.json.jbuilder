json.array!(@courses) do |course|
  json.extract! course, :id, :c_id, :c_type, :c_code, :c_name
  json.url course_url(course, format: :json)
end
