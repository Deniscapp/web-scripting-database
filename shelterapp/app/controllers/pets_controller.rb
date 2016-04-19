class PetsController < ApplicationController

  def new
    @pet = Pet.new
  end

  def adoptions
    @pets = Pet.all
  end

  def create
    @pet = Pet.new(pet_params)
    uploaded_io = params[:pet][:picture]

    if @pet.save
      dir = "#{Rails.root}/public/uploads/pets/#{@pet.id}"
      FileUtils.mkdir_p(dir) unless File.directory?(dir)
      File.open(Rails.root.join(dir, "petpic.png"), 'wb') do |file|
        file.write(uploaded_io.read)
      end
      redirect_to @pet
    else
      render 'new'
    end
  end

  def show
    @pet = Pet.find(params[:id])
  end

  private
  def pet_params
    params.require(:pet).permit(:name, :breed, :kind, :age, :gender, :description)
  end


end
