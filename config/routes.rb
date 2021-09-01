Rails.application.routes.draw do
  get 'sign_up/signup'
  post 'sign_up/newUser' => 'sign_up#newUser'
  get 'login/login'
  get 'calendar/calendar'
  get 'lectures/lectures'
  get 'discussion/discussion'
  get 'exams/exams'
  get 'assignments/assignments'
  get 'modules/modules'
  get 'annoucement/hello'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'assignment#admin'
  get '/assignment/student', to: "assignment#student"
  get '/assignment/feedback', to: "assignment#feedback"
  get '/assignment/admin' => 'assignment#admin'
  patch '/assignment/update' => 'assignment#update'
  get '/user/export_csv' => 'user#export_csv'
  post '/assignment/admin/(:id)' => 'assignment#admin'
  get '/assignment/admin/(:id)' => 'assignment#admin'
  resources :student_mark
  resources :assignment
  resources :course
  resources :user

end
