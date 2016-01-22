module TodoHelper
  def build_todo
    @todo ||= Todo.new
  end
end
