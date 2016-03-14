json.array!(@instructors) do |instructor|
  json.extract! instructor, :id, :i_id, :i_email, :i_first, :i_middle, :i_last, :i_type
  json.url instructor_url(instructor, format: :json)
end
