class PetsController < ApplicationController
   @authenticated = false
   http_basic_authenticate_with(name: "root", password: "root", except: [:adoptions, :show], @authenticated => true)


  def new
    puts "-----"
    puts @authenticated
    puts "-----"
    @pet = Pet.new
  end

  def adoptions
    @pets = Pet.all
    if @pets.empty?
        render 'empty'
    end
  end

  def edit
    @pet = Pet.find(params[:id])
  end

  def update
    @pet = Pet.find(params[:id])
    uploaded_io = params[:pet][:picture]

    if @pet.update(pet_params)
      unless uploaded_io.nil?
        dir = "#{Rails.root}/public/uploads/pets/#{@pet.id}"
        FileUtils.mkdir_p(dir) unless File.directory?(dir)
        File.open(Rails.root.join(dir, "petpic.png"), 'wb') do |file|
          file.write(uploaded_io.read)
        end
      end
      redirect_to @pet
    else
    redirect_to action: adoptions
    end
  end

  def destroy
      @pet = Pet.find(params[:id])
      @pet.destroy
      redirect_to action: :'adoptions'

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
