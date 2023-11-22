# frozen_string_literal: true

# app/controllers/array_manipulation_controller.rb

class ArrayManipulationController < ApplicationController
  before_action :set_default_values, only: [:index]

  def index
    # Если форма отправлена, обработать введенный массив
    return unless params[:arr_r].present?

    arr_r = params[:arr_r].split(',').map(&:to_i)
    perform_array_manipulation(arr_r)
  end

  private

  def set_default_values
    # Значения по умолчанию, если массив не введен
    @result = {
      arr_r: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20],
      selected_elements: nil,
      product: nil,
      first_even_element: nil
    }
  end

  def perform_array_manipulation(arr_r)
    # Найти произведение элементов, индексы которых кратны 7
    selected_elements = arr_r.select.with_index { |_, index| (index % 7).zero? }
    product = selected_elements.reduce(:*)

    # Найти первый четный элемент
    first_even_element = arr_r.find(&:even?)

    # Заменить первый четный элемент на произведение выбранных элементов
    arr_r[arr_r.index(first_even_element)] = product

    # Обновить результаты
    @result = {
      arr_r:,
      selected_elements:,
      product:,
      first_even_element:
    }
  end
end
