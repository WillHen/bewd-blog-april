# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Delete all posts
Post.all.delete_all

#Create some seed posts
Post.create([
    {
      title:        "Hello World",
      author:       "Tim McDonald-Bell",
      publication:  "The Guardian",
      url:          "http://theguardian.com/uk/technology/",
      pull_quote:   "It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ",
      body:         "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
    }, 
    {
      title:        "Learning Ruby",
      author:       "Sam Billingham",
      publication:  "The Steer Blog",
      url:          "http://steer.me/blog",
      pull_quote:   "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
      body:         "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
    }, 
    {
    }, 
    {}
    ])
