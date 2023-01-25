Rails.application.routes.draw do

  # get("", {:controller => "", :action => ""})
  # this controller is pre-made from rails and is out of the box and comes loaded as applicaion_controller.rb
  # job is to show the user the form when they want to do the square
  get("/square/new", {:controller => "application", :action => "blank_square_form"})
  get("/square/results", {:controller => "application", :action => "calculate_square"})
  # get("", {:controller => "", :action => ""})

end
