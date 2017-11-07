<?php
	class Venda{
		protected $id;
		protected $codCliente;
		protected $codFuncionario;
		protected $codProduto;
		protected $pagamento;

		public function __construct(){

		}

		public function getId(){
			return $this->id;
		}

		public function setId($id){
			$this->id = $id;
		}

		public function getCodCliente(){
			return $this->codCliente;
		}

		public function setCodCliente($codCliente){
			$this->codCliente = $codCliente;
		}

		public function getCodFuncionario(){
			return $this->codFuncionario;
		}

		public function setCodFuncionario($codFuncionario){
			$this->codFuncionario = $codFuncionario;
		}

		public function getCodProduto(){
			return $this->codProduto;
		}

		public function setCodProduto($codProduto){
			$this->codProduto = $codProduto;
		}

		public function getPagamento(){
			return $this->pagamento;
		}

		public function setPagamento($pagamento){
			$this->pagamento = $pagamento;
		}
	}

?>
