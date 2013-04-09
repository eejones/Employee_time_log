module EmployeesHelper
  # Returns the Gravatar (http://gravatar.com/) for the given employee.
  def gravatar_for(employee, options = {:size=>50})
    gravatar_id = Digest::MD5::hexdigest(employee.email.downcase)
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, :alt=> employee.name, :class=> "gravatar")
  end

end
