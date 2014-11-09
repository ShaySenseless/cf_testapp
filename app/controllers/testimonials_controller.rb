class TestimonialsController < ApplicationController
  def create
    @product = Product.find(params[:product_id])
    @testimonail = @product.testimonials.create(testimonial_params)
    redirect_to product_path(@product)
  end
 
  def testimonial_params
    params.require(:testimonial).permit(:user, :email, :body)
  end

	def destroy
    @product = Product.find(params[:product_id])
    @testimonial = @product.testimonials.find(params[:id])
    @testimonial.destroy
    redirect_to product_path(@product)
  end

  private

end