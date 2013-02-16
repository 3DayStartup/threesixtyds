         $$$$$$\   $$$$$$\   $$$$$$\  $$$$$$$\   $$$$$$\         $$$$$$\  $$$$$$$\ $$$$$$\ 
        $$ ___$$\ $$  __$$\ $$$ __$$\ $$  __$$\ $$  __$$\       $$  __$$\ $$  __$$\\_$$  _|
        \_/   $$ |$$ /  \__|$$$$\ $$ |$$ |  $$ |$$ /  \__|      $$ /  $$ |$$ |  $$ | $$ |  
          $$$$$ / $$$$$$$\  $$\$$\$$ |$$ |  $$ |\$$$$$$\        $$$$$$$$ |$$$$$$$  | $$ |  
          \___$$\ $$  __$$\ $$ \$$$$ |$$ |  $$ | \____$$\       $$  __$$ |$$  ____/  $$ |  
        $$\   $$ |$$ /  $$ |$$ |\$$$ |$$ |  $$ |$$\   $$ |      $$ |  $$ |$$ |       $$ |  
        \$$$$$$  | $$$$$$  |\$$$$$$  /$$$$$$$  |\$$$$$$  |      $$ |  $$ |$$ |     $$$$$$\ 
         \______/  \______/  \______/ \_______/  \______/       \__|  \__|\__|     \______|
                                                                                           
                                                                                           
                                                                                     


## All available routes

            new_user_session GET    /users/sign_in(.:format)       devise/sessions#new
                user_session POST   /users/sign_in(.:format)       devise/sessions#create
        destroy_user_session DELETE /users/sign_out(.:format)      devise/sessions#destroy
               user_password POST   /users/password(.:format)      devise/passwords#create
           new_user_password GET    /users/password/new(.:format)  devise/passwords#new
          edit_user_password GET    /users/password/edit(.:format) devise/passwords#edit
                             PUT    /users/password(.:format)      devise/passwords#update
    cancel_user_registration GET    /users/cancel(.:format)        devise/registrations#cancel
           user_registration POST   /users(.:format)               devise/registrations#create
       new_user_registration GET    /users/sign_up(.:format)       devise/registrations#new
      edit_user_registration GET    /users/edit(.:format)          devise/registrations#edit
                             PUT    /users(.:format)               devise/registrations#update
                             DELETE /users(.:format)               devise/registrations#destroy
                       users GET    /users(.:format)               users#index
                             POST   /users(.:format)               users#create
                    new_user GET    /users/new(.:format)           users#new
                   edit_user GET    /users/:id/edit(.:format)      users#edit
                        user GET    /users/:id(.:format)           users#show
                             PUT    /users/:id(.:format)           users#update
                             DELETE /users/:id(.:format)           users#destroy
                        root        /                              users#index

# User

## create
POST `/users.json`

### params

    {
      "user": {
        "first_name":"Dirty Harry",
        "profile_picture": "http://placehold.it/180x180",
        "email":"bro@freeemail.net",
        "flied_of_study":"Computer Science",
        "degree_program":"BS",
        "3ds_role":"Developer",
        "university":"UT Austin",
        "3ds_month":"06",
        "3ds_year":"2013",
        "linkedin":"http://www.linkedin.com/in/dirtyharry/",
        "twitter":"@vincentglad",
        "portfolio":"thebest.com",
        "3ds_team":"3 Day Startup",
        "company":"3 Day Startup"
      }
    }

### response

    {
      "user": {
        "id":1
        "first_name":"Dirty Harry",
        "profile_picture": "http://placehold.it/180x180",
        "email":"bro@freeemail.net",
        "flied_of_study":"Computer Science",
        "degree_program":"BS",
        "3ds_role":"Developer",
        "university":"UT Austin",
        "3ds_month":"06",
        "3ds_year":"2013",
        "linkedin":"http://www.linkedin.com/in/dirtyharry/",
        "twitter":"@vincentglad",
        "portfolio":"thebest.com",
        "3ds_team":"3 Day Startup",
        "company":"3 Day Startup"
        "created_at":"20120301123"
      }
    }

## show
GET `/users/:id.json`

#### params

    {
      "id":1
    }

