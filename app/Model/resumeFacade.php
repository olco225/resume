<?php
namespace App\Model;
use Nette;
final class resumeFacade {
    function __construct(
        private Nette\Database\Explorer $database,
    ){}
    public function getContactData(){
        $contactData = $this->database->query("SELECT * FROM kontakt");
        return $contactData;
    }
}