<?php
  class Funcionario{
    protected $id;
    protected $nome;
    protected $endereco;
    protected $telefone;
    protected $expediente;
    protected $carteira_trabalho;
    protected $cargo;
    protected $salario;


    public function getCarteira_trabalho(){
        return $this->carteira_trabalho;
    }


    public function getCargo(){
        return $this->cargo;
    }

    /**
     * @return the $salario
     */
    public function getSalario()
    {
        return $this->salario;
    }

    /**
     * @param field_type $carteira_trabalho
     */
    public function setCarteira_trabalho($carteira_trabalho)
    {
        $this->carteira_trabalho = $carteira_trabalho;
    }

    /**
     * @param field_type $cargo
     */
    public function setCargo($cargo)
    {
        $this->cargo = $cargo;
    }

    /**
     * @param field_type $salario
     */
    public function setSalario($salario)
    {
        $this->salario = $salario;
    }

    public function __construct(){

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

  	public function getExpediente(){
  		return $this->expediente;
  	}

  	public function setExpediente($expediente){
  		$this->expediente = $expediente;
  	}

    public function adicionarFuncionario(){

    }

    public function removerFuncionario(){

    }
    
    public function login(){
        
    }
    
    public function logout(){
        
    }
    
  }

?>
