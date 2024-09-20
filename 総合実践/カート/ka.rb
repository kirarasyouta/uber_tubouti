# app/controllers/cart_controller.rb
class CartController < ApplicationController
    def index
      @cart_items = CartItem.all # ここでカート内のアイテムを取得
      @total = @cart_items.sum(&:subtotal) # 合計金額を計算
    end
  
    def confirm
      # 注文確定のロジック
      redirect_to root_path, notice: '注文が確定しました！'
    end
  
    def cancel
      # 注文キャンセルのロジック
      redirect_to root_path, alert: '注文がキャンセルされました。'
    end
  end
# config/routes.rb
Rails.application.routes.draw do
    root 'cart#index'
    
    get 'cart', to: 'cart#index'
    post 'cart/confirm', to: 'cart#confirm', as: 'confirm_order'
    post 'cart/cancel', to: 'cart#cancel', as: 'cancel_order'
  end
# app/models/cart_item.rb
class CartItem < ApplicationRecord
    # 必要なアソシエーションやバリデーションを追加
    # 例:
    # belongs_to :user
    # validates :name, :price, :quantity, presence: true
  
    def subtotal
      price * quantity
    end
  end
  