<?php
	class Parceiro{
		protected $id;
	    protected $tipo;
		protected $cpf;
		protected $cnpj;
		protected $filial;
	    protected $telefone;
	    protected $telefone2;
		protected $ativo;
		protected $nome;
		protected $email;
		protected $pais;
		protected $estado;
		protected $cidade;
		protected $endereco;

		
        public function getId()
        {
            return $this->id;
        }
    
 
        public function getTipo()
        {
            return $this->tipo;
        }
    

        public function getCpf()
        {
            return $this->cpf;
        }
    
        public function getCnpj()
        {
            return $this->cnpj;
        }

        public function getFilial()
        {
            return $this->filial;
        }
 
        public function getTelefone()
        {
            return $this->telefone;
        }

        public function getTelefone2()
        {
            return $this->telefone2;
        }
 
        public function getAtivo()
        {
            return $this->ativo;
        }

        public function getNome()
        {
            return $this->nome;
        }

        public function getEmail()
        {
            return $this->email;
        }

        public function getPais()
        {
            return $this->pais;
        }
    
        public function getEstado()
        {
            return $this->estado;
        }
    
        public function getCidade()
        {
            return $this->cidade;
        }

        public function getEndereco()
        {
            return $this->endereco;
        }

        public function setId($id)
        {
            $this->id = $id;
        }

        public function setTipo($tipo)
        {
            $this->tipo = $tipo;
        }

        public function setCpf($cpf)
        {
            $this->cpf = $cpf;
        }

        public function setCnpj($cnpj)
        {
            $this->cnpj = $cnpj;
        }

        public function setFilial($filial)
        {
            $this->filial = $filial;
        }

        public function setTelefone($telefone)
        {
            $this->telefone = $telefone;
        }

        public function setTelefone2($telefone2)
        {
            $this->telefone2 = $telefone2;
        }

        public function setAtivo($ativo)
        {
            $this->ativo = $ativo;
        }

        public function setNome($nome)
        {
            $this->nome = $nome;
        }

        public function setEmail($email)
        {
            $this->email = $email;
        }

        public function setPais($pais)
        {
            $this->pais = $pais;
        }
    
        public function setEstado($estado)
        {
            $this->estado = $estado;
        }

        public function setCidade($cidade){
            $this->cidade = $cidade;
        }
    
        public function setEndereco($endereco){
            $this->endereco = $endereco;
        }
    
        public function realiza_cadastro(){

		}

		public function valida_cadastro(){

		}

		public function altera_cadastro(){

		}

		public function remove_cadastro(){

		}

		public function consulta_cadastro(){

		}

		public function desativa_cadastro(){

		}

		public function reativa_cadastro(){

		}

		public function verifica_status(){

		}

	}
?>
