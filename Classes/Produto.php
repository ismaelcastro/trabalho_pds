<?php
	class Produto{
		protected $id;
		protected $descricao;
		protected $ativo;
		protected $tipo;
		protected $marca;
		protected $tipo_animal;
		protected $transgenico;
		protected $valor_compra;
		protected $valor_venda;
		protected $unidade_medida;
		protected $nome;
		protected $fornecedor;
		protected $quantidade;
		

		public function getId(){
	    	return $this->id;
	  	}

		public function setId($id){
		  	$this->id = $id;
		}

		public function getNome(){
		  	return $this->nome;
		}

		public function setNome($nome){
		  	$this->nome = $nome;
		}

		public function getFornecedor(){
			return $this->fornecedor;
		}

		public function setFornecedor($fornecedor){
			$this->fornecedor = $fornecedor;
		}

		public function getPreco(){
			return $this->preco;
		}

		public function setPreco($preco){
			$this->preco = preco;
		}

		public function getQuantidade(){
			return $this->quantidade;
		}

		public function setQuantidade($quantidade){
			$this->quantidade = quantidade;
		}

		public function adicionarProduto(){

		}

		public function removerProduto(){

		}

		public function consultarDisponibilidade(){

		}

		public function alterarProduto(){

		}
		
		public function realizaCadastro(){
		    
		}

	}

?>
