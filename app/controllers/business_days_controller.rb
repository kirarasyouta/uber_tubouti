class BusinessDaysController < ApplicationController
    # 営業日/非営業日データを取得
    def get_business_days
      business_days = BusinessDay.all.index_by(&:date)
      render json: business_days.transform_values { |bd| bd.status }
    end
  
    # 営業日/非営業日の保存
    def save_business_day
      business_day = BusinessDay.find_or_initialize_by(date: params[:date])
      business_day.status = params[:status]
      business_day.save
      head :ok
    end
  end
  