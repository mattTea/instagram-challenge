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

```
User story 2: View all posts
----------------------------
As a user,
so that I can snoop on other users,
I want to be able to see all posted pictures.
```

#### Some refactoring of db tables

- `rails generate migration RemoveFilenameFromPictures filename:string`
- `rails generate migration RemoveContent_TypeFromPictures content_type:string`
- `rails generate migration RemoveDataFromPictures data:binary`
- `rails db:migrate`


```
User story 3: View individual post
----------------------------------
As a user,
so I can see a picture in all its glory, without clutter,
I want to be able to click through to view a post on its own separate page.
```

1. Link from timeline list page
2. Navigation back to list page


```
User story 4: Delete post
-------------------------
As a user,
so that I can ensure only my best pictures are posted,
I want to be able to delete posts I no longer want.
```

1. Add delete/destroy route
2. Add button to delete in individual picture page
3. Redirect to timeline


```
User story 5: Write comments
----------------------------
As a user,
so that I can let others know my opinion on their pictures,
I want to be able to write comments on posts.
```

1. Comments will `belong_to` a picture
2. A Picture may have many comments

- Run `rails generate model Comment author:string body:text picture:references`
- Run `rails db:migrate`

------

_Delivered to this point 28th April 2019_

------


```
User story 6: See number of comments on timeline
------------------------------------------------
As a user,
so that I measure the popularity of my pictures,
I want to be able to see the number of comments added in the timeline view.
```

```
User story 7: Like a picture
----------------------------
As a user,
so that I can let others know I appreciate a picture,
I want to be able to 'like' posts.
```

```
User story 8: Sign up
---------------------
As a users,
so that other users know who has posted a picture or made a comment,
I want to be able to sign up to insta-sham.
```

------

# Database

1. `Pictures` table

