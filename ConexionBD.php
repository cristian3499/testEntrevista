<?php

class BD{
    //Los metedos static son para no realizar instancias.
    private static $con;

    public static function con(){
        
        if (is_null(self::$con)) {//Evalua si el metodo conn esta vacio 
           
            try{
                self::$con = new PDO( 'mysql:host='.HOST.';dbname='.DB.'', ''.USER.'',''.PASS.'' );
            }catch(PDOException $e){
                print "Error de conexion: ".$e->getMessage(). "<br>";
                die(); //Mata el proceso 
            }
        }
        return self::$con;//retorna el atributo de la conexion

    }

}

?>