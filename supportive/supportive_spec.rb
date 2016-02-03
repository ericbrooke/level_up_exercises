require supportive

Rspec.describe BlagPost do

  @input = { "author"        => "Foo Bar",
             "author_url"    => "http://www.google.com",
             "categories"    => [:theory_of_computation, :languages, :gossip],
             "comments"      => [[], [], []], # because comments are meaningless, get it?
             "publish_date"  => "2013-02-10",
             "body"          => <<-ARTICLE
              Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec a diam lectus.
              Sed sit amet ipsum mauris. Maecenas congue ligula ac quam viverra nec consectetur ante hendrerit.
              Donec et mollis dolor. Praesent et diam eget libero egestas mattis sit amet vitae augue. Nam
              tincidunt congue enim, ut porta lorem lacinia consectetur. Donec ut libero sed arcu vehicula
              ultricies a non tortor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ut
              gravida lorem. Ut turpis felis, pulvinar a semper sed, adipiscing id dolor. Pellentesque auctor
              nisi id magna consequat sagittis. Curabitur dapibus enim sit amet elit pharetra tincidunt feugiat
              nisl imperdiet. Ut convallis libero in urna ultrices accumsan. Donec sed odio eros. Donec viverra
              mi quis quam pulvinar at malesuada arcu rhoncus. Cum sociis natoque penatibus et magnis dis
              parturient montes, nascetur ridiculus mus. In rutrum accumsan ultricies. Mauris vitae nisi at sem
              facilisis semper ac in est.
              ARTICLE
            }

  @output = "Categories: Theory Of Computation and Languages
By Foo Bar, at http://www.google.com
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec a diam lectus. Sed sit amet ipsum mauris. Maecenas congue ligula ac quam viverra nec consectetur ante hendrerit. Donec et mollis dolor. Pr...
You will be the 3rd commenter"

  describe "with @input expected output equals @output" do
    it "should output equal @output" do
      blag = BlagPost.new(@input)
      expect(blag.to_s).to eq @output
    end
  end
end
