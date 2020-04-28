class SchoolClassesController < ApplicationController
    def index
        @school_classes = SchoolClass.all 
    end

    def show 
        @school_class = SchoolClass.find(params[:id])
    end

    def new
        @school_class = SchoolClass.new
    end

    def create 
        class_params = params.require(:school_class).permit(:title, :room_number)
        @school_class = SchoolClass.create(class_params)
        redirect_to @school_class
    end

    def edit
        @school_class = SchoolClass.find(params[:id])
    end

    def update
        @school_class = SchoolClass.find(params[:id])
        class_params = params.require(:school_class).permit(:title, :room_number)
        @school_class.update(class_params)
        redirect_to @school_class
    end
end


