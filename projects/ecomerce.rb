produtos = [
  { nome: "Notebook", preco: 3500.00, estoque: 10, categoria: "Eletrônicos" },
  { nome: "Mouse", preco: 45.00, estoque: 50, categoria: "Eletrônicos" },
  { nome: "Teclado", preco: 120.00, estoque: 30, categoria: "Eletrônicos" },
  { nome: "Cadeira Gamer", preco: 890.00, estoque: 5, categoria: "Móveis" },
  { nome: "Mesa", preco: 450.00, estoque: 8, categoria: "Móveis" },
  { nome: "Monitor", preco: 800.00, estoque: 12, categoria: "Eletrônicos" },
  { nome: "Webcam", preco: 250.00, estoque: 0, categoria: "Eletrônicos" }
]

def listar_produtos(produtos, titulo)

  if block_given?
    produtos.each_with_index { |p, index| yield(p, index) }
  else
    puts "#{titulo}"
    produtos.each_with_index do |p, index|
      puts "#{index + 1}. #{p[:nome]}"
    end
  end
end

listar_produtos(produtos, "Catálogo Completo") do |p, index|
  puts "#{index + 1}. #{p[:nome]} - R$ #{p[:preco]}"
end


def filtrar_produtos(produtos, nome_filtro)
  produtos_selecionados = produtos.select { |p| yield(p) }
  puts "#{nome_filtro} -> #{produtos_selecionados.count} / #{produtos.size} produtos"
  produtos_selecionados
end

filtrar_produtos(produtos, "Sem Estoque") do |p|
  p[:estoque] == 0
end

def aplicar_desconto(produtos, percentual)
  produtos.map do |produto|
    preco_antigo = produto[:preco]
    preco_novo = (preco_antigo * (1 - percentual / 100.0)).round(2)
    
    yield(produto, preco_antigo, preco_novo) if block_given?
    
    produto.merge(preco: preco_novo)
  end
end

com_desconto = aplicar_desconto(produtos, 10)
puts com_desconto

def estatisticas_produtos(produtos)
  total = produtos.size
  preco_medio = (produtos.sum { |p| p[:preco] } / total).round(2)
  mais_caro = produtos.max_by { |p| p[:preco] }
  mais_barato = produtos.min_by { |p| p[:preco] }
  estoque_total = produtos.sum { |p| p[:estoque] }
  
  puts "\n=== ESTATÍSTICAS ==="
  puts "Total de produtos: #{total}"
  puts "Preço médio: R$ #{preco_medio}"
  puts "Mais caro: #{mais_caro[:nome]} (R$ #{mais_caro[:preco]})"
  puts "Mais barato: #{mais_barato[:nome]} (R$ #{mais_barato[:preco]})"
  puts "Estoque total: #{estoque_total} unidades"
  
  if block_given?
    puts "\n--- Análise Detalhada ---"
    produtos.each { |produto| yield(produto) }
  end
end

estatisticas_produtos(produtos)