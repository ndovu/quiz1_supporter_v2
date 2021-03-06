class SupportFormsController < ApplicationController
  def index
    @support_forms = SupportForm.newest_first
  end

  def new
    @support_form = SupportForm.new
  end

  def create
    @support_form = SupportForm.new(params.require(:support_form).permit(:name, :email, :department, :message, :is_done))
    if @support_form.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @support_form = SupportForm.find(params[:id])
  end

  def edit
    @support_form = SupportForm.find(params[:id])
  end

  def update
    # render text: 'the app has gone into the support_forms_controller update action'
    @support_form = SupportForm.find(params[:id])
    if @support_form.update(params.require(:support_form).permit(:name, :email, :department, :message, :is_done))
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    @support_form = SupportForm.find(params[:id])
    @support_form.destroy
    redirect_to root_path
  end
end
