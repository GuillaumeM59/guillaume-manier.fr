class StaticPagesController < ApplicationController

  def home
  end
  def getcv

    #format.pdf do
    if File.exist?("#{Rails.root}/public/Guillaume_MANIER_CV.pdf")
    File.delete("#{Rails.root}/public/Guillaume_MANIER_CV.pdf")
    end
    render :pdf => "Guillaume_MANIER_CV",
     :template => 'static_pages/_pcv.html.erb',
     :save_to_file => Rails.root.join('public', "Guillaume_MANIER_CV.pdf"),
     :save_only    => true

    send_file "#{Rails.root}/public/Guillaume_MANIER_CV.pdf", :type=>"application/pdf", :x_sendfile=>true
  end

end
