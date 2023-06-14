class AdminController < ApplicationController
    def usercheck
        @users = User.all

    end

    def userset
        
    end

end
