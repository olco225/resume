<?php
namespace App\Model;
use Nette;
final class resumeFacade {
    function __construct(
        private Nette\Database\Connection $database,
    ){}
    public function getContactData(){
        $contactData = $this->database->query("Select * from kontakt where id = '1' ")->fetch();

        return $contactData;
    }
    public function getResumeData(){
        $resumeData = $this->database->query("Select * from zivotopis where id = '1' ")->fetch();
        
        return $resumeData;
    }
    public function getMotivationLetter(){
        $motivationLetterData = $this->database->query("Select * from motivation_letter where id = '1' ")->fetch();

        return $motivationLetterData;
    }

}