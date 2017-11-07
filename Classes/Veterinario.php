<?php
    class Veterinario{
        protected $codigo_CRMV;
        /**
         * @return the $codigo_CRMV
         */
        public function getCodigo_CRMV()
        {
            return $this->codigo_CRMV;
        }
    
        /**
         * @param field_type $codigo_CRMV
         */
        public function setCodigo_CRMV($codigo_CRMV)
        {
            $this->codigo_CRMV = $codigo_CRMV;
        }
    

        public function gera_relatorio_atendimento(){
            
        }
        
        public function realiza_triagem(){
            
        }
               
        
    }
?>