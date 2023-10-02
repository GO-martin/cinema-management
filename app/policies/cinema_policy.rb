class CinemaPolicy < ApplicationPolicy
    attr_reader :user, :cinema

    def initialize(user, cinema)
        @user = user
        @cinema = cinema
    end

    def update?
        user.admin? 
    end
end