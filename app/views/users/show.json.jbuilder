json.id @user.id
json.username @user.username
json.avatar @user.avatar
json.reviews do
  json.array! @user.reviews do |review|
    json.movie review.movie, :title, :id, :release_date, :popularity, :tmdb_id, :poster
    json.comment review.comment
  end
end
