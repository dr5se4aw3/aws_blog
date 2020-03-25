class AwsBlogsController < ApplicationController
  before_action :set_aws_blog, only: [:show, :edit, :update, :destroy]

  # GET /aws_blogs
  # GET /aws_blogs.json
  def index
    @aws_blogs = AwsBlog.all
  end

  # GET /aws_blogs/1
  # GET /aws_blogs/1.json
  def show
  end

  # GET /aws_blogs/new
  def new
    @aws_blog = AwsBlog.new
  end

  # GET /aws_blogs/1/edit
  def edit
  end

  # POST /aws_blogs
  # POST /aws_blogs.json
  def create
    @aws_blog = AwsBlog.new(aws_blog_params)

    respond_to do |format|
      if @aws_blog.save
        format.html { redirect_to @aws_blog, notice: 'Aws blog was successfully created.' }
        format.json { render :show, status: :created, location: @aws_blog }
      else
        format.html { render :new }
        format.json { render json: @aws_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aws_blogs/1
  # PATCH/PUT /aws_blogs/1.json
  def update
    respond_to do |format|
      if @aws_blog.update(aws_blog_params)
        format.html { redirect_to @aws_blog, notice: 'Aws blog was successfully updated.' }
        format.json { render :show, status: :ok, location: @aws_blog }
      else
        format.html { render :edit }
        format.json { render json: @aws_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aws_blogs/1
  # DELETE /aws_blogs/1.json
  def destroy
    @aws_blog.destroy
    respond_to do |format|
      format.html { redirect_to aws_blogs_url, notice: 'Aws blog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aws_blog
      @aws_blog = AwsBlog.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def aws_blog_params
      params.require(:aws_blog).permit(:title, :content)
    end
end
