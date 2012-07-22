module Kaminari
  module MongoidCriteriaMethods
    def limit_value #:nodoc:
      options[:limit]
    end

    def offset_value #:nodoc:
      options[:skip]
    end

    def total_count #:nodoc:
      embedded? ? unpage.count(true) : count(true)
    end

    private
    def unpage
      return clone
      # clone.tap do |crit|
      #   crit.options.delete :limit
      #   crit.options.delete :skip
      # end
    end
  end
end
