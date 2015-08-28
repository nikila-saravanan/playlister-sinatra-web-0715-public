module Slugifiable
  def slug
    "#{name.downcase.gsub(" ","-")}"
  end

  module ClassMethods
    def find_by_slug(slugged_name)
      self.all.each do |item|
        return item if item.slug == slugged_name
      end
    end
  end

  def self.included(base)
    base.extend(ClassMethods)
  end

end
