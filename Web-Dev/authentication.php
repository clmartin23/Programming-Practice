<?php

if (!isset($_SERVER['PHP_AUTH_USER'])){
    header("WWW-Authenticate: Basic realm=\"Private Area\"");
    header("HTTP/1.0 401 Unauthorised");
    print "Sorry, you are not authorised to view";
    exit;

}else{
    if (($_SERVER['PHP_AUTH_USER']=='Curtis' && ($_SERVER['PHP_AUTH_PW']=='apiaccess23')) 
    || (($_SERVER['PHP_AUTH_USER']=='John' && ($_SERVER['PHP_AUTH_PW']=='johnaccess')))){
        print "Welcome authorised user";

    }else{
        header("WWW-Authenticate: Basic realm=\"Private Area\"");
        header("HTTP/1.0 401 Unauthorised");
        print "Sorry, you are not authorised to view";
        exit;
    }
}
?>