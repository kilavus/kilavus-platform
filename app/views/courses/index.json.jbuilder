json.array!(@courses) do |course|
  json.extract! course, :id, :name, :instructor, :description, :units, :duration
  json.url course_url(course, format: :json)
end
