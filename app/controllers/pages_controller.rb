class PagesController < ApplicationController
  def home
  end

  def download
    send_data RQRCode::QRCode.new(params[:content].to_s).as_png(size: 300), type: 'image/png', disposition: 'attachment'
  end
end
