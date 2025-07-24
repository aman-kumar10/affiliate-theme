<?php

use WHMCS\View\Menu\Item as MenuItem;

if (!defined("WHMCS")) {
    die("This file cannot be accessed directly!");
}

add_hook('ClientAreaPrimaryNavbar', 1, function (MenuItem $primaryNavbar) {

    if (isset($_SESSION['uid']) && !empty($_SESSION['uid'])) {

        if (!is_null($primaryNavbar->getChild('Open Ticket'))) {
            $primaryNavbar->removeChild('Open Ticket');
        }

        if (!is_null($primaryNavbar->getChild('Support'))) {
            $primaryNavbar->getChild('Support')->addChild('Open Ticket')->setUri('/submitticket.php');
        }
    }

    if (is_null($primaryNavbar->getChild('Support'))) {
        $primaryNavbar->addChild('Support', [
            'label' => 'Support',
            'uri' => '#',
            'order' => 99,
        ]);
    }

    $supportMenu = $primaryNavbar->getChild('Support');

    if (!is_null($supportMenu)) {

        if (!is_null($supportMenu)) {
            $primaryNavbar->removeChild('Announcements');
        }
        if (!is_null($supportMenu)) {
            $primaryNavbar->removeChild('Knowledgebase');
        }
        if (!is_null($supportMenu)) {
            $primaryNavbar->removeChild('Contact Us');
        }

        $supportMenu->addChild('Announcements')->setUri('/index.php?rp=/announcements');
        $supportMenu->addChild('Knowledgebase')->setUri('/index.php?rp=/knowledgebase');
        $supportMenu->addChild('Contact Us')->setUri('/contact.php');
    }
});
