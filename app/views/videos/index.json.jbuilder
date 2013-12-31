json.array!(@videos) do |video|
  json.extract! video, :id, :vimeoid, :title, :description, :duration, :visualization
  json.url video_url(video, format: :json)
end
