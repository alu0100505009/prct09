require "prct06"

describe Prct06::Referencia do
  before :each do
	@b1 = Prct06::Libros.new("Dave Thomas", 
											"Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide",
											"The Facets of Ruby", "Pragmatic Bookshelf", "4 edition", "July 7, 2013", 
											"ISBN-13: 978-1937785499")
	@b2 = Prct06::Libros.new(["Dave Thomas","Andy Hunt", "Chad Fowler"], 
											"Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide",
											nil, "Pragmatic Bookshelf", "4 edition", "July 7, 2013", 
											["ISBN-13: 978-1937785499","ISBN-10: 1937785491"])
		
  end

  it "debe existir almenos un autor" do
    expect(@b1.autor).not_to eq nil
    expect(@b2.autor).not_to eq nil
  end

  it "debe existir un titulo" do
    expect(@b1.titulo).not_to eq nil
  end

  it "debe existir o no una serie" do
    expect(@b1.serie).not_to eq nil 
    expect(@b2.serie).to eq nil
  end

  it "debe existir una editorial" do
    expect(@b1.editorial).not_to eq nil
  end
  
  it "debe existir un numero de edicion" do
    expect(@b1.num_edi).not_to eq nil
  end

  it "debe existir una fecha de publicacion" do
    expect(@b1.fecha_publi).not_to eq nil
  end

  it "debe haber almenos un numero isbn" do
    expect(@b1.isbn).not_to eq nil
  end
  
  #aqui tenemos la comprobacion de los metodos de acceso
  it "Existir un metodo que nos devuelve almenos un autor" do
    expect(@b1.autor).to eq("Dave Thomas") 
    expect(@b2.autor).to eq(["Dave Thomas","Andy Hunt", "Chad Fowler"])
  end

  it "Existe metodo que nos devuelve el titulo" do
    expect(@b1.titulo).to eq("Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide")
  end

  it "Existe un metodo que nos de devuelve o no una serie" do
    expect(@b1.serie).to eq("The Facets of Ruby") 
  end

  it "Existe un metodo que devuelve la editorial" do
    expect(@b1.editorial).to eq("Pragmatic Bookshelf") 
    expect(@b1.num_edi).to eq("4 edition") 
  end

  it "Existe una fecha de publicacion" do
    expect(@b1.fecha_publi).to eq("July 7, 2013") 
  end

  it "Existe un metodo que devuelve almenos un numero isbn" do
    expect(@b1.isbn).to eq("ISBN-13: 978-1937785499")
  end

  it "Existe un metodo de formateo" do
		expect(@b1.to_s).to eq "Dave Thomas\nProgramming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide\nThe Facets of Ruby\nPragmatic Bookshelf; 4 edition (July 7, 2013)\nISBN-13: 978-1937785499\n"
		expect(@b2.to_s).to eq "Dave Thomas, Andy Hunt, Chad Fowler\nProgramming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide\n\nPragmatic Bookshelf; 4 edition (July 7, 2013)\nISBN-13: 978-1937785499\nISBN-10: 1937785491\n"
	end

end
