json.array!(@mentors) do |mentor|
  json.extract! mentor, :id, :first_name, :last_name, :city, :state, :bio, :coach_type, :rating, :price_low, :price_high, :industry, :language, :certification, :skills, :experience, :email
  json.url mentor_url(mentor, format: :json)
end
