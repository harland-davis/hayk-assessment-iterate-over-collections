class Company
    attr_accessor :name, :size

    def initialize(name, size)
        @name = name
        @size = size
    end
end

companies = [
    Company.new('Alpha', 30),
    Company.new('Beta', 300),
    Company.new('Delta', 3000)
]

### Your code below this

def name_and_size companies
  companies.map do |company|
    company.name + " - " + company.size.to_s
  end
end

def sizes_with_reduce companies
  total_of_sizes = companies.reduce(0) do |sum, company|
    company.size + sum
  end
  total_of_sizes
end

def companies_over_100 companies
  companies.filter do |company|
    company.size > 100
  end
end

def company_beta companies
  companies.find do |company|
    company.name == 'Beta'
  end
end

def largest_company companies
  companies.max do |company|
    company.size
  end
end

def largest_to_smallest companies 
  companies.sort do |company|
    company.size
  end
end


