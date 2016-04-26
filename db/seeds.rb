brands = %w[bauer ccm true stx warrior sherwood]
curves = %w[mid heel toe mid-heel]
sizes  = %w[senior intermediate junior youth]
flexes = %w[stiff senior whip intermediate-stiff intermidate-regular
intermediate-light junior junior-light youth]

brands.each { |b| Brand.find_or_create_by(name: b) }
curves.each { |c| Curve.find_or_create_by(name: c) }
sizes.each  { |s| Size.find_or_create_by(name: s)  }
flexes.each { |f| Flex.find_or_create_by(name: f)  }

def seed_product(hash)
  Product.find_or_create_by(title: hash[:title]).
          update_attributes(description: hash[:description],
                            price: hash[:price])
end

def seed_variant(product, variant)
  Variant.find_or_create_by(product: product,
                            variant: variant)
end

seed_product(title: "1x", description: "Bauer's top of the line stick", price: 269.99)
seed_product(title: "1s", description: "Bauer's supreme line, high end stick", price: 269.99)

curves.each do |curve|
  %w[1s 1x].each do |product|
    seed_variant(Product.find_by(title: product), Curve.find_by(name: curve))
  end
end

flexes.each do |flex|
  %w[1s 1x].each do |product|
    seed_variant(Product.find_by(title: product), Flex.find_by(name: flex))
  end
end
