class UserController < ApplicationController
    def new
        
    end
    def login
        @user = User.find_by(number:params[:number],
                             password:params[:password])
        if @user
            session[:number] = @user.number
            redirect_to("/")
        else
            @error = "学生証番号かパスワードが間違っています！"
            render("user/login_form")
        end
    end
end