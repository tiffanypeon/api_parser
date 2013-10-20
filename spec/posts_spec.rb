require_relative './spec_helper.rb'

describe Post do 

  context "database operations" do
    before(:each) do
      @post = Post.new.tap { |s| s.title = "Cat Gifs FTW" ; s.link = "CATZ.com"; s.upvotes = 5; 
        s.downvotes = 1; s.img = "www.catz.jpg" }
    end

  it "can initialize a new post" do 
    @post.should be_a(Post)
    end 

  it "can have a title" do 
    @post.title.should eq("Cat Gifs FTW")
    end

  it "can have an associated link" do 
    @post.link.should eq("CATZ.com")
    end

  it "keeps track of upvotes" do 
    @post.upvotes.should eq(5)
    end

  it "keeps track of downvotes" do 
    @post.downvotes.should eq(1)
    end

  it "holds the image link" do 
    @post.img.should eq("www.catz.jpg")
    end



  
  end
end