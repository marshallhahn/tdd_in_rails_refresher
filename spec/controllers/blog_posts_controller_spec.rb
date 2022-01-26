require 'rails_helper'

describe BlogPostsController do
    describe '#new' do
        it 'returns a blog post' do
            blog_post = instance_double(BlogPost)
            expect(BlogPost).to receive(:new).and_return(blog_post)
            get :new
            expect(assigns[:blog_post]).to eq(blog_post)
        end
    end
end