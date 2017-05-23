class Api::V1::CatchPhrasesController < ApplicationController

  def index
    catch_phrases = CatchPhrase.all
    render json: catch_phrases
  end

  def create
    catch_phrase = CatchPhrase.create(catch_phrase_params)
    render json: catch_phrase
  end

  private

  def catch_phrase_params
    params.require(:catch_phrase).permit(:suitable_for_work, :mood, :content, :student_id)
  end

end
