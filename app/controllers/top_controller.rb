class TopController < ApplicationController
    
    def index
    end
    def new

    end

    def create
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            redirect_to rpot_path, notice: 'ログインしました。'
        else
            flash.now[:alert] = 'ユーザー名またはパスワードが正しくありません。'
            render :new
        end
    end

    def destroy
        session[:user_id] = nil
        redirect_to root_path, notice: 'ログアウトしました。'
      end
end
