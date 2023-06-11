class AdminController < ApplicationController
    def usercheck
        @users = User.all
    end
end
