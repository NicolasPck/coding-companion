class InterviewsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    if params[:query].present?
      sql_query = "users.nickname ILIKE :query"
      @interviews = Interview.joins(:user).where(sql_query, query: "%#{params[:query]}%")
    elsif params["/interviews"].present?
      @interviews = Interview.filter(params["/interviews"].slice(:date, :interview_language, :experience, :focus))
    else
      @interviews = Interview.all
    end
  end

  def show
    find_interview
    setup_twilio_token
    # authorize @interview
    @user = current_user
    @other_user = @interview.other_user(current_user)
    @message = Message.new
  end

  def new
    @interview = Interview.new
    # authorize @interview
  end

  def create
    @interview = Interview.new(interview_params)
    # authorize @interview
    @interview.user = current_user
    if @interview.save
      redirect_to dashboard_index_path
    else
      render :new
    end
  end

  def destroy
    find_interview
    # authorize @interview
    @interview.destroy
    redirect_to dashboard_index_path
  end

  private

  def find_interview
    @interview = Interview.find(params[:id])
  end

  def interview_params
    params.require(:interview).permit(:date, :start_time, :end_time, :focus, :experience, :interview_language)
  end

  def setup_twilio_token
    twilio = TwilioService.new
    token_data = twilio.generate_token(@interview, current_user)
    @token = {
      token: token_data,
      room: "video-#{@interview.id}"
    }
  end
end
