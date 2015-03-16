module StaticHelper
  def times
    Time.now.strftime("Today is %A, %H hours, and %S seconds!!")
  end
end