module Search
    class << self
        def execute(options, distinct=false)
            if options
                filter = {}
                options.each { |item|
                    filter[item] = /#{options[item]}/i
                }
                
                if(distinct)
                    Complain.where( filter ).distinct(distinct)
                else
                    Complain.where( filter )
                end
            else
                Complain.all 
            end
        end
    end
end