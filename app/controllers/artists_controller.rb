class ArtistsController < ApplicationController

    def show 
        @artist = Artist.find(params[:id])
    end
    # create, update, and show

    def new 
        @artist = Artist.new 
    end 

    def create 
        @artist = Artist.new(artist_params(:name, :bio))
        @artist.save 
        redirect_to artist_path(@artist)
    end 

    def edit 
        @artist = Artist.find(params[:id])
    end 

    def update 
        @artist = Artist.find(params[:id])
        @artist.update(artist_params(:name, :bio))
        redirect_to artist_path(@artist)
    end 
    # def create 
    #     @school_class = SchoolClass.new(school_class_params(:title, :room_number))
    #     @school_class.save 
    #     redirect_to school_class_path(@school_class)
    # end 

    # def edit 
    #     @school_class = SchoolClass.find(params[:id])
        
    # end 

    # def update 
    #     @school_class = SchoolClass.find(params[:id])
    #     @school_class.update(school_class_params(:title))
    #     redirect_to school_class_path(@school_class)
    # end 
    private 
        def artist_params(*args)
            params.require(:artist).permit(*args)
        end 

    # private 
	# 	def school_class_params(*args)
	# 		params.require(:school_class).permit(*args)
	# 	end 

end
