class CaseBoxesController < ApplicationController
  before_action :set_case_box, only: %i[ show ]

  # GET /case_boxes or /case_boxes.json
  def index
    @case_boxes = CaseBox.all
  end

  # GET /case_boxes/1 or /case_boxes/1.json
  def show
    @skins = @case_box.skins
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_case_box
      @case_box = CaseBox.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def case_box_params
      params.expect(case_box: [ :name, :price ])
    end
end
