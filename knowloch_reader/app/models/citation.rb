class Citation < ActiveRecord::Base
  attr_accessible :author, :year, :title, :journal, :volume, :pages, :abstract, :pdf
  has_attached_file :pdf,
                    :url => "/system/:attachment/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/system/:attachment/:id/:style/:basename.:extension"
  default_scope :order => 'citations.created_at DESC'  
  belongs_to :user  
  validates :user_id, :presence => true
  validates_attachment_presence :pdf
  validates_attachment_content_type :pdf, 
	                                  :content_type => ['application/pdf']
end
