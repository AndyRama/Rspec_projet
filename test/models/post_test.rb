require "test_helper"

class PostTest < ActiveSupport::TestCase

  context "comment association" do
    it 'should increment comments_count' do
      post = Post.new(name: 'First test')
      post.comments << Comment.new(content:'demo')
      post.save
      expect(Comment.count).to eq(1)
      expect(post.comments_count).to eq(1)
    end
  end
    
  end
  
  it 'should persist a post' do
    Post.create(name: 'First test')
    expect(Post.count).to eq(2)
  end
end