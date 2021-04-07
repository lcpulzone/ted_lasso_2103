class Player
    attr_reader :name,
                     :position,
                     :salary
                     
  def initialize(params)
    @name = params[:name]
    @position = params[:position]
    @salary = params[:salary]
  end
end
