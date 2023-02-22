class Magazine

    attr_accessor :name, :category, :articles
    
    @@all = []
    
        def initialize(name, category)
            @name = name
            @category = category
            @@all << self
            @articles = []
        end
    
        def name
            @name
        end
    
        def category
            @category   
        end
    
        def self.all
            @@all
        end
    
        def self.find_by_name(name)
            all.find {|magazine|magazine.name == name}
        end
    
        def article_titles
            @articles.map(&:title)
        end
    
        def contributors 
            @articles.map(&:author).uniq
        end
    
        #counting the articles by the authors
        def contributing_authors
            author_counts = {}
    
            @articles.each do |article|
                author = article.author
                author_counts[author] ||= 0
                author_counts[author] += 1 
            end
        
    
        author_counts.select {|author, count|count > 2}.keys
        end
    
    end