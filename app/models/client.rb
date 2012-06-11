class Client < ActiveRecord::Base
  belongs_to :province
  belongs_to :country
  belongs_to :clientcategory
end
