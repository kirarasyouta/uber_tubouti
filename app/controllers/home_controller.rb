class HomeController < ApplicationController
    before_action :authenticate_user!  # ユーザー認証を強制

    def index
      # ホーム画面に必要なデータを準備
    end
end
