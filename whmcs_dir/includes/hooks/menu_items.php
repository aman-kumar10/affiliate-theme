<?php

use WHMCS\View\Menu\Item as MenuItem;

if (!defined("WHMCS")) {
    die("This file cannot be accessed directly!");
}

add_hook('ClientAreaPrimaryNavbar', 1, function (MenuItem $primaryNavbar) {

    try {
        /* Header Items after login */
        if (isset($_SESSION['uid']) && !empty($_SESSION['uid'])) {
    
            // Remove "Open Ticket" menu item
            if (!is_null($primaryNavbar->getChild('Open Ticket'))) {
                $primaryNavbar->removeChild('Open Ticket');
            }
    
            // Add Open Ticket in Support menu item
            if (!is_null($primaryNavbar->getChild('Support'))) {
                $primaryNavbar->getChild('Support')->addChild('Open Ticket')->setUri('/submitticket.php');
            }
        }
    

        /* Header Items before login */

        // Add new menu item "Support"
        if (is_null($primaryNavbar->getChild('Support'))) {
            $primaryNavbar->addChild('Support', [
                'label' => 'Support',
                'uri' => '#',
                'order' => 99,
            ]);
        }
    

        // Replace the main menu items as sub menues in Support menu
        $supportMenu = $primaryNavbar->getChild('Support');

        if (!is_null($supportMenu)) {
    
            // Remove items
            if (!is_null($supportMenu)) {
                $primaryNavbar->removeChild('Announcements');
            }
            if (!is_null($supportMenu)) {
                $primaryNavbar->removeChild('Knowledgebase');
            }
            if (!is_null($supportMenu)) {
                $primaryNavbar->removeChild('Contact Us');
            }
    
            // Add items
            $supportMenu->addChild('Announcements')->setUri('/index.php?rp=/announcements');
            $supportMenu->addChild('Knowledgebase')->setUri('/index.php?rp=/knowledgebase');
            $supportMenu->addChild('Contact Us')->setUri('/contact.php');
        }
        
    } catch (Exception $e) {
        logActivity("Error in ClientAreaPrimaryNavbar. Error: " . $e->getMessage());
    }

});


add_hook('ClientAreaHeaderOutput', 1, function($vars) {

    try {

        return <<<HTML
            <script>
                $(document).ready(function () {
                    $(".div-service-item").each(function () {
                        var dataHref = $(this).attr("data-href");
                        var match = dataHref.match(/id=(\\d+)/);
    
                        if (match && match[1]) {
                            var serviceId = match[1];
                            var loginUrl = "?action=productdetails&id=" + serviceId + "&dosinglesignon=1";
    
                            var loginLink = $("<a>", {
                                class: "btn btn-default btn-sm mr-2",
                                href: loginUrl,
                                target: "_blank",
                                text: "Log in to Control Panel"
                            });
    
                            $(this).find(".div-service-buttons .btn-view-details").before(loginLink);
                        }
                        
                        $(".div-service-buttons a.btn").on("click", function(event) {
                            event.stopPropagation();
                        });
                    });
                });
            </script>
        HTML;

    } catch (Exception $e) {
        logActivity("Error in ClientAreaHeaderOutput. Error: ". $e->getMessage());
    }

});





