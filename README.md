This is a simple implementation of 'sns' using rubyonrails.

There is a basic 'sns' function implemented here.
sign in, sign up, sign out, write comments, posting post, post like, follow, upload image.






Controllers

app/controllers/application_controller.rb
  sign up, account update [:name(user_name), :avatar(user_profile_picture)]
 
app/controllers/posts_controller.rb
  write posts(check authorization before) with image
  delete posts(check authorization before) with image
  edit posts(check authorization before) with image
  (current_user.id, params[:content], params[:image])
  If users succeed posting, act redirect to  root_path
  
app/controllers/comments_controller.rb
  write comments(check authorization before)
  (params[:content], params[:post_id], current_user.id)
  delete comments(check authorization before)
  If comments succeed writing, act redirect to  root_path
  
app/controllers/follows_controller.rb
  It's like 'follow' in twitter,instagram and so on.
  follow users(check authorization before)
  unfollow users(check authorization before)
  (params[:followed_id],follower_id: current_user.id)
  If users succeed following, act redirect to  root_path
  
app/controllers/likes_controller.rb
  It's like 'like' in facebook
  like user's posts(check authorization before)
  unlike user's posts(check authorization before
  (current_user.id, params[:post_id])
  If users succeed 'like', act redirect to  root_path
  
Uploaders

  Using S3 Uploaders.
  I had tried to using S3 service in AWS, but i didn't have ability to pay. So I tested 1~2 times and shut down my AWS account.

Views

app/views/devise/sessions/new.html.erb
  If you enter to my 'sns' that i implemented , you can see this page first.
  This page is 'sign in' page.
  
app/views/layouts/application.html.erb
  This is basic structure my 'sns'
  using materialize(Reactive structure)

app/views/posts/_post.html.erb
  If you success to sign in, you can see this page
  Left side is user's information that sign in now.(profile_picture, count comments,posts,following users and so on)
  Right side is timeline like facebook. write comments, posts, using function like','follow'. And you can see all users posts.
  
app/views/posts/edit.html.erb
  Edit posts page.

app/views/posts/new.html.erb
  posting new posts page.