### response

    {
      "user": {
        "id":1
        "first_name":"Dirty Harry",
        "profile_picture": "http://placehold.it/180x180",
        "email":"bro@freeemail.net",
        "flied_of_study":"Computer Science",
        "degree_program":"BS",
        "3ds_role":"Developer",
        "university":"UT Austin",
        "3ds_month":"06",
        "3ds_year":"2013",
        "linkedin":"http://www.linkedin.com/in/dirtyharry/",
        "twitter":"@vincentglad",
        "portfolio":"thebest.com",
        "3ds_team":"3 Day Startup",
        "company":"3 Day Startup"
        "created_at":"20120301123"
      }
    }

## Sign In
GET `/users/sign_in.json`

#### params

    {
      "email":"test@test.net"
      "password":"password"
    }

### response

    {
      "auth_token":"ABCDE0123456789"
      "user": {
        "id":1
        "first_name":"Dirty Harry",
        "profile_picture": "http://placehold.it/180x180",
        "email":"bro@freeemail.net",
        "flied_of_study":"Computer Science",
        "degree_program":"BS",
        "3ds_role":"Developer",
        "university":"UT Austin",
        "3ds_month":"06",
        "3ds_year":"2013",
        "linkedin":"http://www.linkedin.com/in/dirtyharry/",
        "twitter":"@vincentglad",
        "portfolio":"thebest.com",
        "3ds_team":"3 Day Startup",
        "company":"3 Day Startup"
        "created_at":"20120301123"
      }
    }
## edit
GET `/users/:id/edit.json&auth_token=ABCDE0123456789`

### params

auth_token

### response

    {
      "user": {
        "id":1
        "first_name":"Dirty Harry",
        "profile_picture": "http://placehold.it/180x180",
        "email":"bro@freeemail.net",
        "flied_of_study":"Computer Science",
        "degree_program":"BS",
        "3ds_role":"Developer",
        "university":"UT Austin",
        "3ds_month":"06",
        "3ds_year":"2013",
        "linkedin":"http://www.linkedin.com/in/dirtyharry/",
        "twitter":"@vincentglad",
        "portfolio":"thebest.com",
        "3ds_team":"3 Day Startup",
        "company":"3 Day Startup"
        "created_at":"20120301123"
      }
    }


## update
PUT `/users/:id.json&auth_token=ABCDE0123456789`

### params

auth_token

### response

    {
      "user": {
        "id":1
        "first_name":"Dirty Harry",
        "profile_picture": "http://placehold.it/180x180",
        "email":"bro@freeemail.net",
        "flied_of_study":"Computer Science",
        "degree_program":"BS",
        "3ds_role":"Developer",
        "university":"UT Austin",
        "3ds_month":"06",
        "3ds_year":"2013",
        "linkedin":"http://www.linkedin.com/in/dirtyharry/",
        "twitter":"@vincentglad",
        "portfolio":"thebest.com",
        "3ds_team":"3 Day Startup",
        "company":"3 Day Startup"
        "created_at":"20120301123"
      }
    }


## destroy
DELETE `/users/:id.json&auth_token=ABCDE0123456789`

### params

auth_token

### response

    { OK }


## index
Get a list of users (for admins only)
GET `/users.json&auth_token=ABCDE0123456789`

### params

auth_token

### response

    {
      "users": [
        {
          "id":1
          "first_name":"Dirty Harry",
          "profile_picture": "http://placehold.it/180x180",
          "email":"bro@freeemail.net",
          "flied_of_study":"Computer Science",
          "degree_program":"BS",
          "3ds_role":"Developer",
          "university":"UT Austin",
          "3ds_month":"06",
          "3ds_year":"2013",
          "linkedin":"http://www.linkedin.com/in/dirtyharry/",
          "twitter":"@vincentglad",
          "portfolio":"thebest.com",
          "3ds_team":"3 Day Startup",
          "company":"3 Day Startup"
          "created_at":"20120301123"
        },
        {
          "id":2
          "name":"Steve Martin"
          "email":"sm@freeemail.net"
          "picture": "http://placehold.it/180x180",
          "flied_of_study":"Computer Science",
          "degree_program":"BS",
          "3ds_role":"Developer",
          "university":"UT Austin",
          "3ds_month":"06",
          "3ds_year":"2013",
          "linkedin":"http://www.linkedin.com/in/dirtyharry/",
          "twitter":"@vincentglad",
          "3ds_team":"3 Day Startup",
          "company":"3 Day Startup"
          "portfolio":"awwwwcats.net"
          "created_at":"20120301124"
        },
        etc
      ]
    }

