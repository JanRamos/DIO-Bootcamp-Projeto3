use ecommerce_refinado;


show tables;
desc clients;

select * from product;
-- SELECT SIMPLES -- procurando saber os dados principais dos clientes
select concat(Fname, ' ', Minit, ' ', Lname) as Nome_Completo, CPF, Adress as Endereço  from clients; 

-- filtro com WHERE -- procurando saber quais pedidos estão em processamento
select * from orders;

select idOrder, orderStatus as Status,orderDescription as Descrição_venda from orders
where orderStatus = "Em processamento";

-- expressão com ATRIBUTO DERIVADO e ORDER BY-- procurando saber os eletronicos disponíveis com base na avaliação da maior para menor
select Pname as Nome_Produto, category as Categoria, avaliacao as Avaliação from product 
where category = "Eletronico"
order by avaliacao desc;

-- filtros de grupos com HAVING -- procurando compras que possuem mesmo valor de frete (acima de 0) e que estejam em processamento 
show tables;
desc product;
desc productorder;
desc productstorage;



select idOrder, orderStatus as Status,orderDescription as Descrição_venda from orders
where sendValue > 0
group by sendValue
having orderStatus = 'Em processamento';

-- filtragem com JOIN -- analisando os produtos que foram vendidos na tabela order


select * from product;
select * from productorder;
select * from orders;
            
 select Pname as Nome_do_produto, category as Categoria, idProduct as ID_do_Produto from product
	inner join productorder  ON idProduct = idPOproduct;
	