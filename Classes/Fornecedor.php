<?php 
    class Fornecedor{
     
        protected $tipos_produtos_fornecidos;
        
        
        public function emite_nota(){
            
        }

        public function avalia_preco_cotacao(){
            
        }
        
        /**
         * @return the $tipos_produtos_fornecidos
         */
        public function getTipos_produtos_fornecidos()
        {
            return $this->tipos_produtos_fornecidos;
        }
    
        /**
         * @param field_type $tipos_produtos_fornecidos
         */
        public function setTipos_produtos_fornecidos($tipos_produtos_fornecidos)
        {
            $this->tipos_produtos_fornecidos = $tipos_produtos_fornecidos;
        }
    
        public function assina_contrato(){
            
        }
        
    }

?>