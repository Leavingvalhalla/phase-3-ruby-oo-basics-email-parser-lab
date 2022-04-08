require 'pry'

class EmailAddressParser
    attr_accessor :addresses
    def initialize(addresses)
        @addresses= addresses
    end

    def parse 
            split_addresses = @addresses.split(/[, ]/)
            returned_addresses = []
            split_addresses.each do |address|
                if !returned_addresses.include?(address) && address.length > 1
                    returned_addresses.push(address)
                end
            end
            returned_addresses
        
    end

    
end

# x = "john@doe.com, person@somewhere.org name@sample.com"

# y = EmailAddressParser.new(x)
