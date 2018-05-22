Rails.application.routes.draw do
  get "homes/index"
  root "homes#index"
  resources :teacher_cohorts
  resources :student_cohorts
  resources :students
  resources :teachers
  resources :courses
  resources :cohorts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
