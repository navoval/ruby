class Task < ActiveRecord::Base
  has_attached_file :image,
                    :styles => { small: "64x64>", med: "100x100>", large: "200x200>" },
                    :url => "/assets/images/:task/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/images/:task/:style/:basename.:extension"
end
