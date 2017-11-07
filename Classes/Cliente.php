<?php
	class Cliente{
		protected $id;
		protected $nome;
		protected $cpf;
		protected $endereco;
		protected $telefone;
		protected $classificacao;


        public function __construct(){

		}
		
		public function getClassificacao()
		{
		    return $this->classificacao;
		}
		
		public function setClassificacao($classificacao)
		{
		    $this->classificacao = $classificacao;
		}
		
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

		public function getCpf(){
			return $this->cpf;
		}

		public function setCpf($cpf){
			$this->cpf = $cpf;
		}

		public function getEndereco(){
			return $this->endereco;
		}

		public function setEndereco($endereco){
			$this->endereco = $endereco;
		}

		public function getTelefone(){
			return $this->telefone;
		}

		public function setTelefone($telefone){
			$this->telefone = $telefone;
		}

		public function cadastrarCliente(){

		}

		public function removerCliente(){

		}

		public function alterarCliente(){

		}

		public function consultarCliente(){

		}
		
		public function solicita_venda(){
		    
		}
		
		public function solicita_atendimento(){
		    
		}
		
		public function solicita_devolucao(){
		    
		}
		
		public function efetua_pagamento(){
		    
		}
		
		public function atualiza_classificacao(){
		    
		}
		
		public function consulta_classificacao(){
		    
		}
		
	}
?>
