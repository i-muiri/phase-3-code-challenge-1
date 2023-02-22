class Author

    attr_reader :name, :articles

    @@all= []
    
    def initialize(name)
        @name = name
        @articles = []
        @@all << self
    end

    def name 
        @name
    end

    def articles
        @articles
    end

    def self.all
        @@all
    end

    def magazines
        @articles.map { |article| Magazine.find_by_name(article.magazine) }.compact.uniq
    end

    def add_article(magazine, title)
        article = Article.new(self, magazine, title)
        @articles << article
    end

    def topic_areas
        magazines.map(&:category).uniq
    end

end