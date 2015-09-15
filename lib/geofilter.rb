require 'sequel'

class GeoFilter
  attr_reader :grouping
  attr_reader :model

  def initialize model_klass, grouping
    self.model    = model_klass
    self.grouping = grouping
  end

  def filter
    model.find(grouping)
  end

  private
    def grouping= grouping
      @grouping = grouping
    end

    def model= klass
      @model = klass
    end
end