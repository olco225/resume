<?php

declare(strict_types=1);

namespace App\Presentation\Home;
use App\Model\resumeFacade;

use Nette;


final class HomePresenter extends Nette\Application\UI\Presenter{
    function __construct(
        private resumeFacade $resumeFacade,
    ){}
    public function renderDefalut(){
        $contactData = $this->resumeFacade->getContactData();
        $this->template->contactData = $contactData;
    }
}
