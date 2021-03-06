module Spree
  Product.class_eval do
    delegate_belongs_to :master, :sale_price
    has_attached_file :video
    validates_attachment_content_type :video, :content_type => /\Avideo\/.*\Z/
  end
end