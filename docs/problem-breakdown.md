# Setup

[Setup rails](https://guides.rubyonrails.org/getting_started.html)

1. `rails new instagram-challenge` -> to set up framework files and gems

2. `rails server` -> to run server to test infra working (view it at http://localhost:3000/)

3. `rails generate controller Welcome index` -> to create the index controller and view

4. Added welcome text into `app/views/welcome/index.html.erb`

5. Change `config/routes.rb` to show the welcome index view as the homepage

6. (For some reason I needed to change `node` version to run this -> `nvm use default`)

------

# Requirements

Build Instagram using Rails.

- You'll need **users**
- who can post **pictures**,
- write **comments** on pictures, and
- **like** a picture

Style it like Instagram's website (or more awesome)


## User stories

```
User story 1: Post pictures
---------------------------
As a user,
so that I can share my life,
I want to be able to post pictures to insta-sham.
```

[Useful SO post](https://stackoverflow.com/questions/14174044/uploading-a-file-in-rails)

1. Install and use `ActiveStorage` (after some unsuccessful attempts not using a gem for this)
2. Part 2 - add an index to view all posts

```
User story 2: Write comments
----------------------------
As a user,
so that I can let others know my opinion on their pictures,
I want to be able to write comments on posts.
```

```
User story 3: Like a picture
----------------------------
As a user,
so that I can let others know I appreciate a picture,
I want to be able to 'like' posts.
```

```
User story 4: Sign up
---------------------
As a users,
so that other users know who has posted a picture or made a comment,
I want to be able to sign up to insta-sham.
```

------

# Database

1. `Pictures` table

