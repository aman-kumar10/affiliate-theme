<?php

use WHMCS\Databse\Capsule;
use WHMCS\View\Menu\Item as MenuItem;

if (!defined("WHMCS")) {
    die("You cannot access this file directly!");
}

/* Manage Menu Items */
add_hook("ClientAreaPrimaryNavbar", 1, function (MenuItem $primaryNavbar) {

    try {
        /* Header Items before login */

        // add new menu item "Support"
        if (is_null($primaryNavbar->getChild("Support"))) {
            $primaryNavbar->addChild("Support", [
                "label" => "Support",
                "uri" => "#",
                "order" => 99
            ]);
        }

        $supportMenu = $primaryNavbar->getChild("Support");

        // replace the main menu items as sub menues in Support menu
        if (!is_null($supportMenu)) {
            // remove items
            $primaryNavbar->removeChild("Announcements");
            $primaryNavbar->removeChild("Knowledgebase");
            $primaryNavbar->removeChild("Contact Us");

            // add items
            $primaryNavbar->addChild("Announcements")->setUri("/index.php?rp=/announcements");
            $primaryNavbar->addChild("Knowledgebase")->setUri("/index.php?rp=/knowledgebase");
            $primaryNavbar->addChild("Contact Us")->setUri("/contact.php");
        }


        /* Header Items after login */
        if (isset($_SESSION["uid"]) && !empty($_SESSION["uid"])) {

            // remove "Open Ticket" menu item
            if (!is_null($primaryNavbar->getChild("Open Ticket"))) {
                $primaryNavbar->removeChild("Open Ticket");
            }

            // add Open Ticket in Support menu item
            if (!is_null($primaryNavbar->getChild("Support"))) {
                $supportMenu = $primaryNavbar->getChild("Support");
                $supportMenu->addChild("Open Ticket")->setUri("/submitticket.php");
            }
        }
    } catch (Exception $e) {
        logActivity("Error in ClientAreaPrimaryNavbar. Error: " . $e->getMessage());
    }
});


/* Add cPanel Login Button */
add_hook('ClientAreaHeaderOutput', 1, function($vars) {

    try {

        // return script to append button's HTML with service view 
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