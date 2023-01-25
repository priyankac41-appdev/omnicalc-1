class ApplicationController < ActionController::Base

def blank_square_form
  render({:template => "calculation_templates/square_form.html.erb"})
end

def calculate_square
  @num = params.fetch("value_to_square").to_f
  @square_of_num = @num ** 2
  render({:template => "calculation_templates/square_results.html.erb"})
end

def blank_square_root_form
  render({:template => "calculation_templates/square_root_form.html.erb"})
end

def calculate_square_root
  @num = params.fetch("value_to_square_root").to_f
  @sqrt_of_num = Math.sqrt(@num)
  render({:template => "calculation_templates/square_root_results.html.erb"})
end

end
