<?php

declare(strict_types=1);

namespace App\Presentation\Home;
use App\Model\resumeFacade;

use Nette;


final class HomePresenter extends Nette\Application\UI\Presenter{
    function __construct(
        private resumeFacade $resumeFacade,
    ){}
    public function renderDefault(){
        $contactData = $this->resumeFacade->getContactData();
        $resumeData = $this->resumeFacade->getResumeData();
        $motivationLetterData = explode("\\n\\", $this->resumeFacade->getMotivationLetter()->motivation_letter);

        $this->template->contactData = $contactData;
        $this->template->resumeData = $resumeData;
        $this->template->motivationLetterData = $motivationLetterData;



    }
}
