<?php 
    extract($_POST);
    if (isset($txt_nom) == false || trim($txt_nom) == "")
    {
        $msg = $msg."Le nom est obligatoire<br>";    
    }
    if (isset($txt_prenom) == false || trim($txt_prenom) == "")
    {
        $msg = $msg."Le prenom est obligatoire<br>";    
    }
    if (isset($txt_tel) == false || trim($txt_tel) == "")
    {
        $msg = $msg."Le téléphone est obligatoire<br>";    
    }
    if (isset($rbt_profil) == false || trim($rbt_profil) == "")
    {
        $msg = $msg."Vous devez sélectionner un profil<br>";    
    }
    ?>