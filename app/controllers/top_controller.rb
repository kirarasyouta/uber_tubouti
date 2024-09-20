class TopController < ApplicationController
    def hinagata
    end
    def karennda
    end
    def kannseituti
    end
    def tyuumonnruikei
    end
    def toiawasekakunin
        @inquiries = Inquiry.all
        @selected_inquiry = Inquiry.find(params[:id]) if params[:id].present?
    end
end
