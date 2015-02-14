module ApplicationHelper
  def title(value)
    unless value.nil?
      @title = "#{value} | CampnightUserEngine"
    end
  end
end
