class ApplicationController < ActionController::Base
    before_action :set_current_user
    before_action :forbid_login_user,{only:[:login]}
    def manager
        @manager=User.find_by(admin:"0")
    end
    def set_current_user
        @current_user=User.find_by(number: session[:number])
    end

    def forbid_login_user
        if @current_user
            @error = "すでにログインされています。"
            redirect_to("/")
        end

    end
end