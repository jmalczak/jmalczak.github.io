namespace :write do

  desc "Start a new post"
  task :post, :title do |t, args|
   args.with_defaults(:title => 'My New Post')
   title = args.title
   filename = "_posts/#{Time.now.strftime('%Y-%m-%d')}-#{title.downcase.gsub(/&/,'and').gsub(/[,'":\?!\(\)\[\]]/,'').gsub(/[\W\.]/, '-').gsub(/-+$/,'')}.md"
   puts "Creating new post: #{filename}"
   open(filename, 'w') do |post|
     post.puts "---"
     post.puts "layout: post"
     post.puts "title: \"#{title.gsub(/&/,'&amp;')}\""
     post.puts "description: "
     post.puts "headline: "
     post.puts "modified: #{Time.now.strftime('%Y-%m-%d %H:%M:%S %z')}"
     post.puts "category: personal"
     post.puts "tags: []"
     post.puts "imagefeature: "
     post.puts "mathjax: "
     post.puts "chart: "
     post.puts "comments: true"
     post.puts "featured: false"
     post.puts "---"
   end
  end

  desc "Start a new page"
  task :page, :title do |t, args|
   args.with_defaults(:title => 'My New page')
   title = args.title
   filename = "#{title.downcase.gsub(/&/,'and').gsub(/[,'":\?!\(\)\[\]]/,'').gsub(/[\W\.]/, '-').gsub(/-+$/,'')}.md"
   puts "Creating new page: #{filename}"
   open(filename, 'w') do |post|
     post.puts "---"
     post.puts "layout: page"
     post.puts "permalink: #{title.downcase.gsub(/&/,'and').gsub(/[,'":\?!\(\)\[\]]/,'').gsub(/[\W\.]/, '-').gsub(/-+$/,'')}/index.html"
     post.puts "title: \"#{title.gsub(/&/,'&amp;')}\""
     post.puts "description: "
     post.puts "headline: "
     post.puts "modified: #{Time.now.strftime('%Y-%m-%d %H:%M:%S %z')}"
     post.puts "tags: []"
     post.puts "imagefeature: "
     post.puts "mathjax: "
     post.puts "chart: "
     post.puts "comments: true"
     post.puts "---"
   end
  end

end