module OrdersHelper
  def get_status_color(status)
    case status
    when 'Принят'
      'bg-blue-500'
    when 'На согласовании'
      'bg-yellow-500'
    when 'В ремонте'
      'bg-orange-500'
    when 'Ждет запчасти'
      'bg-purple-500'
    when 'Готов'
      'bg-green-500'
    when 'Выдан'
      'bg-teal-500'
    when 'Возвращен по гарантии'
      'bg-red-600'
    else
      'bg-gray-500'
    end
  end
end
