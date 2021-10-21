
   
class UserSerializer 
 def initialize(user_object)
  @user = user_object
 end

 def to_serialized_json
  # method to get all movies interacted with from user
  byebug
  @user.to_json(:only => [:first_name, :last_name, :phone_no, :email], :include => {:marketing_campaigns => {:only => [:description, :name, :type, :final_price], :include => {:contact_lists => {:include => {:prospects => {:only => [:first_name, :last_name, :email, :status, :type, :phone_no]}}}}}})
 end

 def user_movies_serialized_json
   # method to get the last three movies interacted with by user
  @user.to_json(only: [:uuid],
    include: {likes: { include: {movie: {only: [:title, :up_count, :down_count, :query]}}}, dislikes: {include: {movie: {only:[:title, :up_count, :down_count, :query]}}
    }}
  )
 end


end