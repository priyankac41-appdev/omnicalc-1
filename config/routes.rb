Rails.application.routes.draw do

  # get("", {:controller => "", :action => ""})
  # this controller is pre-made from rails and is out of the box and comes loaded as applicaion_controller.rb
  # job is to show the user the form when they want to do the square
  get("/square/new", {:controller => "application", :action => "blank_square_form"})
  get("/square/results", {:controller => "application", :action => "calculate_square"})
  get("/square_root/new", {:controller => "application", :action => "blank_square_root_form"})
  get("/square_root/results", {:controller => "application", :action => "calculate_square_root"})
  get("/payment/new", {:controller => "application", :action => "blank_payment_form"})
  get("/payment/results", {:controller => "application", :action => "calculate_payment"})
  get("/random/new", {:controller => "application", :action => "blank_random_form"})
  get("/random/results", {:controller => "application", :action => "calculate_random"})

end
