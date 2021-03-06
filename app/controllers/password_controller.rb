class PasswordController < ApplicationController
  def forgot
    user = User.find_by(email_params)
    byebug
   if user
     render json: {
       alert: "If this user exists, we have sent you a password reset email."
     }
     user.send_password_reset
   else
     #this sends regardless of whether there's an email in database for security reasons
     render json: {
       alert: "If this user exists, we have sent you a password reset email."
     }
   end
 end

 def reset
  user = User.find_by(token_params)
  password = params[:user][:password]
  password_confirmation = params[:user][:password_confirmation]

   if (user.present? && user.password_token_valid?) && (password == password_confirmation)
     if user.reset_password(password)
       render json: {
         alert: "Your password has been successfuly reset!"
       }
      #  session[:user_id] = user.id
     else
       render json: { error: user.errors.full_messages }, status: :unprocessable_entity
     end
   else
     render json: {error:  ['Link not valid or expired. Try generating a new link.']}, status: :not_found
   end
 end

 private
 def email_params
  params.require(:user).permit(:email)
 end

 def token_params 
  params.require(:user).permit(:password_reset_token, :email)
 end

 def password_params
  params.require(:user).permit(:password, :password_confirmation)
 end

end
