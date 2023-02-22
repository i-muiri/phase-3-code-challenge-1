class Article

    attr_reader :author, :magazine, :title
    
    @@all = []
    
        def initialize (author, magazine, title)
            @author = author
            @magazine =magazine
            @title = title
            @@all<< self
            author.articles << self
            magazine.articles << self
        end
    
        def title
            @title
        end
    
        def self.all
            @@all
        end
    
        def author
            @author.name
        end
    
        def magazine
            @magazine.name
        end
    
    end