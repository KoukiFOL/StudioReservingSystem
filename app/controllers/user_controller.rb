class UserController < ApplicationController
    def new
        @user = User.new(name:params[:name], 
                        number:params[:number],
                        birthday:params[:birthday],
                        password:params[:password])

        @userbase = User.find_by(number:params[:number])
        
        if @userbase
            @error = "この学生証番号はすでに登録済みです。"
            render("/user/signup")
        #elsif @user.number %10 != 0
            #@error ="学生証番号が正しいか確認してください。"
        elsif @user.save
            session[:number] = @user.number
           redirect_to("/")
        else
            @error = "内容が正しく記述されているか確認してください。"
            render("user/signup")
        end
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

    def edit
        @user = User.find_by(number: session[:number])
    end

    def update

    end
    def logout
        session[:number] = nil
        redirect_to("/login")
    end
end