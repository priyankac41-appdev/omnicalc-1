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

def blank_payment_form
  render({:template => "calculation_templates/payment_form.html.erb"})
end

def calculate_payment
  @apr = params.fetch("apr").to_f.round(4)
  @years = params.fetch("years").to_f
  @principal = params.fetch("principal").to_f
  payment_num = @apr/100/12 * @principal
  payment_denom = 1 - (1+@apr/100/12)**(-@years*12)
  @payment = payment_num / payment_denom
  render({:template => "calculation_templates/payment_form_results.html.erb"})
end

def blank_random_form
  render({:template => "calculation_templates/random_form.html.erb"})
end

def calculate_random
  @min = params.fetch("min").to_f
  @max = params.fetch("max").to_f
  @random_value = rand(@min..@max)
  render({:template => "calculation_templates/random_results.html.erb"})
end


end
