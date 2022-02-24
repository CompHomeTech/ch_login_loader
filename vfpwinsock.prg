* -----------------------------------------------------------------------------------------------------------*
*                              VFPwinsock.h
* -----------------------------------------------------------------------------------------------------------*
#Define CLASSEVERSION '1.22'
#Define CRLF Chr(13)+Chr(10)
#Define VFP_VERSION Int(Version(5)/100)

* défauts // Defaults
#Define VFPWINSOCK_TIMEOUT 35      && timeout d'attente de réponse du serveur // SERVER TIMEOUT IN SECONDS

#Define VFPWINSOCK_SMTP_PORT 25    && // SMTP SERVER TCP PORT 25 BY DEFAULT
*#Define VFPWINSOCK_SMTP_PORT 587    && // SMTP SERVER TCP PORT 25 BY DEFAULT


#Define VFPWINSOCK_NNTP_PORT 119   && // NNTP SERVER TCP PORT 119 BY DEFAULT
#Define c_sckConnected 7

* -----------------------------------------------------------------------------------------------------------*
* Localization
* -----------------------------------------------------------------------------------------------------------*
#Define Language ""

#If Language == "FR" && Français // French
  #Define MSG_ERR_UNABLE_INTIALIZE_WS  "ERR00 : Impossible d'initialiser Winsock sur cette machine." && v1.19
  #Define MSG_ERR01_MISSING_SMTP_HOST  "ERR01 : Précisez le serveur SMTP dans la propriété SMTP_HOST."
  #Define MSG_ERR01_MISSING_NNTP_HOST  "ERR01 : Précisez le serveur NNTP dans la propriété NNTP_HOST." && 1.21
  #Define MSG_ERR01_MISSING_NNTP_GROUP "ERR01 : Précisez le Groupe NNTP dans la propriété NNTP_GROUP." && v1.21
  #Define MSG_ERR02_MISSING_FROM       "ERR02 : Précisez le mail de l'expéditeur dans la propriété FROM."
  #Define MSG_ERR03_MISSING_TO         "ERR03 : Précisez le mail du destinataire dans la propriété TO."
  #Define MSG_ERR04_UNREACHABLE_HOST   "ERR04 : Impossible de se connecter au serveur."
  #Define MSG_ERR05_NOREPLY_HOST       "ERR05 : Pas de réponse du serveur"
  #Define MSG_ERR06_FILE_NOFOUND       "ERR06 : Le fichier à attacher n'existe pas."
  #Define MSG_ERR07_MHTML_FILE_NOFOUND "ERR07 : Le fichier mhtml servant pour le message n'existe pas."
  #Define MSG_ERR08_MHTML_FILE_WRONG   "ERR08 : Le fichier mhtml indiqué ne semble pas être au format mhtml (archive web). Il ne contient pas de MIME-Version."
  #Define MSG_ERR09_WRONG_RESPONSE     "ERR09 : Le retour attendu était :"
  #Define MSG_ERR10_CONNECT_LOST       "ERR10 : XXX connexion serveur SMTP perdue."
  #Define MSG_ERR14_SENDDATA_RETRY     "ERR14 : Nouvel Essai... Nombre de caractères :"
  #Define MSG_ERR15_SENDDATA_TIMEOUT   "ERR15 : Erreur de Timeout dans l'exécution de SendData."
  #Define MSG_ERR16_EMAIL_REJECTED     "ERR16 : Adresse Email Rejetée." && v1.21
  #Define MSG_ERR17_MESSAGE_REJECTED   "ERR17 : Message refusé." && v1.22
#Elif Language == "PL" && Polonais // Polish
  #Define MSG_ERR_UNABLE_INTIALIZE_WS  "ERR00 : Nie mo¿na zainicjowaæ us³ugi Winsock na tym komputerze." && v1.19
  #Define MSG_ERR01_MISSING_SMTP_HOST  "ERR01 : Okreœl serwer SMTP we w³aœciwoœci SMTP_HOST. "
  #Define MSG_ERR01_MISSING_NNTP_HOST  "ERR01 : Okreœl serwer NNTP we w³aœciwoœci NNTP_HOST." && v1.21
  #Define MSG_ERR01_MISSING_NNTP_GROUP "ERR01 : Specify the NNTP Group in NNTP_GROUP property." && v1.21
  #Define MSG_ERR02_MISSING_FROM       "ERR02 : Okreœl adres pocztowy nadawcy we w³aœciwoœci FROM."
  #Define MSG_ERR03_MISSING_TO         "ERR03 : Okreœl adres pocztowy odbiorcy we w³aœciwoœci TO."
  #Define MSG_ERR04_UNREACHABLE_HOST   "ERR04 : Serwer poczty nieosi¹galny."
  #Define MSG_ERR05_NOREPLY_HOST       "ERR05 : Brak odpowiedzi ze strony serwera."
  #Define MSG_ERR06_FILE_NOFOUND       "ERR06 : Nie znaleziono pliku za³¹cznika."
  #Define MSG_ERR07_MHTML_FILE_NOFOUND "ERR07 : Nie znaleziono pliku za³¹cznika mhtml."
  #Define MSG_ERR08_MHTML_FILE_WRONG   "ERR08 : Plik mhtml wydaje siê byæ w nieprawid³owym formacie. Nie zawiera MIME-Version"
  #Define MSG_ERR09_WRONG_RESPONSE     "ERR09 : Oczekujê na odpowiedŸ z: "
  #Define MSG_ERR10_CONNECT_LOST       "ERR10 : XXX utracone po³¹czenie z serwerem SMTP."
  #Define MSG_ERR14_SENDDATA_RETRY     "ERR14 : Ponawiam próbê wys³ania danych ... Liczba bajtów: "
  #Define MSG_ERR15_SENDDATA_TIMEOUT   "ERR15 : B³¹d limitu czasu podczas wykonania SendData."
  #Define MSG_ERR16_EMAIL_REJECTED     "ERR16 : Email Address Rejected." && v1.21
  #Define MSG_ERR17_MESSAGE_REJECTED   "ERR17 : Message Rejected." && v1.22
#Elif Language == "CZ" && Tchèque // Czech
  #Define MSG_ERR_UNABLE_INTIALIZE_WS  "ERR00 : Chyba incializace knihovny Winsock." && v1.19
  #Define MSG_ERR01_MISSING_SMTP_HOST  "ERR01 : Zadejte SMTP server v parametru SMTP_HOST."
  #Define MSG_ERR01_MISSING_NNTP_HOST  "ERR01 : Zadejte NNTP server v parametru NNTP_HOST." && v1.21
  #Define MSG_ERR02_MISSING_FROM       "ERR02 : Zadejte adresu odesilatele v parametru FROM."
  #Define MSG_ERR03_MISSING_TO         "ERR03 : Zadejte adresu pøíjemce v parametru TO."
  #Define MSG_ERR04_UNREACHABLE_HOST   "ERR04 : Mail server není dostupný."
  #Define MSG_ERR05_NOREPLY_HOST       "ERR05 : Server neodpovídá."
  #Define MSG_ERR06_FILE_NOFOUND       "ERR06 : Soubor s pøílohou nenalezen."
  #Define MSG_ERR07_MHTML_FILE_NOFOUND "ERR07 : Soubor s pøílohou mhtml nenalezen."
  #Define MSG_ERR08_MHTML_FILE_WRONG   "ERR08 : Soubor mhtml neobsahuje MIME-Version. Soubor pravdìodobnì není ve formátu mhtml."
  #Define MSG_ERR09_WRONG_RESPONSE     "ERR09 : Oèekávaná návratová hodnota: "
  #Define MSG_ERR10_CONNECT_LOST       "ERR10 : XXX spojení se SMTP serverem pøerušeno."
  #Define MSG_ERR14_SENDDATA_RETRY     "ERR14 : Opakuji odesílání dat... Celkem Bytù:"
  #Define MSG_ERR15_SENDDATA_TIMEOUT   "ERR15 : Èasový limit pro SendData vypršel."
  #Define MSG_ERR16_EMAIL_REJECTED     "ERR16 : Emailová adresa odmítnuta." && v1.21
  #Define MSG_ERR17_MESSAGE_REJECTED   "ERR17 : Message Rejected." && v1.22
#Elif Language =="NL"  &&Hollandais/Dutch
  #Define MSG_ERR_UNABLE_INTIALIZE_WS  "ERR00 : Kan Winsoch op deze pc niet initialiseren." && v1.19
  #Define MSG_ERR01_MISSING_SMTP_HOST  "ERR01 : SMTP server is niet opgegeven."
  #Define MSG_ERR01_MISSING_NNTP_HOST  "ERR01 : NNTP server is niet opgegeven." && v1.21
  #Define MSG_ERR01_MISSING_NNTP_GROUP "ERR01 : NNTP Group is niet opgegeven." && v1.21
  #Define MSG_ERR02_MISSING_FROM       "ERR02 : Afzender mail is niet opgegeven in FROM property."
  #Define MSG_ERR03_MISSING_TO         "ERR03 : Ontvanger mail is niet opgegeven in TO property."
  #Define MSG_ERR04_UNREACHABLE_HOST   "ERR04 : Server niet bereikbaar."
  #Define MSG_ERR05_NOREPLY_HOST       "ERR05 : Geen reactie van server ontvangen"
  #Define MSG_ERR06_FILE_NOFOUND       "ERR06 : Bijlage kan niet gevonden worden."
  #Define MSG_ERR07_MHTML_FILE_NOFOUND "ERR07 : MHTML bijlage kan niet gevonden worden."
  #Define MSG_ERR08_MHTML_FILE_WRONG   "ERR08 : Het MHTML bestand is niet in het juiste formaat. Er is geen MIME-versie aanwezig."
  #Define MSG_ERR09_WRONG_RESPONSE     "ERR09 : Verwacht antwoord was :"
  #Define MSG_ERR10_CONNECT_LOST       "ERR10 : XXX verbinding verbroken met SMTP server."
  #Define MSG_ERR14_SENDDATA_RETRY     "ERR14 : nogmaals proberen gegevens te versturen....Aantal Bytes:"
  #Define MSG_ERR15_SENDDATA_TIMEOUT   "ERR15 : Timeout fout op server."
  #Define MSG_ERR16_EMAIL_REJECTED     "ERR16 : Emailadres afgekeurd." && v1.21
  #Define MSG_ERR17_MESSAGE_REJECTED   "ERR17 : Message Rejected." && v1.22

#Else  && Anglais // English
  #Define MSG_ERR_UNABLE_INTIALIZE_WS  "ERR00 : Unable to initialize Winsock on this computer." && v1.19
  #Define MSG_ERR01_MISSING_SMTP_HOST  "ERR01 : Specify the SMTP server in SMTP_HOST property."
  #Define MSG_ERR01_MISSING_NNTP_HOST  "ERR01 : Specify the NNTP server in NNTP_HOST property." && v1.21
  #Define MSG_ERR01_MISSING_NNTP_GROUP "ERR01 : Specify the NNTP Group in NNTP_GROUP property." && v1.21
  #Define MSG_ERR02_MISSING_FROM       "ERR02 : Specify the mail sender in FROM property."
  #Define MSG_ERR03_MISSING_TO         "ERR03 : Specify the mail recipient in TO property."
  #Define MSG_ERR04_UNREACHABLE_HOST   "ERR04 : Server unreachable."
  #Define MSG_ERR05_NOREPLY_HOST       "ERR05 : No response from the server"
  #Define MSG_ERR06_FILE_NOFOUND       "ERR06 : attachment file not found."
  #Define MSG_ERR07_MHTML_FILE_NOFOUND "ERR07 : mhtml attachment file not found."
  #Define MSG_ERR08_MHTML_FILE_WRONG   "ERR08 : The mhtml file does not seem to be in mhtml format. It does not contain a MIME-Version."
  #Define MSG_ERR09_WRONG_RESPONSE     "ERR09 : Expected return was :"
  #Define MSG_ERR10_CONNECT_LOST       "ERR10 : XXX connection lost with SMTP server."
  #Define MSG_ERR14_SENDDATA_RETRY     "ERR14 : retry send data... Number of Bytes:"
  #Define MSG_ERR15_SENDDATA_TIMEOUT   "ERR15 : Timeout error in SendData."
  #Define MSG_ERR16_EMAIL_REJECTED     "ERR16 : Email Address Rejected." && v1.21
  #Define MSG_ERR17_MESSAGE_REJECTED   "ERR17 : Message Rejected." && v1.22
#Endif

#Define COMPIL_AVEC_COM .F. && option de compilation pour générer la classe OLE public // FOR MTDLL CLASS COMPILATION COM+


* -----------------------------------------------------------------------------------------------------------*

* -----------------------------------------------------------------------------------------------------------*
* Auteur  :
*    Francis FAURE        francis.faure@mvps.org
*
* Contributions et Tests :
*    Patrick Gilles
*    Eric Venanci
*    Martin Haluza
*    Fredéric Steczycki
*    Christophe Chenavier
*    Anatole Baudouin
*    Pascal Chambrier
*    Grégory Adam
*    Gilles Lajot Sarthou (test vfp6)
*    Jareck Niemczyk (PL Translation)
*    Mike Gagnon
*    Richard Flouriot
*    Koen Piller (NL Translation)
*    Thierry Nivelet (StartMode)
*
* -----------------------------------------------------------------------------------------------------------*
* Exploitation de WinSock
*    V1.00 : SendMail expédition de Mail
*    V1.01 : Utilisation de MSwinosck dans VCX pour contourner le BUG microsoft winsock en runtime
*            Ajout du fichier de trace
*    V1.02 : ESMTP : authentification SMTP
*            + gestion des retours du serveur
*    V1.03 : Mode Muet (.silence) & pas de doevents, pas de wait pour utilisation en dll COM+
*            Correction problème sur certain server esmtp
*            + Pièces jointes
*    V1.04 : rajout d'une propriété pour envoyer un corps de message en mhtml
*            (but récupérer un enregistrement Internet Explorer, excel, word ou une génération xfrx
*            et envoyer en corps de mail avec les images, cela rend obsoléte la propriété data)
*            gestion des différents cas : entete mhtml, mhtml avec et sans boundary
*            + corps de messages mhtml avec pièces jointes
*    V1.04a : correction bug retour à la connexion au serveur
*    V1.05  : Refonte totale Plus d'appel à Winsock.OCX :
*             car nécessite qu'il soit installé sur la machine client, enregistré et empéche la génération en DLL pour utilisation en COM
*       Version 1.05 : remplacement de l'appels de MSWINSOCK.OCX pour un appel direct à Winsock2 (WS2_32)
*       Basé sur des posts de  http://fox.wikis.com/wc.dll?Wiki~SendSmtpEmail
*       (William GC Steinford, AnatoliyMogylevets sur fox.wikis.com)
*    V1.05a : correctifs pour prise en charge version vfp 6 (codage base 64)
*    V1.06  : rajouter des défauts : lecture en base de registre : serveur de mail, adresse email, Display Name
*    V1.06a : corrections diverses
*    V1.06b : correction timeout sur le sendData (tests avec Christophe Chenavier)
*    V1.07  : Optimisations temps de traitement (gain 95%)
*             Nouvelle propriété : "Priority" : 1= High ou 5=Low ou (défaut) 3=Normal
*             Nouvelle propriété : "EML_Dir_Send" : répertoire de stockage des fichiers .eml expédiés (rien si vide)
*    V1.07a : Version avec date en RFC822
*    V1.07b : correction bug, line too long
*    V1.08  : New property: CodePage, default code page is iso-8859-1 (Martin Haluza)
*    V1.09  : Correction message Mhtml Piece + jointes (pas de trombone)
*             Notification : demande de confirmation de lecture
*    V1.09a : bug accusé de reception
*    V1.10  : Changement sur le classe, correction boundary
*             Optimisation : l'expédition ne se fait plus email par email pour chaque destinataires, mail 1 seul mail
*             Possibilité de fixer le nom du fichier eml a générer
*    V1.11  : petits correctifs de structure contre le traitement antispam
*             vfp_ws2_32 : gestion des dll en mémoire avant appel dll (cas objet multiple en mémoire)
*    V1.11a : petits correctifs suite analyse (code inspector) de Christophe
*    V1.12  : Nouvelle propriété MessageHTML
*             Gestion des multidestinataires TO /TO_NAME et CC_CC_NAME
*             correction calcul GMT dans RFC822
*             probleme antispam de Free.fr : le boundary de forme outlook express ne plait pas à mx1.free.fr ! (galère) j'ai utilisé le format de thunderBird
*    V1.13  : pas de version 13 ^^
*    V1.14  : reprise pour fonctionnement VFP6 !
*             correction d'un probleme lors d'un fichier joint en html (anatole)
*    V1.15  : révision DateTime_to_C822 avec gestion de GetTimeZoneInformation
*    V1.16  : intégration de UDP dans WS32_2
*             rajoute MD5
*             nouvelle classe : "Radius_Access_Request" permettant les requetes "Access-Request" sur un serveur radius
*    V1.17  : recherche du maileur par défaut  "outlook" / "Outlook Express"
*             rajout methode dump()
*    V1.18  : rajout chaine de localization Français / Anglais
*             Correction bugs : Lire_Base_Registre, Alltrim(smtp_host)
*             Modifications pour expédition de gros fichiers joints
*             reprise de la génération des entetes avec boundary pour les pieces jointes
*              et boundary pour les messages HTM (utilisation de MessageHTML et de Message pour le texte)
*             reprise de la génération du MHTML + piece jointe
*    V1.19  : reprise pour fonctionnement VFP6 !, modification de l'initialisation Winsock de Init a Connect()
*    V1.20  : modification suite analyses des envois via SPAMASSIN / (recherche problème free)
*             modification encodage du sujet en 8859 Quoted Printable
*             conversion .MessageHTML en texte dans .Message si .Message n'est pas précisé
*             Rajout d'une méthode "Reset" pour ré initialiser toutes les propriétés
*             Création d'un formulaire permttant de générer du code d'exemple et de l'exécuter : vfp_winsock_send_mail_examples.scx
*    V1.21  : Localisation Polonais + bug relevé par Jareck // Polish localization and Bugs Spoted By Jareck Niemczyk
*             Ouverture du site http:///www.vfpwinsock.com dédié à VFPwinsock // http:///www.vfpwinsock.com a new website dedicated at vfpwinsock
*             ajout de la classe "Send_News" (NNTP)
*             ajout codes et propriétés pour support NNTP et POP3
*             modifications classes et optimisations
*             "BAD_emails" nouvelle propriété contenant les emails TO, CC et CCI rejetés par le serveur SMTP
*             "ReplyTo" et "ReplyTo_Name" nouvelles propriétés pour gérer le "Reply-To" (répondre à un autre email)
*             Content_Transfer_Encoding : ajout encodage "quoted-printable" et utilisé par défaut
*    V1.22  : Localisation Hollandais
*			  Encoding "quoted-printable" if needed for : FROM_NAME, TO_NAME, CC_NAME, REPLY_NAME
*             Changes on HELO command for Bulkmail error
* -----------------------------------------------------------------------------------------------------------*




? '-----------------------------------------------------------------------------------------------------------'
? 'VfpWinSock                                               Version :' + CLASSEVERSION
? '  For examples of use : do form vfp_winsock_send_mail_examples.scx'
? '-----------------------------------------------------------------------------------------------------------'



Define Class VFP_Winsock_Send_Mail As VFP_Winsock
  * Propriétés // Properties
  SMTP_HOST    = ""  && nom DNS ou adresse IP du serveur SMTP  // DNS Host name or IP Address of SMTP Server
  SMTP_PORT    = VFPWINSOCK_SMTP_PORT  && facultatif par défaut 25 // optional by default 25
  SMTP_HELO    = ""  && v1.11 facultatif: nom/ip expediteur à présenter sur le HELO SMTP // optional: name/ip address of the sender in HELO SMTP command
  AUTH_Login   = ""  && v1.02 identification pour ESMTP // ESMTP Login
  AUTH_Password= ""  && v1.02 identification pour ESMTP // ESMTP Password
  From         = ""  && Email de l'expéditeur // Email of the sender
  FROM_Name    = ""  && facultatif nom de l'expéditeur // optional Name of the sender
  To           = ""  && Emails des destinataires séparés par "," // Emails of the recipients. Multi-recipients separated by ","
  TO_Name      = ""  && Noms des destinataires séparés par "," // Names of the recipients. Multi-recipients separated by ","
  CC           = ""  && Emails des Contacts en Copies séparés par "," // Emails of Contacts in Copy. Multi-recipients separated by ","
  CC_Name      = ""  && Noms des Contacts en Copies séparés par "," // Names of the Contacts in Copy. Multi-recipients separated by ","
  ReplyTo      = ""  && v1.21 Email de réponse
  ReplyTo_Name = ""  && v1.21 Nom de réponse (default FROM_NAME)
  CCI          = ""  && Emails des Contacts en Copies Invisibles séparés par "," // Emails of the Contacts in Invisible Copy. Multi-recipients separated by ","
  Subject      = ""  && Sujet du Mail // Email Subject
  Message      = ""  && Message (texte) du Mail // Email text message
  MessageHTML  = ""  && v1.12 Message (en html) du Mail // Email with html message
  Notification = .F. && v1.09 demande une confirmation de lecture // ask recipient reading(?)
  Attachment   = ""  && v1.03 nom complet des fichiers de Pièces jointes séparés par "," // fullpath name of file in attachment. Multi-files separated by ","
  data_mhtml   = ""  && v1.04 nom complet d'un fichier MHTML a utiliser pour le corps du message // fullpath name of MHTML file for the message
  Priority     = ""  && v1.07  Priorité // Email Piority   1=High    5=Low    3=Normal (défaut)
  EML_Dir_Send = ""  && option répertoire des fichiers expédiés au format .eml // optional: directory of EML files to generate
  EML_File_Send= ""  && option nom du fichier .eml // optional: name of eml file

  BAD_Emails   = ""  && v1.21 cette propriété contient les emails refusés par le serveur SMTP // this property receive recipients Emails rejected by the SMTP Server

  EML_Data     = ""  && v1.11 contenu du fichier eml (interne) // contenu du fichier EML (internal)
  Data         = ""  && usage interne de composition du mail // internal use

  Procedure Init
    DoDefault() && VFP_Winsock::init()
  Endproc

  Procedure Destroy
    DoDefault() && VFP_Winsock::Destroy()
  Endproc

  * Méthode SEND de la classe SendMail // SEND method of SendMail Class
  Function Send
    Local v_start, v_to, lsRecipients
    Local v_send
    Local v_attachment, v_nbre_attachment, v_file, v_contenu, v_i, boundary, v_ext, v_chaine
    Local v_tmp, v_f
    Local Array t_attachment[1,2]
    Local v_boundary
    Local v_boundary_html && v1.18
    Local v_data
    Local v_data_mhtml
    Local lsData && v1.18
    Local liI && v1.18
    Local loHTMLconverter && 1.20
    *
    This.Erreur = ""
    * Trace la version de vfp et de vfpwinsock
    This.trace("VFP_Winsock_SEND_MAIL")
    This.trace("VFP version : "+_vfp.Version)
    This.trace("  VERSION(1) = " + Version(1)) && v1.21
    This.trace("  VERSION(2) = " + Alltrim(Str(Version(2)))) && v1.21
    This.trace("  VERSION(3) = " + Version(3)) && v1.21
    This.trace("  VERSION(4) = " + Version(4)) && v1.21
    This.trace("  VERSION(5) = " + Alltrim(Str(Version(5)))) && v1.21
    This.trace("VFPwinsock version : "+This.Version)
    * Test des valeurs Obligatoire
    If Empty(This.SMTP_HOST)
      * V1.06
      This.SMTP_HOST = This.Lire_Base_Registre("SMTP Server")
      If Empty(This.SMTP_HOST)
        This.Erreur = MSG_ERR01_MISSING_SMTP_HOST
        This.trace(This.Erreur)
        Return .F.
      Endif
    Endif
    If Empty(This.From)
      * V1.06
      This.From = This.Lire_Base_Registre("SMTP Email Address")
      If Empty(This.From)
        This.Erreur = MSG_ERR02_MISSING_FROM
        This.trace(This.Erreur)
        Return .F.
      Else
        * V1.06 si lecture en base de registre de l'adresse : rajouter le Display name
        If Empty(This.FROM_Name)
          This.FROM_Name = This.Lire_Base_Registre("SMTP Display Name")
        Endif
      Endif
    Endif
    If Empty(This.To)
      This.Erreur = MSG_ERR03_MISSING_TO
      This.trace(This.Erreur)
      Return .F.
    Endif
    * conversion des ; en ,
    This.To = Strtran(This.To , ";", ",")
    This.CC = Strtran(This.CC , ";", ",")
    This.CCI = Strtran(This.CCI , ";", ",")
    * Valeurs Par Défaut
    If (Not Empty(This.ReplyTo)) And Empty(This.ReplyTo_Name) && v1.21
      If Empty(This.FROM_Name)
        This.ReplyTo_Name = This.ReplyTo
      Else
        This.ReplyTo_Name = This.FROM_Name
      Endif
    Endif
    If Empty(This.FROM_Name)
      If Empty(This.ReplyTo_Name) && v1.21
        This.FROM_Name = This.From
      Else
        This.FROM_Name = This.ReplyTo_Name
      Endif
    Endif
    If Empty(This.TO_Name)
      This.TO_Name = This.To
    Endif
    If Empty(This.CC_Name)
      This.CC_Name = This.CC
    Endif
    * cas particuliers
    This.FROM_Name = Strtran(This.FROM_Name , ")", "\)")
    This.FROM_Name = Strtran(This.FROM_Name , "(", "\(")
    This.TO_Name = Strtran(This.TO_Name , ")", "\)")
    This.TO_Name = Strtran(This.TO_Name , "(", "\(")
    This.CC_Name = Strtran(This.CC_Name , ")", "\)")
    This.CC_Name = Strtran(This.CC_Name , "(", "\(")
    This.ReplyTo_Name = Strtran(This.ReplyTo_Name, ")", "\)") && v1.21
    This.ReplyTo_Name = Strtran(This.ReplyTo_Name, "(", "\(") && v1.21

    * revisé v1.10
    *v_boundary = "----_=NextPart_000" + SYS(2015) + "." + this.Sys3()
    * revisé 1.11
    *v_boundary = "----=_NextPart_000" + SYS(2015) + "." + this.Sys3()
    * revisé 1.12
    *v_boundary = "----=_NextPart_000_0000_" + this.Sys3() + "." + this.Sys3() && boundary de style outlook express rejeté par Free.fr
    *v_boundary = "----=_NextPart_000_00EF_01C781B6.53E3FDB0" && boundary de style outlook express accepté par Free.fr :(
    *v_boundary = "----=_NextPart_000_00EF_45F57802.45F57818" && boundary de style outlook express non accepté par Free.fr :(

    * http://www.faqs.org/rfcs/rfc2045.html
    * le boundary est pour séparer le texte des pieces jointes
    * v1.20
    * v_boundary = REPLICATE("-",10) + this.Sys3() + this.Sys3() + this.Sys3()  && boundary de style thunderBird (qui marche chez free.fr.)
    * v_boundary_html = REPLICATE("-",10) + this.Sys3() + this.Sys3() + this.Sys3()  && v1.18 autre boundary pour la partie html
    v_boundary = Replicate("-",12) + This.Sys3() + This.Sys3() + This.Sys3()  && boundary de style thunderBird (qui marche chez free.fr.)
    v_boundary_html = Replicate("-",12) + This.Sys3() + This.Sys3() + This.Sys3()  && autre boundary pour la partie html

    v_data_mhtml = ""
    If Not Empty(This.data_mhtml)
      If File(This.data_mhtml)
        * le fichier existe : le charger
        v_data_mhtml = Filetostr(This.data_mhtml)
        * latter l'entete du fichier jusqu'au "MIME-Version:"
        If Upper("MIME-Version:")$Upper(v_data_mhtml)
          v_data_mhtml = Substr(v_data_mhtml, At(Upper("MIME-Version:"), Upper(v_data_mhtml)))
          * 1.09
          * Suppression la ligne "MIME-Version:" + CRLF + CRLF
          Do While Len(v_data_mhtml)>2
            v_data_mhtml = Substr(v_data_mhtml,2)
            If Asc(Substr(v_data_mhtml,1,1))=13
              Exit
            Endif
          Enddo
          Do While Asc(Substr(v_data_mhtml,1,1))=13 Or Asc(Substr(v_data_mhtml,1,1))=10
            v_data_mhtml = Substr(v_data_mhtml,2)
          Enddo
          * v1.10
          * enlever le CRLF en fin
          **Do While Asc(Substr(v_data_mhtml,Len(v_data_mhtml),1))=13 Or ;
          **    Asc(Substr(v_data_mhtml,Len(v_data_mhtml),1))=10 Or ;
          **    Asc(Substr(v_data_mhtml,Len(v_data_mhtml),1))=32
          * v1.22
          Do While INLIST(Asc(Substr(v_data_mhtml,Len(v_data_mhtml),1)), 13, 10, 32)
            v_data_mhtml = Left(v_data_mhtml, Len(v_data_mhtml)-1)
          Enddo
          * cas particulier mhtml vérification que "--" n'est pas manquant derrière le dernier boundary...
          If "boundary"$v_data_mhtml
            If Right(v_data_mhtml,2)<>"--"
              v_data_mhtml = v_data_mhtml + "--"
            Endif
          Endif
          * data_mhtml ecrase data et message
          This.Data = ""
          This.Message = ""
        Else
          This.Erreur = This.Erreur + MSG_ERR08_MHTML_FILE_WRONG
          This.trace(This.Erreur)
          Return .F.
        Endif
      Else
        This.Erreur = This.Erreur + MSG_ERR07_MHTML_FILE_NOFOUND + "("+This.data_mhtml+")"
        This.trace(This.Erreur)
        Return .F.
      Endif
    Endif

    * Composition du Message : Soit DATA direct, soit DATA composé du Message
    If Empty(This.Data)

      * v1.20 : si message HTML et pas de message texte => création du message Texte depuis HTML
      If Not Empty(This.MessageHTML)
        If Empty(This.Message)
          loHTMLconverter = Createobject("HTMLConverter")
          This.Message = loHTMLconverter.HTMLdecode(This.MessageHTML)
          loHTMLconverter = Null
        Endif
      Endif

      * V1.20 date déplacée avant le from
      This.Data = This.Data + "Date: " + This.DateTime_to_C822() + CRLF

      * v1.21
      If Not Empty(This.ReplyTo)
        ** This.Data = This.Data + 'Reply-To: "' + This.ReplyTo_Name + '" <' + This.ReplyTo+ '>' + CRLF
        This.Data = This.Data + 'Reply-To: ' + This.FormatDataEmail(This.ReplyTo, This.ReplyTo_Name) + CRLF && 1.22
      Endif

      * From
      ** This.Data = This.Data + 'From: "' + This.FROM_Name + '" <' + This.From + '>' + CRLF
      This.Data = This.Data + 'From: ' + This.FormatDataEmail(This.From, This.FROM_Name) + CRLF && 1.22

      * To
      * v1.12
      * this.data = this.data + 'To: "' + this.TO_Name + '" <' + this.TO + '>' + CRLF
      This.Data = This.Data + 'To: ' + This.FormatDataEmail(This.To, This.TO_Name) + CRLF

      * CC
      If Not Empty(This.CC)
        * v1.12
        *this.data = this.data + 'Cc: "' + this.CC_Name + '" <' + this.CC + '>' + CRLF
        This.Data = This.Data + 'Cc: ' + This.FormatDataEmail(This.CC, This.CC_Name) + CRLF
      Endif

      * sujet / subject
      If Not Empty(This.Subject)
        * v1.20
        * this.data = this.data + "Subject: "+ this.Subject + CRLF
        This.Data = This.Data + "Subject: "+ This.String2Iso8859(This.Subject) + CRLF
      Endif

      * 1.12
      * v1.20 déplacé avant le "from" this.data = this.data + "Date: " + This.DateTime_to_C822() + CRLF

      * 1.03 : traitement avec pièces jointes
      This.Attachment = Alltrim(Strtran(This.Attachment , ";", ","))
      Do While Right(This.Attachment,1)=","
        This.Attachment = Left(This.Attachment, Len(This.Attachment)-1)
      Enddo
      If Empty(This.Attachment)
        v_attachment = ""
      Else
        v_attachment = This.Attachment + ","
      Endif
      v_nbre_attachment = 0
      Do While ","$v_attachment And Not Empty(v_attachment)
        v_file = Alltrim(Left(v_attachment, At(",", v_attachment)-1))
        Do While Right(v_file,1)="\" && suppression d'un \ qui se trouverait en fin de fichier
          v_file = Left(v_file, Len(v_file)-1)
        Enddo
        * vérification existance du fichier
        If File(v_file)
          This.trace("Attachment : "+v_file)
          v_nbre_attachment = v_nbre_attachment + 1
          * tableau stockant les fichiers joints
          *  t_attachment[*, 1] = nom du fichier (sans chemin)
          *  t_attachment[*, 2] = contenu du fichier + encodé en base64 + découpé en morceau de 76c
          Dimension t_attachment[v_nbre_attachment, 2]
          t_attachment[v_nbre_attachment, 1] = Substr(v_file, Rat("\", v_file)+1)  && nom du fichier
          * lecture du fichier
          v_contenu = Filetostr(v_file)
          * encodage base64
          v_contenu = This.Encode64(v_contenu)
          * morceaux de 76 c
          * 1.07 ------- optimisation
          If .T.
            v_tmp = Getenv("Temp")+"\"+This.Sys3()+".txt"
            * v1.14
            * =strtofile(v_contenu, v_tmp, 0)
            =Strtofile(v_contenu, v_tmp, .F.) && le troisème paramétre doit être .F. et non 0 en vfp 6
            v_f = Fopen(v_tmp)
            v_chaine = ""
            Do While Not Feof(v_f)
              v_chaine = v_chaine + Fgets(v_f, 76) + CRLF
            Enddo
            =Fclose(v_f)
            Erase (v_tmp)
            t_attachment[v_nbre_attachment, 2] = v_chaine
            v_chaine = "" && v1.18
          Else
            * avant 1.07
            t_attachment[v_nbre_attachment, 2] =  ""
            For v_i = 1 To Len(v_contenu) Step 76
              t_attachment[v_nbre_attachment, 2] = t_attachment[v_nbre_attachment, 2] + Substr(v_contenu,v_i,76) + CRLF
            Next
          Endif
        Else
          This.Erreur = This.Erreur + MSG_ERR06_FILE_NOFOUND + "("+v_file+")"
          This.trace(This.Erreur)
          Return .F.
        Endif
        v_attachment = Substr(v_attachment, At(",", v_attachment)+1)
      Enddo

      * Entete
      * v1.18 : si Piece joindre : générer un boundary
      If v_nbre_attachment>0
        * Entete avec pièces jointes
        This.Data = This.Data + "MIME-Version: 1.0" + CRLF
        This.Data = This.Data + "Content-Type: multipart/mixed;" + CRLF + Chr(9) + 'boundary="' + v_boundary + '"' + CRLF
        This.Data_Header()
        This.Data = This.Data + CRLF + "This is a multi-part message in MIME format." + CRLF + CRLF
        This.Data = This.Data + "--"+ v_boundary+ CRLF
        If Empty(v_data_mhtml)
          If Not Empty(This.MessageHTML)
            * creer un boundary html pour le message text/html
            This.Data = This.Data + "Content-Type: multipart/alternative;" + CRLF + Chr(9) + 'boundary="' + v_boundary_html + '"' + CRLF + CRLF
            This.Data = This.Data + "--"+ v_boundary_html +CRLF
          Endif
          This.Data = This.Data + "Content-Type: text/plain;" + CRLF + Space(8) + 'charset="'+This.Codepage+'"' + CRLF
          This.Data = This.Data + "Content-Transfer-Encoding: "+ This.Content_Transfer_Encoding + CRLF
        Endif && Empty(v_data_mhtml)
        *
      Else
        * pas de pièce jointe : générer l'entete (si ce n'est pas du mhtml)
        If Empty(v_data_mhtml)
          This.Data = This.Data + "MIME-Version: 1.0" + CRLF
          * v1.12
          If Empty(This.MessageHTML)
            This.Data = This.Data + "Content-Type: text/plain;" + CRLF + Space(8) + 'charset="'+This.Codepage+'"' + CRLF
            This.Data = This.Data + "Content-Transfer-Encoding: "+ This.Content_Transfer_Encoding + CRLF
            This.Data_Header()
          Else
            * message Texte + HTML
            This.Data = This.Data + "Content-Type: multipart/alternative;" + CRLF + Chr(9) + 'boundary="' + v_boundary_html + '"' + CRLF
            This.Data_Header()
            This.Data = This.Data + CRLF + "This is a multi-part message in MIME format."+ CRLF + CRLF
            This.Data = This.Data + "--"+ v_boundary_html+ CRLF
            This.Data = This.Data + "Content-Type: text/plain;" + CRLF + Space(8) + 'charset="'+This.Codepage+'"' + CRLF
            This.Data = This.Data + "Content-Transfer-Encoding: "+ This.Content_Transfer_Encoding + CRLF
          Endif
        Else
          This.Data = This.Data + "MIME-Version: 1.0" + CRLF
          This.Data_Header()
        Endif
      Endif

      *  générer le message (si ce n'est pas du mhtml, sinon on prend le source mhtml)
      If Empty(v_data_mhtml)
        Do Case && v1.21
          Case Upper(Alltrim(This.Content_Transfer_Encoding)) == "QUOTED-PRINTABLE"
            This.Data = This.Data + CRLF + This.EncodeTextQuotedPrintable(This.Message) && v1.21
          Otherwise
            This.Data = This.Data + CRLF + This.Message
        Endcase
        This.Data = This.Data + CRLF
        *
        If Not Empty(This.MessageHTML)
          This.Data = This.Data + "--"+ v_boundary_html+ CRLF
          This.Data = This.Data + "Content-Type: text/html;" + CRLF + Space(8) + 'charset="'+This.Codepage+'"' + CRLF
          This.Data = This.Data + "Content-Transfer-Encoding: "+ This.Content_Transfer_Encoding + CRLF
          This.Data = This.Data + CRLF + '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">' + CRLF
          Do Case && v1.21
            Case Upper(Alltrim(This.Content_Transfer_Encoding)) == "QUOTED-PRINTABLE"
              This.Data = This.Data + This.EncodeTextQuotedPrintable(This.MessageHTML)
            Otherwise
              This.Data = This.Data + This.MessageHTML
          Endcase
          This.Data = This.Data +CRLF +CRLF
          This.Data = This.Data + "--"+ v_boundary_html +"--" +CRLF && v1.18
        Endif
        * v1.07 (si le message contient un <CRLF>.<CRLF> le transformer en <CRLF>.<NULL><CRLF>)
        This.Data = Strtran(This.Data, CRLF + "." + CRLF, CRLF + "." + Chr(0) + CRLF)
      Else
        This.Data = This.Data + v_data_mhtml + CRLF
      Endif

      * les pièces jointes
      If v_nbre_attachment>0
        For v_i=1 To v_nbre_attachment
          v_ext = Lower(Substr(t_attachment[v_i, 1],Rat (".",t_attachment[v_i, 1])))
          * 1.09
          This.Data = This.Data + CRLF + "--" + v_boundary + CRLF
          * content-type MIME en fonction de l'extension de fichier
          Do Case
            Case v_ext=".jpg" Or v_ext=".jpeg"
              This.Data = This.Data + "Content-Type: image/jpeg;"
            Case v_ext=".bmp"
              This.Data = This.Data + "Content-Type: image/bmp;"   && v1.09
            Case v_ext=".gif"
              This.Data = This.Data + "Content-Type: image/gif;"
            Case v_ext=".wav"
              This.Data = This.Data + "Content-Type: audio/x-wav;"
            Case v_ext=".mht" Or v_ext=".mhtm" Or v_ext=".htm" Or v_ext=".mhtml" Or v_ext=".html"
              This.Data = This.Data + "Content-Type: text/html;"
            Case v_ext=".pdf"
              This.Data = This.Data + "Content-Type: application/pdf;" && (Fred) 1.11
            Otherwise
              This.Data = This.Data + "Content-Type: application/octet-stream;"
          Endcase
          This.Data = This.Data + CRLF + Space(8) + 'name="' + t_attachment[v_i, 1] + '"' + CRLF
          This.Data = This.Data + "Content-Transfer-Encoding: base64" + CRLF
          This.Data = This.Data + "Content-Disposition: attachment;"
          This.Data = This.Data + CRLF + Space(8) + 'filename="' + t_attachment[v_i, 1] +'"' + CRLF
          * -- v1.18 traiter la concatenantion par bloc d'un 1Mo, pour éviter le "String too long to fit"
          lsData = This.Data + CRLF
          For liI=1 To Len(t_attachment[v_i, 2]) Step  1024*1024
            lsData = m.lsData + Substr(t_attachment[v_i, 2], m.liI,  1024*1024)
          Next
          This.Data = m.lsData
          m.lsData = ""
          * this.data = this.data + CRLF + t_attachment[v_i, 2]
          * --
        Next
        This.Data = This.Data + CRLF + "--" + v_boundary + "--" + CRLF
      Endif
    Endif && de s'il y a un data déjà défini

    * appel a Winsock
    ** v1.05  With this.o_winsock.object
    With This.o_winsock
      .Close()
      ** .Protocol = 0     && 0=TCP Protocol, 1=UDP
      * Connexion au serveur
      .RemoteHost = This.SMTP_HOST
      .RemotePort = This.SMTP_PORT

      .Connect()

      ** v1.05
      If .state<> c_sckConnected
        * v1.18
        This.trace("START ERROR : "+ Ttoc(Datetime()))
        This.trace("Connect() RemoteHost : "+.RemoteHost + " RemoteHostIP :" + .RemoteHostIP)
        This.trace("Connect() SocketHandle : "+Alltrim(Str(.SocketHandle)))
        If .state == -1 && v1.19
          This.Erreur = MSG_ERR_UNABLE_INTIALIZE_WS
        Else
          This.Erreur = MSG_ERR04_UNREACHABLE_HOST + " " + Str(.state)
        Endif
        This.trace(This.Erreur)
        .Close()
        Return .F.
      Else
        This.trace("START : "+ Ttoc(Datetime()))
        This.trace("Connect() RemoteHost : "+.RemoteHost + " RemoteHostIP :" + .RemoteHostIP)
        This.trace("Connect() SocketHandle : "+Alltrim(Str(.SocketHandle)))
        * this.Trace("Connect() LocalPort : "+Alltrim(Str(.LocalPort)))
      Endif
      * on devrait recupérer un 220 du nom du serveur
      v_send = This.WinSock_GetData("220")

      * Expédition des données
      * répéter l'expédition pour tous les destinataires, cc et cci
      If Empty(This.AUTH_Login)
        * Message HELO : Le retour devrait être "250"
        * v1.11 rajout de la possibilité de fixer le nom dans le HELO (identity of the sender)
        If Empty(This.SMTP_HELO)
          * v1.17
          * This.SMTP_HELO = This.SMTP_HOST
          * v1.22 dont't send SMTP_HOST in HELO : RFC2821 
          *  random private IP 10.x.x.x
          this.SMTP_HELO="10"+ "."+ALLTRIM(STR(INT(RAND()*255),3,0)) + "."+ALLTRIM(STR(INT(RAND()*255),3,0)) + "."+ALLTRIM(STR(INT(RAND()*255),3,0))
        Endif
        v_send = This.WinSock_SendData("HELO " + This.SMTP_HELO + CRLF, "250")
      Else
        * cas ESMTP
        * Message EHLO : Le retour devrait être plusieur 250
        *
        * v1.11
        If Empty(This.SMTP_HELO)
          * v1.17
          **This.SMTP_HELO = This.SMTP_HOST
          * v1.22 dont't send SMTP_HOST in HELO : RFC2821 
          *  random private IP 10.x.x.x
          this.SMTP_HELO="10"+ "."+ALLTRIM(STR(INT(RAND()*255),3,0)) + "."+ALLTRIM(STR(INT(RAND()*255),3,0)) + "."+ALLTRIM(STR(INT(RAND()*255),3,0))
        Endif
        v_send = This.WinSock_SendData("EHLO " + This.SMTP_HELO + CRLF, "250")
        If v_send
          v_send = This.WinSock_SendData("AUTH LOGIN" + CRLF, "334")   && retour 334
        Endif
        If v_send
          v_send = This.WinSock_SendData(This.Encode64(This.AUTH_Login) + CRLF, "334")
        Endif
        If v_send
          v_send = This.WinSock_SendData(This.Encode64(This.AUTH_Password) + CRLF, "235")
        Endif
      Endif

      lsRecipients = This.To + ","
      If Not Empty(This.CC)
        lsRecipients = m.lsRecipients + This.CC + ","
      Endif
      If Not Empty(This.CCI)
        lsRecipients = m.lsRecipients + This.CCI + ","
      Endif

      * V1.10 : plus qu'un seul mail
      ** DO WHILE ","$lsRecipients AND NOT EMPTY(lsRecipients)
      **   v_to = ALLTRIM(LEFT(lsRecipients, AT(",", lsRecipients)-1))
      **   IF NOT EMPTY(v_to)
      **     if v_send
      **       * 1.07 eml multiple
      **       This.EML_File_Send = ""
      **       v_send = this.WinSock_SendMail(v_to)
      **     endif
      **   endif
      **   lsRecipients = SUBSTR(lsRecipients, AT(",", lsRecipients)+1)
      ** enddo
      If v_send
        v_send = This.WinSock_SendMail(m.lsRecipients)
        =This.Log_Send_Eml()
        * v1.22
        =This.WinSock_SendData("QUIT" + CRLF, "")        
      Endif
      **

      *=This.WinSock_SendData("QUIT" + CRLF, "")
      This.trace("END : "+ Ttoc(Datetime()))
      If This.silence
      Else
        Wait Clear
      Endif
      .Close()
    Endwith
    * vide le data
    This.Data=""
    Return v_send
  Endfunc

  * Send MAIL
  * 1.10 : plus qu'en seul mail pour tous les destinataires
  *HIDDEN PROCEDURE WinSock_SendMail(p_to)
  Hidden Function WinSock_SendMail(lsDestinataires)
    Local llSend
    Local v_data, v_line
    Local v_at, v_i, v_j
    Local v_step
    Local lsTo
    Local v_nblignes
    Local v_chaine
    Local liI && v1.18
    Local lsData && v1.18
    Local liNbEmails && v1.21

    * Message MAIL FROM: retour 250
    llSend = This.WinSock_SendData("MAIL FROM: <" + This.From + ">" + CRLF, "250")

    If m.llSend
      * Modifié en v1.21 sur demande Olivier Hamou : envoyer les mails même si rejet de certains destinataires
      This.BAD_Emails = ""  && v1.21
      liNbEmails = 0        && v1.21
      Do While ","$m.lsDestinataires And Not Empty(m.lsDestinataires)
        m.lsTo = Alltrim(Left(m.lsDestinataires, At(",", m.lsDestinataires)-1))
        If Not Empty(m.lsTo)
          * Message RCPT TO: 250 => OK
          If This.WinSock_SendData("RCPT TO: <" + m.lsTo + ">" + CRLF, "250")
            * v1.21 destinataire accepté // Recipient accepted
            liNbEmails = liNbEmails + 1  && v1.21
          Else
            * destinataire refusé // Recipient rejected
            This.BAD_Emails = This.BAD_Emails + m.lsTo + ","
            This.trace("WARNING : Email <" +m.lsTo+"> "+MSG_ERR16_EMAIL_REJECTED)
          Endif
        Endif
        lsDestinataires = Substr(m.lsDestinataires, At(",", m.lsDestinataires)+1)
      Enddo
      * v1.21 : il faut au moins 1 email valide // no valid email address
      If liNbEmails == 0
        llSend = .F.
        This.Erreur = MSG_ERR16_EMAIL_REJECTED
        This.trace(This.Erreur)
      Endif
    Endif

    * Message DATA : 354
    If m.llSend
      llSend = This.WinSock_SendData("DATA" + CRLF, "354")
    Endif

    * DATA
    * v1.18
    *!*	   if m.llSend
    *!*	     *** RFC 821 chaque ligne fait 512octets maxi avec le crlf
    *!*	     *** la limite du texte est de 1000 caractères avec le crlf
    *!*	     * v1.18
    *!*	     * This.Data peut contenir un nombre important de lignes (gros fichiers joints par exemple)
    *!*	     * a expédier au serveur de mail par chaine terminée par CRLF mais de taille maxi 512 caracteres par ligne
    *!*	     * Ne pas passer par un tableau car les version de VFP< 9 ne supporte pas plus 65 0000 Lignes
    *!*	     * sur idée de Gregory : passage par un fichier pour eviter le Aline
    *!*	     *
    *!*	     LOCAL lsFicTmp
    *!*	     lsFicTmp = GetEnv("Temp")+"\"+this.Sys3()+".txt"
    *!*	     =StrToFile(this.data, m.lsFicTmp, .F.) && le troisème paramétre doit être .F. et non 0 en vfp 6
    *!*	     liF = Fopen(m.lsFicTmp)
    *!*	     do while not Feof(m.liF)
    *!*	       lsDATA = FGETS(m.liF, 8192)
    *!*	       IF LEN(m.lsData)<512
    *!*	         m.llSend = this.WinSock_SendData(m.lsData+CRLF, "")
    *!*	         This.EML_Data = This.EML_Data + m.lsData + CRLF
    *!*	       ELSE
    *!*	         for v_j=1 to Len(m.lsData) step 512
    *!*	           v_chaine = Substr(m.lsData, v_j, 512)
    *!*	           if Len(v_chaine)<512 AND Len(m.lsData)<8192
    *!*	             m.llSend = this.WinSock_SendData(v_chaine + CRLF, "")
    *!*	             This.EML_Data = This.EML_Data + v_chaine + CRLF
    *!*	           else
    *!*	             m.llSend = this.WinSock_SendData(v_chaine, "")
    *!*	             This.EML_Data = This.EML_Data + v_chaine
    *!*	           endif
    *!*	         next
    *!*	       ENDIF
    *!*	       IF NOT m.llSend
    *!*	         exit
    *!*	       endif
    *!*	     enddo
    *!*	     =Fclose(m.liF)
    *!*	     erase (m.lsFicTmp)
    *!*	   endif

    * DATA
    If m.llSend
      *** RFC 821 chaque ligne commande fait 512octets maxi avec le crlf
      *** la limite du texte est de 1000 caractères
      * v1.18 sur idée de Gregory : envoyer directement par chaine de 1000c
      For v_j=1 To Len(This.Data) Step 1000
        lsData = Substr(This.Data, v_j, 1000)
        llSend = This.WinSock_SendData(m.lsData, "")
        This.EML_Data = This.EML_Data + m.lsData
        If Not m.llSend
          Exit
        Endif
      Next
    Endif

    * fin du message
    If m.llSend
      llSend = This.WinSock_SendData(CRLF + "." + CRLF, "250")
      * v1.22 certains serveur de mails peuvent indiquer un refus (BULKMAIL) en fin de message
      If Not m.llSend
        This.Erreur = MSG_ERR17_MESSAGE_REJECTED
        This.trace(This.Erreur)
        If Not This.silence
          Wait Windows This.Erreur Nowait
        Endif
      Endif
    Endif

    * message RSET : le retour devrait être 250
    ** v1.11 supprimé, car semblerait poser problème pour certains serveur comme laposte.net (?)
    **if m.llSend
    **  llSend = this.WinSock_SendData("RSET"+CRLF, "250")
    ***endif
    Return m.llSend
  Endfunc


  * v1.07 révisé 1.09
  * hidden Procedure Data_Priority
  * 1.09
  Hidden Procedure Data_Header
    * Priority
    Do Case
      Case This.Priority="1" Or Upper(This.Priority)="HIGH"
        This.Data = This.Data + "X-Priority: 1" + CRLF
        * v1.20
        * this.data = this.data + "X-MSMail-Priority: High" + CRLF
        This.Data = This.Data + "Importance: High" + CRLF
      Case This.Priority="5" Or Upper(This.Priority)="LOW"
        This.Data = This.Data + "X-Priority: 5" + CRLF
        * v1.20
        * this.data = this.data + "X-MSMail-Priority: low" + CRLF
      Otherwise
        * v1.17
        This.Priority="3"
        This.Data = This.Data + "X-Priority: 3" + CRLF
        * v1.20
        * this.data = this.data + "X-MSMail-Priority: Normal" + CRLF
    Endcase
    * 1.09 mailer
    This.Data = This.Data + "X-Mailer: VFPwinsock " + This.Version + CRLF
    * 1.11
    *v1.20 supprimé car provoque un HDR_ORDER_FTSDMCXX_BAT sur spamassain
    * this.data = this.data + "X-MimeOLE: Produced By VFPwinsock v" + this.version + CRLF

    * 1.09
    If This.Notification
      ** This.Data = This.Data + "Disposition-Notification-To: "+This.FROM_Name+"<"+This.From+">" + CRLF
      This.Data = This.Data + "Disposition-Notification-To: "+This.From+"<"+This.From+">" + CRLF && 1.22
    Endif
  Endproc

  * v1.07 : log en fichier.eml (que si le répertoire a été défini)
  * v1.10 : possibilité de donner le nom du fichier eml, sinon affecation du nom par défaut
  * v1.11 : une seule ecriture pour eviter le ralentissement antivirus
  Hidden Procedure Log_Send_Eml()
    Local v_i
    Local v_fichier_eml, v_safety
    If Not Empty(This.EML_Dir_Send) And Not Empty(This.EML_Data)
      If Empty(This.EML_File_Send) && si le fichier n'est pas précisé
        v_i = 1
        Do While .T.
          This.EML_File_Send = "Send_" + Dtos(Date()) + "_" + Strtran(Time(),":","") + "_" + Alltrim(Str(v_i,3,0))+ ".eml"
          If File(Addbs(Alltrim(This.EML_Dir_Send)) + This.EML_File_Send)
            v_i = v_i + 1
          Else
            Exit
          Endif
        Enddo
      Endif
      v_fichier_eml = This.EML_Dir_Send + This.EML_File_Send
      v_safety = Set("safety")
      =Strtofile(This.EML_Data, v_fichier_eml, .F.) && v1.11 fichier ecrasé s'il existe V1.14 : mettre .F. pour vfp6
      Set Safety &v_safety
    Endif
  Endproc

  * 1.12
  Function FormatDataEmail(p_adresse, p_name)
    Local lcReturn As String
    Local lcTo As String
    Local lcToname As String
    Local liNombreEmail As Integer
    Local liNombreNom As Integer
    Local liI As Integer
    Local liDebut As Integer
    Local liLong  As Integer
    Local lcEncode As String
    m.lcReturn = ""
    If Not Empty(p_adresse)
      m.liNombreEmail = Occurs(",", p_adresse)+1
      m.liNombreNom   = Occurs(",", p_name)+1
      For m.liI= 1 To m.liNombreEmail
        m.liDebut = Iif(m.liI=1, 1, At(",",p_adresse,m.liI-1)+1)
        m.liLong  = Iif(m.liI=m.liNombreEmail, Len(p_adresse) - m.liDebut + 1, At(",",p_adresse,m.liI)-m.liDebut)
        * v1.22
        ** m.lcTo = Lower(Alltrim(Substr(p_adresse, m.liDebut, m.liLong)))
        m.lcTo = Alltrim(Substr(p_adresse, m.liDebut, m.liLong))
        * recherche du nom
        If m.liI<=m.liNombreNom
          m.liDebut = Iif(m.liI=1, 1, At(",",p_name,m.liI-1)+1)
          m.liLong  = Iif(m.liI=m.liNombreNom, Len(p_name) - m.liDebut + 1, At(",",p_name,m.liI)-m.liDebut)
          * v1.22
          ** m.lcToname = Lower(Alltrim(Substr(p_name, m.liDebut, m.liLong)))
          m.lcToname = Alltrim(Substr(p_name, m.liDebut, m.liLong))
        Else
          * v1.20
          * m.lcToname = m.lcTo
          m.lcToname = ""
        Endif
        * v1.20
        * m.lcReturn  = m.lcReturn  + IIF(EMPTY(m.lcReturn ),"",", ")+ '"'+m.lcToname+'"' + " <"+m.lcTo+">"
        m.lcReturn  = m.lcReturn  + Iif(Empty(m.lcReturn ), "", ", ")
        If Empty(m.lcToname) Or (m.lcToname == m.lcTo)
          m.lcReturn  = m.lcReturn  +  "<"+m.lcTo+">"
        Else
          ** m.lcReturn  = m.lcReturn  +  '"'+m.lcToname+'"' + " <"+m.lcTo+">"
          * v1.22 encode Quote printable  and without '"'
          lcEncode = This.String2Iso8859(m.lcToname)
          If m.lcEncode == m.lcToname
            m.lcReturn  = m.lcReturn  + '"'+m.lcToname+'"' + " <"+m.lcTo+">"
          Else
            m.lcReturn  = m.lcReturn  + lcEncode + " <"+m.lcTo+">"
          Endif
        Endif
      Next
    Endif
    Return m.lcReturn
  Endfunc

  * v1.17
  * dump : create a file with all properties for trace
  Function Dump(lsFile)
    * if lsfile, is not specified : Dump in logfile ".TraceFile"
    * if .TraceFile is not specified : dump in the .txt file
    If Type("lsFile")<>"C"
      lsFile = This.TraceFile
    Endif
    If Empty(lsFile)
      * lsFile = "VFP_Winsock_Send_Mail_"+TTOC(DATETIME())+".txt"
      * v1.19 nom du fichier
      lsFile = "VFP_Winsock_Send_Mail_"+Ttoc(Datetime())+".txt"
      lsFile = Strtran(m.lsFile, "/","_")
      lsFile = Strtran(m.lsFile, ":","_")
      lsFile = Strtran(m.lsFile, " ","_")
    Endif
    With This
      =Strtofile("---------------------------- DUMP ---------------------------- "+CRLF, m.lsFile, .T.)
      =Strtofile(Ttoc(Datetime())+CRLF, m.lsFile, .T.) && eb vfp6 le 3eme paramétre de strtofile est boolean
      =Strtofile("[.Version]=" + .Version +CRLF, m.lsFile, .T.)
      =Strtofile("[.SMTP_HOST]=" + .SMTP_HOST +CRLF, m.lsFile, .T.)
      =Strtofile("[.SMTP_PORT]=" + Str(.SMTP_PORT,2,0) +CRLF, m.lsFile, .T.)
      =Strtofile("[.SMTP_HELO]=" + .SMTP_HELO +CRLF, m.lsFile, .T.)
      =Strtofile("[.CodePage]=" + .Codepage + CRLF, m.lsFile, .T.)
      =Strtofile("[.Content_Transfer_Encoding]=" + .Content_Transfer_Encoding+ CRLF, m.lsFile, .T.)
      =Strtofile("[.Priority]=" + .Priority + CRLF, m.lsFile, .T.)
      =Strtofile("[.Notification]=" + Iif(.Notification, ".T.", ".F.") + CRLF, m.lsFile, .T.)
      =Strtofile("[.Silence]=" + Iif(.silence, ".T.", ".F.") + CRLF, m.lsFile, .T.)
      =Strtofile("[.FROM]=" + .From + CRLF, m.lsFile, .T.)
      =Strtofile("[.FROM_Name]=" + .FROM_Name + CRLF, m.lsFile, .T.)
      =Strtofile("[.TO]=" + .To+ CRLF, m.lsFile, .T.)
      =Strtofile("[.TO_Name]=" + .TO_Name+ CRLF, m.lsFile, .T.)
      =Strtofile("[.CC]=" + .CC+ CRLF, m.lsFile, .T.)
      =Strtofile("[.CC_Name]=" + .CC_Name+ CRLF, m.lsFile, .T.)
      =Strtofile("[.ReplyTo]=" + .ReplyTo+ CRLF, m.lsFile, .T.)
      =Strtofile("[.ReplyTo_Name]=" + .ReplyTo_Name+ CRLF, m.lsFile, .T.)
      =Strtofile("[.CCI]=" + .CCI+ CRLF, m.lsFile, .T.)
      =Strtofile("[.AUTH_Login]=" + .AUTH_Login+ CRLF, m.lsFile, .T.)
      =Strtofile("[.AUTH_Password]=" + .AUTH_Password+ CRLF, m.lsFile, .T.)
      =Strtofile("[.Subject]=" + .Subject+ CRLF, m.lsFile, .T.)
      =Strtofile("[.Attachment]=" + .Attachment+ CRLF, m.lsFile, .T.)
      =Strtofile("[.Message]=" + .Message+ CRLF, m.lsFile, .T.)
      =Strtofile("[.MessageHTML]=" + .MessageHTML+ CRLF, m.lsFile, .T.)
      =Strtofile("[.Data]=" + .Data + CRLF, m.lsFile, .T.)
      =Strtofile("[.TraceFile]=" + .TraceFile + CRLF, m.lsFile, .T.)
      =Strtofile("[.EML_Dir_Send]=" + .EML_Dir_Send + CRLF, m.lsFile, .T.)
      =Strtofile("[.EML_File_Send]=" + .EML_File_Send+ CRLF, m.lsFile, .T.)
      =Strtofile("[.EML_Data]=" + .EML_Data+ CRLF, m.lsFile, .T.)
      =Strtofile("[.data_mhtml]=" + .data_mhtml+ CRLF, m.lsFile, .T.)
      =Strtofile("[.Erreur]=" + .Erreur+ CRLF, m.lsFile, .T.)
      =Strtofile("-------------------------------------------------------------- "+CRLF, m.lsFile, .T.)
    Endwith
    Return m.lsFile
  Endfunc

  * v1.20 Reset all properties
  Procedure Reset()
    With This
      .Version = CLASSEVERSION
      .SMTP_HOST = ""
      .SMTP_PORT    = VFPWINSOCK_SMTP_PORT
      .SEND_GET_TimeOut = VFPWINSOCK_TIMEOUT
      .SMTP_HELO = ""
      .Codepage = "iso-8859-1"
      * .Content_Transfer_Encoding ="7bit"
      .Content_Transfer_Encoding ="quoted-printable" && v1.21
      .Priority = ""
      .Notification = .F.
      .silence = .F.
      .ReplyTo      = "" && v1.21
      .ReplyTo_Name = "" && v1.21
      .From         = ""
      .FROM_Name    = ""
      .To           = ""
      .TO_Name      = ""
      .CC           = ""
      .CC_Name      = ""
      .CCI          = ""
      .AUTH_Login   = ""
      .AUTH_Password= ""
      .Subject      = ""
      .Attachment   = ""
      .Message      = ""
      .MessageHTML  = ""
      .Data         = ""
      .TraceFile    = ""
      .EML_Dir_Send = ""
      .EML_File_Send= ""
      .EML_Data     = ""
      .data_mhtml   = ""
      .Erreur       = ""
      .BAD_Emails   = ""
    Endwith
  Endproc


  *--------------------------------------------------------------------------*
  *---> Encode un texte en quoted-printable
  Function EncodeTextQuotedPrintable(cTexte)
    Local cEncode, nI, cChar, nJ, nLen
    Local Array aLignes(1)
    *---> On coupe les lignes à 100 caractères
    m.cEncode = ""
    For m.nI = 1 To Alines(m.aLignes, m.cTexte)
      m.nLen = Len(m.aLignes[m.nI])
      If m.nLen > 100
        For m.nJ = 1 To m.nLen Step 100
          m.cEncode = m.cEncode + Substr(m.aLignes[m.nI], m.nJ, 100)
          If m.nLen - m.nJ >= 100
            *---> Les lignes continues finissent par = mais on met Chr(0) + Chr(0)
            *---> Par rapport à l'encodage du = par la suite
            m.cEncode = m.cEncode + Chr(0) + Chr(0)
          Endif
          m.cEncode = m.cEncode + CRLF
        Next
      Else
        m.cEncode = m.cEncode + m.aLignes[m.nI] + CRLF
      Endif
    Next
    *---> On commence par le caractère =
    m.cEncode = Strtran(m.cEncode, "=", "=3D")
    *---> On remplace les Chr(0) + Chr(0) en =
    m.cEncode = Strtran(m.cEncode, Chr(0) + Chr(0) + CRLF, "=" + CRLF)
    For m.nI = 1 To 255
      *---> On ne remplace par les caractères dans  [33 .. 127] et les espaces
      If Between(m.nI, 33, 127) Or Inlist(m.nI, 10, 13, 32)
        Loop
      Endif
      m.cEncode = Strtran(m.cEncode, Chr(m.nI), "=" + Right(Transform(m.nI, "@0"), 2))
    Next
    m.cEncode = Strtran(m.cEncode, CRLF + ".", CRLF + "=2E")
    Return m.cEncode
  Endfunc && EncodeTextQuotedPrintable

Enddefine


* -----------------------------------------------------------------------------------------------------------*
* -----------------------------------------------------------------------------------------------------------*
* -----------------------------------------------------------------------------------------------------------*
* v1.21 Poster un message en news // Post a simple message on NNTP Server (Network News Transfer Protocol)

Define Class VFP_Winsock_Send_News As VFP_Winsock
  * Propriétés // Properties
  NNTP_HOST    = ""
  NNTP_PORT    = VFPWINSOCK_NNTP_PORT
  NNTP_GROUP   = ""
  From         = ""
  FROM_Name    = ""
  Organization = ""
  Subject      = ""
  Message      = ""
  References   = ""

  Data         = ""
  MessageID    = ""


  Procedure Init
    DoDefault()
  Endproc

  Procedure Destroy
    DoDefault()
  Endproc

  Function Send
    Local llSend

    This.Erreur = ""
    This.trace("VFP_Winsock_SEND_NEWS")
    This.trace("VFP version : "+_vfp.Version)
    This.trace("VFPwinsock version : "+This.Version)

    * Test des valeurs Obligatoire
    If Empty(This.NNTP_HOST)
      This.Erreur = MSG_ERR01_MISSING_NNTP_HOST
      This.trace(This.Erreur)
      Return .F.
    Endif
    If Empty(This.NNTP_GROUP)
      This.Erreur = MSG_ERR01_MISSING_NNTP_GROUP
      This.trace(This.Erreur)
      Return .F.
    Endif
    If Empty(This.From)
      This.Erreur = MSG_ERR02_MISSING_FROM
      This.trace(This.Erreur)
      Return .F.
    Endif
    If Empty(This.FROM_Name)
      This.FROM_Name = This.From
    Endif
    If Empty(This.Organization)
      This.Organization = "Guest of "+This.NNTP_GROUP
    Endif

    With This.o_winsock
      .Close()
      ** .Protocol = 0     && 0=TCP Protocol, 1=UDP

      * Connexion au serveur
      .RemoteHost = This.NNTP_HOST
      .RemotePort = This.NNTP_PORT
      .Connect()
      This.trace("START : "+ Ttoc(Datetime()))
      This.trace("Connect() RemoteHost : "+.RemoteHost + " RemoteHostIP :" + .RemoteHostIP)
      This.trace("Connect() SocketHandle : "+Alltrim(Str(.SocketHandle)))
      If .state<> c_sckConnected
        If .state == -1
          This.Erreur = MSG_ERR_UNABLE_INTIALIZE_WS
        Else
          This.Erreur = MSG_ERR04_UNREACHABLE_HOST + " " + Str(.state)
        Endif
        This.trace(This.Erreur)
        .Close()
        Return .F.
      Endif

      * on doit recupérer un 200 du serveur
      llSend = This.WinSock_GetData("200")
      If m.llSend
        * Envoyer la commande POST retour 340 et recupérer le messageID proposé
        llSend = This.WinSock_SendData("POST" + CRLF, "340")
        If m.llSend
          This.MessageID = Strextract(This.LastData, "<",">",1,4)
          This.Data = ""
          * Path
          This.Data = This.Data + 'Path: ' + This.NNTP_HOST + '!not-for-mail'+ CRLF
          * From
          This.Data = This.Data + 'From: "' + This.FROM_Name + '" <' + This.From + '>' + CRLF
          * Newsgroups:
          This.Data = This.Data + 'Newsgroups: ' + This.NNTP_GROUP + CRLF
          * sujet / subject
          This.Data = This.Data + 'Subject: ' + This.Subject + CRLF
          * date
          This.Data = This.Data + 'Date: ' + This.DateTime_to_C822() + CRLF
          * Organization
          This.Data = This.Data + 'Organization: ' + This.Organization + CRLF
          * Message ID
          If Not Empty(This.MessageID)
            This.Data = This.Data + 'MessageID: ' + This.MessageID + CRLF
          Endif
          * References
          If Not Empty(This.References)
            This.Data = This.Data + 'References: ' + This.References + CRLF
          Endif
          * Message
          This.Data = This.Data + 'MIME-Version: 1.0' + CRLF
          This.Data = This.Data + 'Content-Type: text/plain;' + CRLF + Space(8) + 'charset="'+This.Codepage+'"' + CRLF
          This.Data = This.Data + 'Content-Transfer-Encoding: '+ This.Content_Transfer_Encoding + CRLF
          This.Data = This.Data + CRLF + Strtran(This.Message, CRLF + "." + CRLF, CRLF + "." + Chr(0) + CRLF)  +CRLF
          llSend = This.WinSock_SendData(This.Data + CRLF, "")
          * End Message
          llSend = This.WinSock_SendData(CRLF + "." + CRLF, "240") && 240
          If m.llSend
            This.MessageID = Strextract(This.LastData, "<",">",1,4)
          Else
            This.MessageID = ""
          Endif
        Endif
      Endif
      * Message QUIT
      This.WinSock_SendData("QUIT" + CRLF, "")
      This.trace("END : "+ Ttoc(Datetime()))
      If This.silence
      Else
        Wait Clear
      Endif
      .Close()
    Endwith
    Return m.llSend
  Endfunc

Enddefine


* -----------------------------------------------------------------------------------------------------------*
* v1.21 : création d'une classe pour Send_Mail et Send_News // Add a subclass for Send_Mail And Send_News

Define Class VFP_Winsock As Basique

  Version      = CLASSEVERSION
  Erreur       = ""
  silence      = .F.
  TraceFile    = ""  && v1.01 : si le nom du fichier est renseigné alors la classe trace dans ce fichier
  Codepage     = "iso-8859-1" && v1.07c Martin Haluza, new codePage property // Charset Property
  * Content_Transfer_Encoding ="7bit" && Content-Transfer-Encoding: 7bit
  Content_Transfer_Encoding ="quoted-printable" && v1.21

  SEND_GET_TimeOut = VFPWINSOCK_TIMEOUT  && v1.21 facultatif (remplace SMTP_Timeout) // optional
  LastData = "" && 1.21 LasGetDate : Chaine de la dernière lecture de GetData() // LastGetData : Buffer of last read of WinSock_GetData

  Procedure Init
    DoDefault()
    * v1.21 : passer silence a vraie si lancée en dll // force silence to .T. if used in MTDLL & DLL
    * v1.22 : updated by THN
    * If _vfp.StartMode ==5 Or _vfp.StartMode ==3
    If Inlist(Application.StartMode,2,3,5)
      This.silence=.T.
    Endif
    This.Newobject("o_Winsock", "ws2_32")
  Endproc

  Procedure Destroy
    Release o_winsock
    DoDefault()
  Endproc

  * Send DATA
  Protected Function WinSock_SendData(lsData, lsExpectedReturn)
    Local llSend
    Local liStart
    llSend = .T.
    *   v1.05 with this.o_winsock.object
    With This.o_winsock
      * si la connection est toujours ok
      If .state <> c_sckConnected
        This.trace(MSG_ERR10_CONNECT_LOST)
        If Empty(This.Erreur)
          This.Erreur = MSG_ERR10_CONNECT_LOST
        Endif
        llSend = .F.
      Else
        ** mis en remarque car avec ESMTP avec certains serveur (comme yahoo) cela semble perturber le retour 220
        **       .GETDATA(@v_Buffer)   && vide le buffer ?
        If Empty(m.lsExpectedReturn)
          * si pas de retour attendu : c'est les datas : ne pas mettre en log les datas
          *** this.Trace(" => SendData : send DATA [..] Nombre de caractères : "+Alltrim(Str(len(lsData))) )
          If Left(m.lsData,4)=="QUIT"
            This.trace(" => SendData : [QUIT] ")
          Endif
        Else
          This.trace(" => SendData : "+m.lsData+" Len= "+Alltrim(Str(Len(m.lsData)))+" Bytes")
        Endif
        *
        * v1.06b pb Christophe
        * si le send ne s'est pas fait : retenter si pas timeout et pas .state<>7
        * .SendData( m.lsData )
        liStart = Seconds()
        Do While Not .SendData( m.lsData )
          This.trace("=> WS2_32.SendDATA : " + MSG_ERR14_SENDDATA_RETRY + Alltrim(Str(Len(m.lsData))) )
          If (Seconds() - liStart) > This.SEND_GET_TimeOut Or .state <> c_sckConnected
            This.Erreur = " => WS2_32.SendData : " + MSG_ERR15_SENDDATA_TIMEOUT
            This.trace(This.Erreur)
            llSend = .F.
            * v1.11a
            lsExpectedReturn = "" && plus de retour attendu
            Exit
          Endif
          =This.attente()
        Enddo
        *
        If Not Empty(m.lsExpectedReturn)
          llSend = This.WinSock_GetData(m.lsExpectedReturn)
        Endif
      Endif
    Endwith
    Return m.llSend
  Endfunc

  * Winsock_GetDATA
  Protected Function WinSock_GetData(lsExpectedReturn)
    Local lsBuffer
    Local liStart
    Local llReturn
    llReturn = .T.
    This.LastData = "" && v1.21
    If Empty(m.lsExpectedReturn)
    Else
      *!*	     =this.attente()
      lsBuffer = ""
      liStart = Seconds()
      This.o_winsock.GetData(@m.lsBuffer)
      Do While Empty(m.lsBuffer)
        If (Seconds() - liStart) > This.SEND_GET_TimeOut
          This.Erreur = " <= SGetData : "+ MSG_ERR05_NOREPLY_HOST
          This.trace(This.Erreur)
          llReturn = .F.
          Exit
        Endif
        =This.attente()
        This.o_winsock.GetData(@m.lsBuffer)
      Enddo
      If m.llReturn
        This.LastData = m.lsBuffer && v1.21
        m.lsBuffer=Strtran(m.lsBuffer, CRLF, "")
        If This.silence
        Else
          Wait Windows Left(m.lsBuffer,254) Nowait
        Endif
        * un retour : est-il conforme à la valeur attendue
        If Left(m.lsBuffer, Len(m.lsExpectedReturn))==m.lsExpectedReturn
          This.trace(" <= SGetData : OK ["+m.lsBuffer+"]")
          llReturn = .T.
        Else
          This.Erreur = " <= SGetData : ERROR ["+m.lsBuffer+"] -> " + MSG_ERR09_WRONG_RESPONSE + m.lsExpectedReturn
          This.trace(This.Erreur)
          llReturn = .F.
        Endif
      Endif
    Endif
    Return m.llReturn
  Endfunc

  * v1-03 : attente doevents / inkey
  * v1.06 sleep ?
  * v1.20 : boucle
  Protected Procedure attente()
    Local liI
    liI = Seconds()
    Do While (Seconds()-liI) < 0.100 && 100 ms
      DoEvents
    Enddo
  Endproc

  * révisée v1.15
  * DateTime_to_C822 datetime return DateTime() in RFC822 Chap5 format
  * example : "Thu, 20 Mar 2008 10:16:49 +0100
  Protected Function DateTime_to_C822()
    Local lcReturn As String
    Local ldDateTime As Datetime
    Local Array t_jours[7]
    t_jours[1] = "Mon"
    t_jours[2] = "Tue"
    t_jours[3] = "Wed"
    t_jours[4] = "Thu"
    t_jours[5] = "Fri"
    t_jours[6] = "Sat"
    t_jours[7] = "Sun"
    Local Array t_mois[12]
    t_mois[01] = "Jan"
    t_mois[02] = "Feb"
    t_mois[03] = "Mar"
    t_mois[04] = "Apr"
    t_mois[05] = "May"
    t_mois[06] = "Jun"
    t_mois[07] = "Jul"
    t_mois[08] = "Aug"
    t_mois[09] = "Sep"
    t_mois[10] = "Oct"
    t_mois[11] = "Nov"
    t_mois[12] = "Dec"

    ldDateTime = Datetime()

    lcReturn = t_jours[DoW(ldDateTime , 2)] + ", "                              && day,
    lcReturn = lcReturn + Strtran(Str(Day(ldDateTime ),2), " ", "0") + " "      && dd
    lcReturn = lcReturn + t_mois[Month(ldDateTime )] + " "                      && mm
    lcReturn = lcReturn + Str(Year(ldDateTime ),4) + " "                        && yyyy
    lcReturn = lcReturn + Left(Time(ldDateTime ),8) + " "                       && HH:MM:SS
    lcReturn = lcReturn + This.GetEcartGMT()                                    && +0100
    Return lcReturn
  Endfunc

  *-----------------------------------------------------------------------------------------
  * v1.15
  * 19 Mars 2008 : GetTimeZoneInformation
  * http://msdn2.microsoft.com/en-us/library/ms724421(VS.85).aspx
  * Merci Fédéric
  *typedef struct _TIME_ZONE_INFORMATION { // tzi
  *    LONG       Bias;					4
  *    WCHAR      StandardName[ 32 ];		64 (unicode sinon 32)
  *    SYSTEMTIME StandardDate;			SizeOfSystemTime 16
  *    LONG       StandardBias;			4
  *    WCHAR      DaylightName[ 32 ];		64 (unicode sinon 32)
  *    SYSTEMTIME DaylightDate;			SizeOfSystemTime 16
  *    LONG       DaylightBias;			4
  *} TIME_ZONE_INFORMATION

  #Define TIME_ZONE_ID_UNKNOWN 0
  #Define TIME_ZONE_ID_STANDARD 1
  #Define TIME_ZONE_ID_DAYLIGHT 2

  Protected Function GetEcartGMT
    Local lcReturn As String
    Local liRetCode As Integer, TZInfo  As String, liEcartGMT As Integer
    Local liHours As Integer, liMinutes As Integer
    TZInfo = Space(172)
*#beautify keyword_nochange
    Declare Integer GetTimeZoneInformation In kernel32 String @TZInfo
*#beautify
    liRetCode = GetTimeZoneInformation(@TZInfo)
    Clear Dlls GetTimeZoneInformation
    Do Case
      Case m.liRetCode=TIME_ZONE_ID_UNKNOWN Or m.liRetCode=TIME_ZONE_ID_STANDARD
        liEcartGMT = -This.buf2dword(Substr(m.TZInfo, 1, 4))
      Case m.liRetCode = TIME_ZONE_ID_DAYLIGHT
        liEcartGMT = -(This.buf2dword(Substr(m.TZInfo, 1, 4)) + This.buf2dword(Substr(m.TZInfo, 169, 4)))
    Endcase
    lcReturn = Iif(m.liEcartGMT>=0, "+","-")
    liHours = Int(Abs(m.liEcartGMT)/60)
    liMinutes = Abs(m.liEcartGMT) - 60*m.liHours
    lcReturn = lcReturn + Padl(Alltrim(Str(m.liHours)),2,"0") + Padl(Alltrim(Str(m.liMinutes)),2,"0")
    Return lcReturn
  Endfunc

  Function buf2dword(lcBuffer)
    Return Asc(Substr(m.lcBuffer, 1,1)) + ;
      BitLShift(Asc(Substr(m.lcBuffer, 2,1)), 8) +;
      BitLShift(Asc(Substr(m.lcBuffer, 3,1)), 16) +;
      BitLShift(Asc(Substr(m.lcBuffer, 4,1)), 24)
  Endfunc

  * v1.07
  Protected Function Sys3()
    Private v_r_sys3, v_s_sys3
    v_s_sys3 = Sys(3)
    v_r_sys3 = Sys(3)
    Do While v_s_sys3 = v_r_sys3
      v_r_sys3 = Sys(3)
    Enddo
    Return v_r_sys3
  Endfunc

  * v1.05a
  Protected Function Encode64(lsString)
    Local lsReturn
    lsReturn=""
    If VFP_VERSION >= 7
      lsReturn = Strconv(lsString,13)  && encodage 64 a partir de vfp >= 7
    Else
      * v1-05a
      * Fonction d'encodage Base 64 (pour VFP <7 ne supportant strconv)
      * basée sur la publication de la Class : Base64 des travaux de
      *     Jeff Bowman <jbowman@jeffbowman.com> Source: http://jeffbowman.com/base64.htm
      * et sur : http://fox.wikis.com/wc.dll?Wiki~VfpBase64
      Local lcStr, liI
      For liI = 1 To Len(m.lsString) Step 3
        lcStr = Substr(m.lsString, m.liI, 3)
        Do Case
          Case Len(m.lcStr)=1
            lsReturn = m.lsReturn + Left(This.Split4(m.lcStr),2) + "=="
          Case Len(m.lcStr)=2
            lsReturn = m.lsReturn + Left(This.Split4(m.lcStr),3) + "="
          Otherwise
            lsReturn = m.lsReturn + This.Split4(m.lcStr)
        Endcase
      Next
    Endif
    Return m.lsReturn
  Endfunc

  Protected Function Split4(tcBinary)
    Local aEncTab, liI
    aEncTab = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
    Local Array aBase64[64]
    *  DIMENSION aBase64[64]
    For liI = 1 To Len(aEncTab)
      aBase64[m.liI]  = Substr(m.aEncTab, m.liI, 1)
    Next
    *********************************************************************************
    *  Method:  Split4()
    *  Purpose: Splits a 24-bit binary string into 4 6-bit
    *           strings, converts them into decimal values and
    *           returns them as concatenated Base64 characters
    *******************************************************************************
    Local liOutByte1, liOutByte2, liOutByte3, liOutByte4, liInByte1, liInByte2, liInByte3
    liInByte1 = Asc(Substr(m.tcBinary, 1, 1))
    liInByte2 = Asc(Substr(m.tcBinary, 2, 1))
    liInByte3 = Asc(Substr(m.tcBinary, 3, 1))
    liOutByte1 = Bitrshift(m.liInByte1, 2)
    liOutByte2 = Bitlshift(Bitand(m.liInByte1, 0x03), 4) + Bitrshift(Bitand(m.liInByte2, 0xf0), 4)
    liOutByte3 = Bitlshift(Bitand(m.liInByte2, 0x0f), 2) + Bitrshift(Bitand(m.liInByte3, 0xc0), 6)
    liOutByte4 = Bitand(m.liInByte3, 0x3f)
    Return aBase64[m.liOutByte1 + 1] + ;
      aBase64[m.liOutByte2 + 1] + ;
      aBase64[m.liOutByte3 + 1] + ;
      aBase64[m.liOutByte4 + 1]
  Endfunc

  *--------------------------------------------------------------------------*
  *---> v1.20 Convertir une chaine en 8859 quoted printable si nécessaire
  Protected Function String2Iso8859(cString)
    Local cEncode, nI, cChar, nAsc, useIso8859
    Store "" To m.cEncode, m.cBuffer
    useIso8859 = .F.
    For nI = 1 To Len(m.cString)
      cChar = Substr(m.cString, m.nI, 1)
      nAsc = Asc(m.cChar)
      Do Case
        Case m.nAsc = 32
          cBuffer = m.cBuffer + "_"
        Case m.nAsc < 32 Or m.nAsc = 61 Or m.nAsc > 126
          cBuffer = m.cBuffer + "=" + Right(Transform(m.nAsc, "@0"), 2)
          useIso8859 = .T.
        Otherwise
          cBuffer = m.cBuffer + m.cChar
      Endcase
      If Len(m.cBuffer) >= 58
        m.cEncode = m.cEncode + Iif(Empty(m.cEncode), "", CRLF + Chr(9)) + ;
          "=?iso-8859-1?Q?" +  m.cBuffer + "?="
        m.cBuffer = ""
      Endif
    Next
    If Not Empty(m.cBuffer)
      m.cEncode = m.cEncode + Iif(Empty(m.cEncode), "", CRLF + Chr(9)) + ;
        "=?iso-8859-1?Q?" +  m.cBuffer + "?="
    Endif
    If Not useIso8859
      m.cEncode = m.cString
    Endif
    Return m.cEncode
  Endfunc && String2Iso8859
  *--------------------------------------------------------------------------*

Enddefine
* -----------------------------------------------------------------------------------------------------------*

* -----------------------------------------------------------------------------------------------------------*
*                              VFP_Winsock_Send_Mail_dll.prg
* -----------------------------------------------------------------------------------------------------------*
* -----------------------------------------------------------------------------------------------------------*
* -----------------------------------------------------------------------------------------------------------*
* Définition d'une classe olepublic pour utilisation en DLL
* -----------------------------------------------------------------------------------------------------------*
* -----------------------------------------------------------------------------------------------------------*
* -----------------------------------------------------------------------------------------------------------*
#If COMPIL_AVEC_COM
Define Class SendMail As VFP_Winsock_Send_Mail OlePublic
  Procedure Init
    *application.AutoYield = .F.  && a voir ?
    DoDefault()
    This.silence=.T.
    Return
  Procedure Destroy
    DoDefault()
    *application.AutoYield = .T.
    Return
Enddefine
#Endif
* -----------------------------------------------------------------------------------------------------------*

* -----------------------------------------------------------------------------------------------------------*
*                              VFP_radius.prg
* -----------------------------------------------------------------------------------------------------------*

* -----------------------------------------------------------------------------------------------------------*
* Auteur  :
*    Francis FAURE        francis.faure@mvps.org
* -----------------------------------------------------------------------------------------------------------*
* Exploitation de WinSock
*    V1.16 : rajout du client Radius (Radius_Access_Request)
*    objet : écrire un client Radius - Trame Access-Request
*            dans le but de requêter le radius de Vasco avec un token Digipass (Authentification Forte)
* RFC : 2138
* Source : http://www.ietf.org/rfc/rfc2138.txt
* -----------------------------------------------------------------------------------------------------------*
* VFP_RADIUS
* -----------------------------------------------------------------------------------------------------------*
#If VFP_VERSION>=7

Define Class Radius_Access_Request As Custom
  RemoteHost = ""  && Adresse Of Radius server (Dns Name o IP)
  RemotePort = 1812  && standard radius Port
  SharedSecret = "" && Radius Shared Secret
  Username   =""  && user id in radius
  Password = ""     && password or Digipass
  * Digipass = PIN(4) + OTP (6) =10
  * Digipass = PIN(4) + OTP (6) + newPIN (4) + newPIN(4) = 18
  Request_Authenticator = ""
  PasswordMD5 = "" && Mot de Passe Hashé

  Procedure Init
    DoDefault()
    This.Newobject("o_Winsock", "ws2_32")
    Return

  Procedure Destroy
    Release o_Winsock
    DoDefault()
    Return

    * 0 - Radius Server not available
    * 1 - Error or TimeOut /send & Get
    * 2 - Access-Accept (Ok)
    * 3 - Access-Rejected (Not Ok) bad login / bas pass / bad pin / user locked / ....
  Function Access_Request
    Local liResult, Lii
    Local lsB1, lsB2
    Local lsSend, lsSend1, lsSend2, lsSend3, lsSend4, lsSend5
    Local lsService_Type, lsNASIdentifier, lsNAS_Port_Type
    Local liLen, liLen1, liLen2
    Local lsBuffer
    With This.o_Winsock
      .Close()
      .Protocol = 1     && 0=TCP Protocol, 1=UDP
      .RemoteHost = This.RemoteHost
      .RemotePort = This.RemotePort
      If .Connect()
        *
        * User-Name
        *
        This.Username = Alltrim(This.Username)
        lsSend1 = Chr(1) + Chr(Len(This.Username)+2) + This.Username
        *
        * Request_Authenticator (soupe de 16 octets)
        *
        This.Request_Authenticator = Left(Str(Rand(-1)*10^8,8,0) + Str(Seconds()*1000,8,0) + Sys(2015) + Space(16),16)
        *
        * Calculate MD5 User-Password / RFC2138
        *
        This.Password = Alltrim(This.Password)
        lsB1= md5(Alltrim(This.SharedSecret) + This.Request_Authenticator) && B1 = MD5(S + RA)
        This.PasswordMD5 = ""
        For Lii=1 To 16
          This.PasswordMD5 = This.PasswordMD5 + ;
            CHR(Bitxor(Asc(Substr(This.Password+Replicate(Chr(0),16), m.Lii, 1)),;
            EVALUATE("0x"+Substr(m.lsB1, (m.Lii-1)*2+1, 2))))
        Next
        * cas ou le mot de passe dépasse 16 octets
        If Len(This.Password)>16
          lsB2= md5(Alltrim(This.SharedSecret) + This.PasswordMD5 ) && B2 = MD5(S +c(1))
          For Lii=17 To 32
            This.PasswordMD5 = This.PasswordMD5 + ;
              CHR(Bitxor(Asc(Substr(This.Password+Replicate(Chr(0),16), m.Lii, 1)),;
              EVALUATE("0x"+Substr(m.lsB2, (Lii-17)*2+1, 2))))
          Next
        Endif
        *
        * User-Password
        *
        lsSend2 = Chr(2) + Chr(Len(This.PasswordMD5)+2) + This.PasswordMD5
        *
        * Service Type = Login
        *
        lsService_Type = Chr(0) + Chr(0) + Chr(0) + Chr(1) && login
        lsSend3 = Chr(6) + Chr(Len(m.lsService_Type)+2) + m.lsService_Type
        *
        * NAS Identifier
        *
        lsNASIdentifier = "Radius Client"
        lsSend4 = Chr(32) + Chr(Len(m.lsNASIdentifier)+2) + m.lsNASIdentifier
        *
        * NAS port Type = Virtual
        *
        lsNAS_Port_Type = Chr(0)+Chr(0)+Chr(0)+Chr(1) && Virtual
        lsSend5 = Chr(61) + Chr(Len(m.lsNAS_Port_Type )+2) + m.lsNAS_Port_Type
        * composition chaine finale a expédier
        lsSend = m.lsSend1 + m.lsSend2 + m.lsSend3 + m.lsSend4 + m.lsSend5
        liLen  = Len(m.lsSend) + 20
        liLen1 = Int(m.liLen/255)
        liLen2 = m.liLen - m.liLen1
        lsSend = Chr(1) + Chr(1) +  Chr(m.liLen1) + Chr(m.liLen2) + This.Request_Authenticator + m.lsSend
        * send UDP
        If .SendData(m.lsSend)
          lsBuffer = ""
          If .GetData(@m.lsBuffer)
            liResult = Asc(Substr(m.lsBuffer,1,1))
          Else
            liResult = 1
          Endif
        Else
          liResult = 1
        Endif
        .Close()
      Else
        liResult = 0
      Endif
    Endwith
    Return m.liResult
Enddefine
* -----------------------------------------------------------------------------------------------------------*
#Endif

* -----------------------------------------------------------------------------------------------------------*
*                              VFP_WS2_32.PRG.prg
* -----------------------------------------------------------------------------------------------------------*

*-------------------------------------------------------------------------------------*
*-------------------------------------------------------------------------------------*
*-------------------------------------------------------------------------------------*
*
* Adaptation par Francis Faure des codes source de  William GC Steinford et de AnatoliyMogylevets / fox.wikis.com
* // Adapted By Francis Faure, based on source code posted on fox.wikis.com
*
*-------------------------------------------------------------------------------------*
* Révisé le 4/12/2006 (cas appel 2 objets simultannés : gestion DLL en mémoire)
* v1.16 : Révisé le 10/06/2008 pour l'adaptation avec UDP (modified june 10, 2008 for add UDP protocol)
* v1.21 : Révisé le 08/06/2010 pour permettre la gestion du NNTP, POP3 // modified in june 2010 for nntp and pop3 protocol
*-------------------------------------------------------------------------------------*

Define Class WS2_32 As Custom

  * This class was written by William GC Steinford
  * based on code posted by AnatoliyMogylevets on fox.wikis.com
  * This class is designed to mimic the features of the MSWINSCK.WinSock activeX control

  * Public Interface Properties:
  * N - State
  * N - BytesReceived (read only)
  * C - RemoteHost
  * C - RemoteHostIP (read only)
  * N - RemortPort
  * C - cIn (read/write)
  * N - SocketHandle

  * Public Interface Methods:
  * L - Connect()
  * L - Close()
  * L - SendData( cData )
  * L - GetData( @cDataOut )

  * State property Values
  * 0 Default. Closed
  * 1 Open
  * 2 Listening
  * 3 Connection pending
  * 4 Resolving host
  * 5 Host resolved
  * 6 Connecting
  * 7 Connected
  * 8 Peer is closing the connection
  * 9 Error
  State = 0
  BytesReceived = 0
  RemotePort = ""
  RemoteHost = ""
  RemoteHostIP = ""
  *SocketHandle = 0
  SocketHandle = -1 && v1.19

  cIn = ''
  WaitForRead = 0

  *  LocalPort=0

  * Performance Adjustable Constants:
  #Define READ_SIZE 16384
  #Define READ_FROM_SERVER_TIMEOUT 1000

  * v1.14
  TimeOut_Connect = 45 && seconds

  * API Constants:
  #Define AF_INET 2
  #Define SOCK_STREAM 1
  #Define IPPROTO_TCP 6

  * V1.16
  #Define IPPROTO_UDP 17
  #Define SOCK_DGRAM      2

  #Define SOCKET_ERROR -1
  #Define FD_READ 1
  #Define HOSTENT_SIZE 16

  * V1.16
  Protocol = 0     && 0=TCP Protocol, 1=UDP    (TCP par défaut)

  * v1.18
  * http://msdn.microsoft.com/en-us/library/ms741394(VS.85).aspx

  * v1.21
  #Define SOL_SOCKET      0xffff          && /* options for socket level */
  #Define SO_RCVTIMEO     0x1006          && /* receive timeout */

  *
  * L Connect()
  *
  * v1.12 : modification lconnect en m.lconnect, etc...
  Function Connect()
    Local cBuffer, cPort, lResult
    Local nHost, cHost
    Local lconnect, nStart
    m.lResult = .F.

    If Not This.InitiateWinsock() && v1.19
      This.State = -1 && rajout d'un etat a State pour indiquer que : "unable to initialize Winsock on this computer"
      Return .F.
    Endif

    * résolution DNS/IP
    This.RemoteHost = Alltrim(This.RemoteHost) && v1.18
    This.RemoteHostIP = This.GetIP(This.RemoteHost)
    If Empty(This.RemoteHostIP)
      * THIS.State = 9 && v1.11
      This.State = 4 && v1.18
    Else
      This.UseDLL("socket")
      * v1.16
      If This.Protocol = 1 && UDP
        This.SocketHandle = socket(AF_INET, SOCK_DGRAM, IPPROTO_UDP)
      Else && TCP
        This.SocketHandle = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP)
      Endif

      If This.SocketHandle = SOCKET_ERROR
        * v1.11
        This.State = 9
      Else
        This.State = 6
        This.UseDLL("htons")
        m.cPort = This.num2word(htons(This.RemotePort))
        This.UseDLL("inet_addr")
        m.nHost = inet_addr(This.RemoteHostIP)
        m.cHost = This.num2dword(m.nHost)
        m.cBuffer = This.num2word(AF_INET) + m.cPort + m.cHost + Replicate(Chr(0),8)
        * v 1.11 : rajout d'une boucle de gestion timeout
        m.nStart = Seconds()
        m.lconnect=0
        * v1.14
        This.UseDLL("ws_connect")
        Do While .T.
          m.lconnect = ws_connect(This.SocketHandle, @m.cBuffer, Len(m.cBuffer))
          If (m.lconnect==0) Or ((Seconds() - m.nStart) > This.TimeOut_Connect)
            Exit
          Endif
          DoEvents
        Enddo
        If m.lconnect==0
          m.lResult=.T.
          This.State = 7
        Else
          This.State = 0
        Endif
      Endif
    Endif
    Return m.lResult

  Procedure Close
    If This.SocketHandle<>SOCKET_ERROR
      This.UseDLL("closesocket")
      =closesocket(This.SocketHandle)
    Endif
    This.SocketHandle = SOCKET_ERROR
    This.State = 0
  Endproc

  *
  * L SENDATA ( @data )
  *
  Function SendData(cData)
    Local cBuffer, nResult, lreturn
    m.cBuffer = m.cData
    This.UseDLL("send")
    nResult = Send(This.SocketHandle, @m.cBuffer, Len(m.cBuffer), 0)
    lreturn = (m.nResult <> SOCKET_ERROR)
    Return m.lreturn
  Endfunc

  *
  * L GETDATA( @data )
  *
  Function GetData(lsData)
    Local nReturn
    If This.BytesReceived>0
      lsData = This.cIn
      This.cIn = ''
      nReturn = .T.
    Else
      nReturn = .F.
    Endif
    Return m.nReturn
  Endfunc

  Protected Function BytesReceived_Access
    This.Rd()
    Return Len(This.cIn)
  Endfunc

  * v1.21 procedure rd() updated and simplified and now work for big message like POP3
  Protected Procedure Rd
    Local hEventRead, cRecv, nRecv
    Local cOptval
    This.UseDLL("setsockopt")
    This.UseDLL("recv")
    * set socket RECEIVE TIMEOUT  (SO_RCVTIMEO)
    * http://msdn.microsoft.com/en-us/library/ms740476%28VS.85%29.aspx
    cOptval = This.num2dword(READ_FROM_SERVER_TIMEOUT)
    =setsockopt(This.SocketHandle, SOL_SOCKET, SO_RCVTIMEO, @cOptval, Len(m.cOptval))
    **liStart=Seconds()
    Do While .T.
      cRecv = Repli(Chr(0), READ_SIZE)
      nRecv = recv(This.SocketHandle, @m.cRecv, READ_SIZE, 0)
      If m.nRecv<=0
        * nRecv<0 : Error
        * nRecv=0 : no error
        ** ? "Time Out", Seconds()-m.liStart
        Exit
      Else
        This.cIn = This.cIn + Left(m.cRecv, m.nRecv)
        If m.nRecv<READ_SIZE && else loop for the reste of message
          Exit
        Endif
      Endif
    Enddo
  Endproc
  *!*	  * v1.21 : procedure rd() updated and simplified, speed up
  *!*	  *         for POP3 and after long long work on problems under Win2000 and XP machine (but ok on windows 7)
  *!*	  *         WSACreateEvent(), WSAEventSelect(), WSAWaitForMultipleEvents(), WSACloseEvent(), WSAGetLastError() removed
  *!*	  Protected Procedure Rd_old
  *!*	    Local hEventRead, cRecv, nRecv, nFlags
  *!*	    Local liWaitForRead
  *!*	    Local liError
  *!*	    This.UseDLL("WSACreateEvent")
  *!*	    This.UseDLL("WSAEventSelect")
  *!*	    This.UseDLL("WSAWaitForMultipleEvents")
  *!*	    This.UseDLL("WSACloseEvent")
  *!*	    This.UseDLL("recv")
  *!*	    This.UseDLL("WSAGetLastError") && 1.21
  *!*	    * creating event, linking it to the socket and wait
  *!*	    hEventRead = WSACreateEvent()
  *!*	    * http://msdn.microsoft.com/en-us/library/ms741576(v=VS.85).aspx
  *!*	    =WSAEventSelect(This.SocketHandle, m.hEventRead, FD_READ)
  *!*	    * 1000 milliseconds can be not enough
  *!*	    * http://msdn.microsoft.com/en-us/library/ms742219%28v=VS.85%29.aspx
  *!*	    liWaitForRead = WSAWaitForMultipleEvents(1, @m.hEventRead, 0, READ_FROM_SERVER_TIMEOUT, 0)
  *!*	    =WSACloseEvent(m.hEventRead)
  *!*	    If m.liWaitForRead <> 0 && error or timeout
  *!*	      * debug
  *!*	      ? "(RD) Timeout =", m.liWaitForRead
  *!*	    Else
  *!*	      Do While .T.
  *!*	        cRecv = Repli(Chr(0), READ_SIZE)
  *!*	        nFlags = 0
  *!*	        nRecv = recv(This.SocketHandle, @m.cRecv, READ_SIZE, m.nFlags)
  *!*	        * debug
  *!*	        ? "  -> (RD) bytes read",  nRecv
  *!*	        Do Case
  *!*	          Case m.nRecv<0 && -1 = Error
  *!*	            liError = WSAGetLastError()
  *!*	            * debug
  *!*	            ? "WSAGetLastError()", m.liError
  *!*	            Do Case
  *!*	              Case m.liError == 0 && NO ERROR ! (some XP machine nRecv=-1 and WSAgetError=0 !
  *!*	                * debug
  *!*	                ?? " (RD) loop NOERROR"
  *!*	                doevents
  *!*	              Case m.liError == 10035 && WSAEWOULDBLOCK
  *!*	                * debug
  *!*	                ?? " (RD) loop WSAEWOULDBLOCK"
  *!*	                doevents
  *!*	              Otherwise
  *!*	                *      THIS.cIn =""
  *!*	                * debug
  *!*	                ?? " Error !"
  *!*	                Exit
  *!*	            Endcase
  *!*	          Case m.nRecv=0
  *!*	            * rien réceptionné mais pas d'erreur
  *!*	            * debug
  *!*	            ? "rien réceptionné"
  *!*	            exit
  *!*	          Case m.nRecv>0
  *!*	            This.cIn = This.cIn + Left(m.cRecv, m.nRecv)
  *!*	            If m.nRecv<READ_SIZE
  *!*	              EXIT
  *!*	            Endif
  *!*	        Endcase
  *!*	        * debug
  *!*	        * ?? " + (WS2_32) boucle recv()"
  *!*	      Enddo
  *!*	    Endif
  *!*	  Endproc

  Protected Function InitiateWinsock && v1.19 The WSAStartup function initiates use of the Winsock DLL by a process.
    * initialisation WS2_32.DLL
    * http://msdn.microsoft.com/library/default.asp?url=/library/en-us/winsock/winsock/wsastartup_2.asp
    Local nReturn
    This.UseDLL("WSAStartup")
    If WSAStartup(0x202, Repli(Chr(0),512)) <> 0
      * unable to initialize Winsock on this computer
      nReturn = .F.
    Else
      nReturn = .T.
    Endif
    Return m.nReturn
  Endfunc

  Procedure Destroy
    * termine l'utilisation de WS2_32
    * http://msdn.microsoft.com/library/default.asp?url=/library/en-us/winsock/winsock/wsacleanup_2.asp
    * v1.11 : problème : si 2 objets lancés en même temps (signalé par Christophe Chenavier) : la suppression du 1 objet enleve les DLL et fait planté le deuxieme Objet
    This.UseDLL("WSACleanup")
    =WSACleanup()
    This.RemoveDLL()
    DoDefault()
  Endproc

  * Fonction retournant l'adresse IP d'un nom d'hote (Résolution DNS)
  * appel gethostbyename
  * http://msdn.microsoft.com/library/default.asp?url=/library/en-us/winsock/winsock/gethostbyname_2.asp

  * http://msdn.microsoft.com/library/default.asp?url=/library/en-us/winsock/winsock/hostent_2.asp
  * typedef struct hostent {
  *   char FAR* h_name;
  *   char FAR  FAR** h_aliases;
  *   short h_addrtype;
  *   short h_length;
  *   char FAR  FAR** h_addr_list;
  * } hostent;
  *
  * attention winsock doit etre initialisée avant avec WSAStartup
  Protected Function GetIP(pcHost)
    Local nStruct, cBuffer, cIP
    Local nReturn
    This.UseDLL("gethostbyname")
    nStruct = gethostbyname(m.pcHost)
    If m.nStruct = 0
      nReturn = ""
    Else
      cBuffer = Repli(Chr(0), HOSTENT_SIZE)
      cIP = Repli(Chr(0), 4)
      This.UseDLL("CopyMemory")
      =CopyMemory(@m.cBuffer, m.nStruct, HOSTENT_SIZE)
      =CopyMemory(@m.cIP, This.buf2dword(Subs(cBuffer,13,4)),4)
      =CopyMemory(@m.cIP, This.buf2dword(m.cIP),4)
      This.UseDLL("inet_ntoa")
      nReturn = inet_ntoa(This.buf2dword(m.cIP))
    Endif
    Return m.nReturn

  Function buf2dword(lcBuffer)
    Return Asc(Substr(m.lcBuffer, 1,1)) + ;
      BitLShift(Asc(Substr(m.lcBuffer, 2,1)), 8) +;
      BitLShift(Asc(Substr(m.lcBuffer, 3,1)), 16) +;
      BitLShift(Asc(Substr(m.lcBuffer, 4,1)), 24)

  Function num2dword(lnValue)
    If m.lnValue < 0
      m.lnValue = 0x100000000 + m.lnValue
    Endif
    Local b0, b1, b2, b3
    m.b3 = Int(m.lnValue/2^24)
    m.b2 = Int((m.lnValue - m.b3*2^24)/2^16)
    m.b1 = Int((m.lnValue - m.b3*2^24 - m.b2*2^16)/2^8)
    m.b0 = Mod(m.lnValue, 2^8)
    Return Chr(m.b0)+Chr(m.b1)+Chr(m.b2)+Chr(m.b3)

  Function num2word(lnValue)
    Return Chr(Mod(m.lnValue,256)) + Chr(Int(m.lnValue/256))
  Endfunc

  * 04/12/2006 : rajout d'un paramétre a DeclareDLL
  *              si fonction utilisée (vérifier si la dll est en mémoire sinon la déclarer)
  *              renomer en UseDLL
  * v1.21 rajout de "*#beautify keyword_nochange" pour éviter le problème de casse suite macro IDE "Présentation" (Beautify)
  Protected Procedure UseDLL(p_function)
    Local lsFunction
    lsFunction = Alltrim(Upper(m.p_function))
    If This.is_DLL_Loaded(m.lsFunction)
    Else
*#beautify keyword_nochange
      Do Case
        Case m.lsFunction == Upper("WSAStartup")
          Declare Integer WSAStartup In ws2_32 Integer wVerRq, String lpWSAData
        Case m.lsFunction == Upper("WSACleanup")
          Declare Integer WSACleanup In ws2_32
        Case m.lsFunction == Upper("gethostbyname")
          Declare Integer gethostbyname In ws2_32 String Host
        Case m.lsFunction == Upper("inet_ntoa")
          Declare String inet_ntoa In ws2_32 Integer in_addr
        Case m.lsFunction == Upper("socket")
          Declare Integer socket In ws2_32 Integer af, Integer tp, Integer pt
        Case m.lsFunction == Upper("closesocket")
          Declare Integer closesocket In ws2_32 Integer s
          *        Case m.lsFunction == Upper("WSACreateEvent")
          *          Declare Integer "WSACreateEvent" In ws2_32
          *        Case m.lsFunction == Upper("WSACloseEvent")
          *          Declare Integer "WSACloseEvent" In ws2_32 Integer hEvent
          *        Case m.lsFunction == Upper("WSAEventSelect")
          *          Declare Integer "WSAEventSelect" In ws2_32 Integer s, Integer hEventObject, Integer lNetworkEvents
          *        Case m.lsFunction == Upper("WSAWaitForMultipleEvents")
          *          Declare Integer "WSAWaitForMultipleEvents" In ws2_32 Integer cEvents, Integer @lphEvents, Integer fWaitAll, Integer dwTimeout, Integer fAlertable
        Case m.lsFunction == Upper("inet_addr")
          Declare Integer inet_addr In ws2_32 String cp
        Case m.lsFunction == Upper("htons")
          Declare Integer htons In ws2_32 Integer hostshort
        Case m.lsFunction == Upper("connect")  Or  m.lsFunction == Upper("ws_connect")
          Declare Integer connect In ws2_32 As ws_connect Integer s, String @sname, Integer namelen
        Case m.lsFunction == Upper("send")
          Declare Integer send In ws2_32 Integer s, String @buf, Integer buflen, Integer Flags
        Case m.lsFunction == Upper("recv")
          Declare Integer recv In ws2_32 Integer s, String @buf, Integer buflen, Integer Flags
        Case m.lsFunction == Upper("RtlMoveMemory")  Or  m.lsFunction = Upper("CopyMemory")
          Declare RtlMoveMemory In kernel32 As CopyMemory String @Dest, Integer Src, Integer nLength
          *       Case m.lsFunction == Upper("WSAGetLastError") && 1.21
          *          Declare Integer "WSAGetLastError" In ws2_32
        Case m.lsFunction == Upper("setsockopt") && 1.21
          Declare Integer setsockopt In ws2_32 Integer s, Integer Level, Integer optname, String @optval, Integer optlen
        Otherwise
          ? "Debug Error : UseDLL('"+p_function+"') not defined"
          Cancel
      ENDCASE
*#beautify
      * DECLARE GetSystemTime IN kernel32 STRING @lpSystemTime
    Endif
  Endproc

  Protected Function is_DLL_Loaded(p_function)
    Local Array laTab[1,3]
    Local lii
    Local nReturn
    nReturn = .F.
    p_function = Alltrim(Upper(p_function)) && v1.21
    * v1.14
    If Int(Version(5)/100) >= 7  && en VFP6 la fonction ADLLs n'existe pas : on charge toujours la DLL
      For lii=1 To Adlls(laTab)
        * v1.21 : correction Jarek Niemczyk : tester le nom de la fonction avec "==" plutot que "="
        If Alltrim(Upper(laTab[m.lii,1])) == m.p_function Or ;
            ALLTRIM(Upper(laTab[m.lii,2])) == m.p_function
          nReturn = .T.
          Exit
        Endif
      Next
    Endif
    Return m.nReturn

  Protected Procedure RemoveDLL
    Clear Dlls gethostbyname
    Clear Dlls inet_ntoa
    Clear Dlls socket
    Clear Dlls closesocket
    *   Clear Dlls WSACreateEvent  && removed in v1.21
    *   Clear Dlls WSACloseEvent  && removed in v1.21
    *   clear dlls GetSystemTime
    Clear Dlls inet_addr
    Clear Dlls htons
    Clear Dlls WSAStartup
    Clear Dlls WSACleanup
    Clear Dlls ws_connect
    Clear Dlls Send
    Clear Dlls recv
    *   Clear Dlls WSAEventSelect  && removed in v1.21
    *   Clear Dlls WSAWaitForMultipleEvents  && removed in v1.21
    Clear Dlls CopyMemory
    *   Clear Dlls WSAGetLastError && removed in v1.21
    Clear Dlls setsockopt  && add in 1.21
  Endproc

Enddefine
*-------------------------------------------------------------------------------------*
*-------------------------------------------------------------------------------------*
*-------------------------------------------------------------------------------------*
* v1.21 extended WS32_32 for get data for POP and NNTP
*
Define Class WS2_32X As WS2_32
  * Public Interface Methods:
  * L GETDATA_DOT( @data, [lsBreak_If_Not_Start_by], [liTimeout] )
  *                by default lTimout is 6 (secondes)
  * v1.21
  *
  * GETDATA_DOT call (ws2_32) GETDATA until CRLF.CRLF (called end "DOT")
  * It's not a part of WS2_32 mimic, but easy for POP3 or NNTP protocol
  *
  * L GETDATA_DOT( @data, [lsBreak_If_Not_Start_by], [liTimeout] )
  *                by default lTimout is 6 (secondes)
  *
  * L GETDATA_DOT( @data ) && wait until DOT (CRLF . CRLF) or TimeOut
  * L GETDATA_DOT( @data, lsBreak_If_Not_Start_by )
  *                example for POP3    GETDATA_DOT("RETR 1", "+OK") -> exit if the the server reply other (ie "-ERR ...")
  *                example for NNTP    GETDATA_DOT("ARTICLE 1", "220") -> exit if the the server reply other (ie "423 bad article number...")
  * L GETDATA_DOT( @data, lsBreak_If_Not_Start_by, liTimeout )
  Function GetData_DOT(lsData, lsBreak_If_Not_Start_by, liTimeOut)
    Local nReturn
    Local liSeconds
    Local m.lsGetData
    If Type("m.liTimeOut")<>"N"
      liTimeOut = 30  && timeout, by default : ? seconds  ?
    Endif
    nReturn = .F.
    lsData = ""
    liSeconds = Seconds()
    Do While (Seconds()-m.liSeconds) < m.liTimeOut
      lsGetData=""
      If This.GetData(@m.lsGetData)
        lsData = m.lsData + m.lsGetData
        If Right(m.lsData, 5) == Chr(13)+Chr(10)+"."+Chr(13)+Chr(10)
          nReturn = .T.
          Exit
        Endif
        If Type("m.lsBreak_If_Not_Start_by")=="C" And Not Empty(m.lsBreak_If_Not_Start_by)
          If Left(m.lsData, Len(lsBreak_If_Not_Start_by)) <> m.lsBreak_If_Not_Start_by
            nReturn = .T.
            Exit
          Endif
        Endif
        DoEvents
      Endif
    Enddo
    Return m.nReturn
  Endfunc

Enddefine
*-------------------------------------------------------------------------------------*
*-------------------------------------------------------------------------------------*
*-------------------------------------------------------------------------------------*

* -----------------------------------------------------------------------------------------------------------*
*                              vfp_base.prg
* -----------------------------------------------------------------------------------------------------------*

* -----------------------------------------------------------------------------------------------------------*
* -----------------------------------------------------------------------------------------------------------*
* -----------------------------------------------------------------------------------------------------------*
* Base Class
*-------------------------------------------------------------------------------------*
*-------------------------------------------------------------------------------------*
*-------------------------------------------------------------------------------------*


Define Class Basique As Custom
  * 1.01 : si le nom du fichier est renseigné alors la classe trace dans ce fichier
  * 1.17 : rajoute de recherhce outlook/outlook express
  TraceFile = ""

  * -----------------------------------------------------------------------------------------------------------*
  * -----------------------------------------------------------------------------------------------------------*
  * -----------------------------------------------------------------------------------------------------------*
  * Pemet de générer le fichier de log
  Procedure Trace(p_texte)
    Local v_f
    If Not Empty(This.TraceFile)
      If File(This.TraceFile)
        v_f=Fopen(This.TraceFile,2)
        =Fseek(v_f, 0, 2)
      Else
        v_f=Fcreate(This.TraceFile)
      Endif
      =Fputs(v_f, Ttoc(Datetime())+" "+ Strtran(m.p_texte, CRLF, "<CR+LF>"))
      =Fclose(v_f)
    Endif
  Endproc

  * -----------------------------------------------------------------------------------------------------------*
  * -----------------------------------------------------------------------------------------------------------*
  * -----------------------------------------------------------------------------------------------------------*
  * 1.06 : lecture base de registre
  * source Design Or Decline
  Function Lire_Base_Registre(p_quoi)
    Local v_handle, v_account, v_retour
    v_retour = "" && v1.18 oubli d'initialiser cette variable
    * v1.17 : rajout test outlook / outlook express
    Local lsMailer
    lsMailer=""
    v_handle = This.KeyOpen("SOFTWARE\Clients\Mail","MACHINE")
    If v_handle<>0
      lsMailer = Alltrim(This.KeyGetValue(v_handle, [])) && OutlookExpress / Microsoft Outlook
      =This.KeyClose(v_handle)
    Endif
    Do Case
      Case lsMailer == "Microsoft Outlook"
        v_handle = This.KeyOpen("Software\Microsoft\Office\Outlook\OMI Account Manager")
        If v_handle<>0
          v_account = This.KeyGetValue(v_handle, "Default Mail Account")
          =This.KeyClose(v_handle)
          If Not Empty(v_account)
            v_handle = This.KeyOpen("Software\Microsoft\Office\Outlook\OMI Account Manager\Accounts\"+v_account)
            If v_handle<>0
              v_retour = This.KeyGetValue(v_handle, m.p_quoi)
              =This.KeyClose(v_handle)
            Endif
          Endif
        Endif
        This.Trace(lsMailer+" Reading registry : ["+m.p_quoi+"] response = " + m.v_retour)
        *CASE lsMailer == "Outlook Express"
      Otherwise
        v_handle = This.KeyOpen("Software\Microsoft\Internet Account Manager")
        If v_handle<>0
          v_account = This.KeyGetValue(v_handle, "Default Mail Account")
          =This.KeyClose(v_handle)
          If Not Empty(v_account)
            v_handle = This.KeyOpen("Software\Microsoft\Internet Account Manager\Accounts\"+v_account)
            If v_handle<>0
              v_retour = This.KeyGetValue(v_handle, m.p_quoi)
              =This.KeyClose(v_handle)
            Endif
          Endif
        Endif
        This.Trace(lsMailer+" Reading registry : ["+m.p_quoi+"] response = "+m.v_retour)
    Endcase
    Return m.v_retour
  Endfunc

  *--------------------------------------------------------------------------*
  #Define HKEY_LOCAL_MACHINE        0x80000002
  #Define HKEY_CURRENT_USER         0x80000001
  #Define REG_OPTION_NON_VOLATILE    0
  #Define REG_SZ                    1    && Unicode nul terminated string
  #Define REG_BINARY                3    && Free form binary
  #Define KEY_QUERY_VALUE         (0x0001)
  #Define KEY_SET_VALUE           (0x0002)
  #Define KEY_CREATE_SUB_KEY      (0x0004)
  #Define KEY_ENUMERATE_SUB_KEYS  (0x0008)
  #Define KEY_NOTIFY              (0x0010)
  #Define KEY_CREATE_LINK         (0x0020)
  #Define SYNCHRONIZE                (0x00100000)
  #Define STANDARD_RIGHTS_ALL        (0x001F0000)

  Hidden Function KeyOpen(p_key, p_user_machine)
    Private v_handle
    Private KEY_ALL_ACCESS
    Local nError
    * v1.17
    If Type("p_user_machine")<>"C"
      p_user_machine="USER"
    Endif
*#beautify keyword_nochange
    KEY_ALL_ACCESS = BitAnd(STANDARD_RIGHTS_ALL + ;
      KEY_QUERY_VALUE + ;
      KEY_SET_VALUE + ;
      KEY_CREATE_SUB_KEY + ;
      KEY_ENUMERATE_SUB_KEYS + ;
      KEY_NOTIFY + ;
      KEY_CREATE_LINK, BitNot(SYNCHRONIZE))
    declare integer RegOpenKeyEx in advapi32 ;
      integer hKey, ;                && handle of open key
      string  @lpSubKey, ;            && address of name of subkey to open
      integer ulOptions, ;            && reserved
      integer samDesired, ;            && security access mask
      integer @phkResult             && address of handle of open key
    v_handle = 0
    * v1.17
    IF (p_user_machine=="MACHINE")
      nError = RegOpenKeyEx(HKEY_LOCAL_MACHINE, p_key, 0, KEY_ALL_ACCESS, @v_handle)
    else
      nError = RegOpenKeyEx(HKEY_CURRENT_USER, p_key, 0, KEY_ALL_ACCESS, @v_handle)
    endif
*#beautify
    Return v_handle
  Endfunc
  *--------------------------------------------------------------------------*
  Hidden FUNCTION KeyGetValue(p_handle, p_value_name)
    Private v_reserved, v_type, v_data, v_data_size
    Local nError
*#beautify keyword_nochange
    Declare Integer RegQueryValueEx In advapi32 ;
      integer hKey, ;                && handle of key to query
      String  lpValueName, ;        && address of name of value to query
      Integer lpReserved, ;            && reserved
      Integer @lpType, ;            && address of buffer for value type
      String  @lpData, ;            && address of data buffer
      Integer @lpcbData             && address of data buffer size
*#beautify
    v_reserved = 0
    v_type = 0
    v_data = Space(256)
    v_data_size = 255
    nError = RegQueryValueEx(p_handle, ;
      p_value_name, ;
      v_reserved, ;
      @v_type, ;
      @v_data, ;
      @v_data_size)
    Return Left(v_data, v_data_size - 1)
  Endfunc
  *--------------------------------------------------------------------------*
  Hidden Procedure KeyClose(p_handle)
*#beautify keyword_nochange
    Declare Integer RegCloseKey In advapi32 integer hKey && handle of key to close
*#beautify
    =RegCloseKey(m.p_handle)
  Endproc
  *--------------------------------------------------------------------------*


Enddefine

* -----------------------------------------------------------------------------------------------------------*
* -----------------------------------------------------------------------------------------------------------*
* -----------------------------------------------------------------------------------------------------------*

* -----------------------------------------------------------------------------------------------------------*
*                              VFP_MD5.PRG
* -----------------------------------------------------------------------------------------------------------*

* -----------------------------------------------------------------------------------------------------------*
*
* MD5 Function => return MD5
* Based on class written by Patrick Gilles on www.atoutfox.org
*
* -----------------------------------------------------------------------------------------------------------*
* C MD5(String)
#IF VFP_VERSION>=7

Function MD5
PARAMETERS lsString
  LOCAL oMD5
  LOCAL lsReturn
  oMD5 = CREATEOBJECT("MD5")
  oMD5.tohash = m.lsSTring
  lsReturn = oMD5.Compute()
  oMD5=.null.
RETURN lsReturn


DEFINE CLASS MD5 AS Custom 
**********************************************************************************************************************
* Written in VFP by GILLES Patrick (C) IKOONET SARL www.ikoonet.com
* Une implémention en Visual Foxpro de l'algorithme MD5 message digest tel que definis dans le RFC 1321 par R. RIVEST
* de la sociét?RSA DATA SECURTY & MIT Laboratory for Computer Science
* A VFP implementation of the RSA Data Security, Inc. MD5 Message Digest Algorithm, as defined in RFC 1321.
**********************************************************************************************************************
* Usage (sample)
* SET PROCEDURE TO mdigest5
* MD5=CREATEOBJECT("MD5")
* MD5.tohash="abc"
* ? MD5.compute()
*******************************
tohash=""
DIMENSION SinusArray(64)
#DEFINE MAX_UINT 4294967296
#DEFINE NUMBEROFBIT 8 && UNICODE 16 (unicode not tested)


PROCEDURE init
  LOCAL I
  FOR I = 1 TO 64
    this.SinusArray(I)=TRANSFORM(MAX_UINT*ABS(SIN(I)),"@0")
    this.SinusArray(I)=BITAND(EVALUATE(this.SinusArray(I)),0xFFFFFFFF) &&CAST
  ENDFOR
RETURN .T.

PROCEDURE bourre
  LOCAL NBR_BIT_BOURRE, BOURRAGE
  Bourrage = CHR(128)+REPLICATE(CHR(0),63)
  NBR_BIT_BOURRE=(448-(LEN(THIS.TOHASH)*NUMBEROFBIT)%512)/NUMBEROFBIT
  IF (LEN(THIS.TOHASH)*NUMBEROFBIT)%512>=448
    NBR_BIT_BOURRE=(448+((512-LEN(THIS.TOHASH)*NUMBEROFBIT)%512))/NUMBEROFBIT
  ENDIF

RETURN LEFT(bourrage,NBR_BIT_BOURRE)


PROCEDURE acompleter
  LOCAL retour,decalage
  decalage=TRANSFORM(LEN(this.tohash)* NUMBEROFBIT,"@0")
  retour=""
  retour=retour+CHR(EVALUATE("0x"+SUBSTR(decalage,9,2)))
  retour=retour+CHR(EVALUATE("0x"+SUBSTR(decalage,7,2)))
  retour=retour+CHR(EVALUATE("0x"+SUBSTR(decalage,5,2)))
  retour=retour+CHR(EVALUATE("0x"+SUBSTR(decalage,3,2)))
  retour=retour+REPLICATE(CHR(0),4)
RETURN RETOUR


PROCEDURE MD5_F
LPARAMETERS x,y,z
RETURN BITOR(BITAND(X,Y),BITAND(BITNOT(X),Z))

PROCEDURE MD5_G
LPARAMETERS x,y,z
RETURN BITOR(BITAND(X,Z),BITAND(Y,BITNOT(Z)))

PROCEDURE MD5_H
LPARAMETERS x,y,z
RETURN BITXOR(X,Y,Z)

PROCEDURE MD5_I
LPARAMETERS x,y,z
RETURN BITXOR(Y,BITOR(X,BITNOT(Z)))

PROCEDURE ROTATE_LEFT
LPARAMETERS pivot, npivot
RETURN BITOR(BITLSHIFT(pivot,npivot),BITRSHIFT(pivot,32-Npivot))

procedure ronde1
LPARAMETERS PA,PB,PC,PD,PE,PF,PG
RETURN PB+this.ROTATE_LEFT(PA+this.MD5_F(PB,PC,PD)+PE+PG,PF)

procedure ronde2
LPARAMETERS PA,PB,PC,PD,PE,PF,PG
RETURN PB+this.ROTATE_LEFT(PA+this.MD5_G(PB,PC,PD)+PE+PG,PF)

PROCEDURE ronde3
LPARAMETERS PA,PB,PC,PD,PE,PF,PG
RETURN PB+this.ROTATE_LEFT(PA+this.MD5_H(PB,PC,PD)+PE+PG,PF)

PROCEDURE ronde4
LPARAMETERS PA,PB,PC,PD,PE,PF,PG
RETURN PB+this.ROTATE_LEFT(PA+this.MD5_I(PB,PC,PD)+PE+PG,PF)

PROCEDURE compute
  LOCAL tocompute,CPT_I,CPT_J,CPT_L,TMP_STRING,AA,BB,CC,DD,a,b,c,d,aa,bb,cc,dd
  A=BITAND(0x67452301,0xFFFFFFFF)
  B=BITAND(0xEFCDAB89,0xFFFFFFFF)
  C=BITAND(0x98BADCFE,0xFFFFFFFF)
  D=BITAND(0x10325476,0xFFFFFFFF)

  DIMENSION T_X(16)
  tocompute=this.tohash+this.bourre()+this.acompleter()
  lentocompute=LEN(tocompute)/64

  OldA=A
  OldB=B
  OldC=C
  OldD=D
  FOR CPT_I=0 TO lentocompute-1
    FOR CPT_J=0 TO 15
      T_X(CPT_J+1)=""
      T_X(CPT_J+1)=T_X(CPT_J+1)+RIGHT(TRANSFORM(ASC(SUBSTR(tocompute,(CPT_I*64)+(CPT_J*4)+4,1)),"@0"),2)
      T_X(CPT_J+1)=T_X(CPT_J+1)+RIGHT(TRANSFORM(ASC(SUBSTR(tocompute,(CPT_I*64)+(CPT_J*4)+3,1)),"@0"),2)
      T_X(CPT_J+1)=T_X(CPT_J+1)+RIGHT(TRANSFORM(ASC(SUBSTR(tocompute,(CPT_I*64)+(CPT_J*4)+2,1)),"@0"),2)
      T_X(CPT_J+1)=T_X(CPT_J+1)+RIGHT(TRANSFORM(ASC(SUBSTR(tocompute,(CPT_I*64)+(CPT_J*4)+1,1)),"@0"),2)

      T_X(CPT_J+1)=BITAND(EVALUATE("0x"+T_X(CPT_J+1)),0xFFFFFFFF) && CAST
      *? TRANSFORM(T_X(CPT_J+1),"@0")
      *?
    ENDFOR

    OldA=A
    OldB=B
    OldC=C
    OldD=D

    && Ronde1
    a=this.ronde1(a,b,c,d,T_X( 1), 7,this.sinusarray( 1))
    d=this.ronde1(d,a,b,c,T_X( 2),12,this.sinusarray( 2))
    c=this.ronde1(c,d,a,b,T_X( 3),17,this.sinusarray( 3))
    b=this.ronde1(b,c,d,a,T_X( 4),22,this.sinusarray( 4))

    a=this.ronde1(a,b,c,d,T_X( 5), 7,this.sinusarray( 5))
    d=this.ronde1(d,a,b,c,T_X( 6),12,this.sinusarray( 6))
    c=this.ronde1(c,d,a,b,T_X( 7),17,this.sinusarray( 7))
    b=this.ronde1(b,c,d,a,T_X( 8),22,this.sinusarray( 8))

    a=this.ronde1(a,b,c,d,T_X( 9), 7,this.sinusarray( 9))
    d=this.ronde1(d,a,b,c,T_X(10),12,this.sinusarray(10))
    c=this.ronde1(c,d,a,b,T_X(11),17,this.sinusarray(11))
    b=this.ronde1(b,c,d,a,T_X(12),22,this.sinusarray(12))

    a=this.ronde1(a,b,c,d,T_X(13), 7,this.sinusarray(13))
    d=this.ronde1(d,a,b,c,T_X(14),12,this.sinusarray(14))
    c=this.ronde1(c,d,a,b,T_X(15),17,this.sinusarray(15))
    b=this.ronde1(b,c,d,a,T_X(16),22,this.sinusarray(16))
    && ronde 2
    a=this.ronde2(a,b,c,d,T_X( 2), 5,this.sinusarray(17))
    d=this.ronde2(d,a,b,c,T_X( 7), 9,this.sinusarray(18))
    c=this.ronde2(c,d,a,b,T_X(12),14,this.sinusarray(19))
    b=this.ronde2(b,c,d,a,T_X( 1),20,this.sinusarray(20))

    a=this.ronde2(a,b,c,d,T_X( 6), 5,this.sinusarray(21))
    d=this.ronde2(d,a,b,c,T_X(11), 9,this.sinusarray(22))
    c=this.ronde2(c,d,a,b,T_X(16),14,this.sinusarray(23))
    b=this.ronde2(b,c,d,a,T_X( 5),20,this.sinusarray(24))

    a=this.ronde2(a,b,c,d,T_X(10), 5,this.sinusarray(25))
    d=this.ronde2(d,a,b,c,T_X(15), 9,this.sinusarray(26))
    c=this.ronde2(c,d,a,b,T_X( 4),14,this.sinusarray(27))
    b=this.ronde2(b,c,d,a,T_X( 9),20,this.sinusarray(28))

    a=this.ronde2(a,b,c,d,T_X(14), 5,this.sinusarray(29))
    d=this.ronde2(d,a,b,c,T_X( 3), 9,this.sinusarray(30))
    c=this.ronde2(c,d,a,b,T_X( 8),14,this.sinusarray(31))
    b=this.ronde2(b,c,d,a,T_X(13),20,this.sinusarray(32))

    && ronde 3
    a=this.ronde3(a,b,c,d,T_X( 6), 4,this.sinusarray(33))
    d=this.ronde3(d,a,b,c,T_X( 9),11,this.sinusarray(34))
    c=this.ronde3(c,d,a,b,T_X(12),16,this.sinusarray(35))
    b=this.ronde3(b,c,d,a,T_X(15),23,this.sinusarray(36))

    a=this.ronde3(a,b,c,d,T_X( 2), 4,this.sinusarray(37))
    d=this.ronde3(d,a,b,c,T_X( 5),11,this.sinusarray(38))
    c=this.ronde3(c,d,a,b,T_X( 8),16,this.sinusarray(39))
    b=this.ronde3(b,c,d,a,T_X(11),23,this.sinusarray(40))

    a=this.ronde3(a,b,c,d,T_X(14), 4,this.sinusarray(41))
    d=this.ronde3(d,a,b,c,T_X( 1),11,this.sinusarray(42))
    c=this.ronde3(c,d,a,b,T_X( 4),16,this.sinusarray(43))
    b=this.ronde3(b,c,d,a,T_X( 7),23,this.sinusarray(44))

    a=this.ronde3(a,b,c,d,T_X(10), 4,this.sinusarray(45))
    d=this.ronde3(d,a,b,c,T_X(13),11,this.sinusarray(46))
    c=this.ronde3(c,d,a,b,T_X(16),16,this.sinusarray(47))
    b=this.ronde3(b,c,d,a,T_X( 3),23,this.sinusarray(48))

    && ronde 4
    a=this.ronde4(a,b,c,d,T_X( 1), 6,this.sinusarray(49))
    d=this.ronde4(d,a,b,c,T_X( 8),10,this.sinusarray(50))
    c=this.ronde4(c,d,a,b,T_X(15),15,this.sinusarray(51))
    b=this.ronde4(b,c,d,a,T_X( 6),21,this.sinusarray(52))

    a=this.ronde4(a,b,c,d,T_X(13), 6,this.sinusarray(53))
    d=this.ronde4(d,a,b,c,T_X( 4),10,this.sinusarray(54))
    c=this.ronde4(c,d,a,b,T_X(11),15,this.sinusarray(55))
    b=this.ronde4(b,c,d,a,T_X( 2),21,this.sinusarray(56))

    a=this.ronde4(a,b,c,d,T_X( 9), 6,this.sinusarray(57))
    d=this.ronde4(d,a,b,c,T_X(16),10,this.sinusarray(58))
    c=this.ronde4(c,d,a,b,T_X( 7),15,this.sinusarray(59))
    b=this.ronde4(b,c,d,a,T_X(14),21,this.sinusarray(60))

    a=this.ronde4(a,b,c,d,T_X( 5), 6,this.sinusarray(61))
    d=this.ronde4(d,a,b,c,T_X(12),10,this.sinusarray(62))
    c=this.ronde4(c,d,a,b,T_X( 3),15,this.sinusarray(63))
    b=this.ronde4(b,c,d,a,T_X(10),21,this.sinusarray(64))

    a=a+olda
    b=b+oldb
    c=c+oldC
    d=d+oldd
  ENDFOR
  a=TRANSFORM(BITAND(a,0xFFFFFFFF),"@0") && cast
  b=TRANSFORM(BITAND(b,0xFFFFFFFF),"@0") && cast
  c=TRANSFORM(BITAND(c,0xFFFFFFFF),"@0") && cast
  d=TRANSFORM(BITAND(d,0xFFFFFFFF),"@0") && cast
  a=SUBSTR(a,9,2)+SUBSTR(a,7,2)+SUBSTR(a,5,2)+SUBSTR(a,3,2)
  b=SUBSTR(b,9,2)+SUBSTR(b,7,2)+SUBSTR(b,5,2)+SUBSTR(b,3,2)
  c=SUBSTR(c,9,2)+SUBSTR(c,7,2)+SUBSTR(c,5,2)+SUBSTR(c,3,2)
  d=SUBSTR(d,9,2)+SUBSTR(d,7,2)+SUBSTR(d,5,2)+SUBSTR(d,3,2)

RETURN a+b+c+d

PROCEDURE testsuite
&& return true if all the reference value are true
  LOCAL test
  test=.T.
  this.tohash=""
  IF LOWER(this.compute())#"d41d8cd98f00b204e9800998ecf8427e"
    RETURN this.tohash
  ENDIF
  this.tohash="a"
  IF LOWER(this.compute())#"0cc175b9c0f1b6a831c399e269772661"
    RETURN this.tohash
  ENDIF
  this.tohash="abc"
  IF LOWER(this.compute())#"900150983cd24fb0d6963f7d28e17f72"
    RETURN this.tohash
  ENDIF
  this.tohash="message digest"
  IF LOWER(this.compute())#"f96b697d7cb7938d525a2f31aaf161d0"
    RETURN this.tohash
  ENDIF
  this.tohash="abcdefghijklmnopqrstuvwxyz"
  IF LOWER(this.compute())#"c3fcd3d76192e4007dfb496cca67e13b"
    RETURN this.tohash
  ENDIF
  this.tohash="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
  IF LOWER(this.compute())#"d174ab98d277d9f5a5611c2c9f419d9f"
    RETURN this.tohash
  ENDIF
  this.tohash="12345678901234567890123456789012345678901234567890123456789012345678901234567890"
  IF LOWER(this.compute())#"57edf4a22be3c955ac49da2e2107b67a"
    RETURN this.tohash
  ENDIF
  RETURN test

ENDDEFINE
* -----------------------------------------------------------------------------------------------------------*
#ENDIF

* -----------------------------------------------------------------------------------------------------------*
*                              vfp_HTMLconverter.prg
* -----------------------------------------------------------------------------------------------------------*

* ---------------------------------------------------------------
* Francis FAURE 2008 VFP_HTMLconverter v1.0
*
* HTMLdecode() -> HTML to TXT
* HTMLencode() -> TXT to HTML
* ----------------------------------------------------------------


Define Class HTMLConverter As Custom
  llInBalise =.F.
  llInBody = .F.
  llInText = .T.
  lsBalise = ""
  ls_text = ""
  liNbHtmlChar =0
  Dimension HtmlCar[255,3] && array 1= char, 2=iso, 3=html
  HtmlCar = "" && store "" to HtmlCar
  Debug = .F. && debug mode

  Procedure Init
    DoDefault()
    With This
      .HtmlCharStore(Chr(32), "nbsp")
      .HtmlCharStore(Chr(34), "quot")
      .HtmlCharStore(Chr(38), "amp") && voir le probleme en encodant
      .HtmlCharStore(Chr(39), "")
      .HtmlCharStore("€", "euro")&& 128
      .HtmlCharStore("<", "lt")
      .HtmlCharStore(">", "gt")
      .HtmlCharStore("œ", "oelig")
      .HtmlCharStore("À", "Agrave")
      .HtmlCharStore("Ç", "Ccedil")
      .HtmlCharStore("È", "Egrave")
      .HtmlCharStore("É", "Eacute")
      .HtmlCharStore("Ê", "Ecirc")
      .HtmlCharStore("à", "agrave")
      .HtmlCharStore("á", "aacute")
      .HtmlCharStore("â", "acirc")
      .HtmlCharStore("ç", "ccedil")
      .HtmlCharStore("è", "egrave")
      .HtmlCharStore("é", "eacute")
      .HtmlCharStore("ê", "ecirc")
      .HtmlCharStore("ë", "euml")
      .HtmlCharStore("î", "icirc")
      .HtmlCharStore("ô", "ocirc")
      .HtmlCharStore("ù", "ugrave")
      .HtmlCharStore("û", "ucirc")

      .HtmlCharStore("»", "raquo")
      * ... A compléter

    Endwith
    Return

  Hidden Procedure HtmlCharStore(lsChr, lsHTML)
    With This
      .liNbHtmlChar = .liNbHtmlChar + 1                                       && incrémenter le nombre de caractères spéciaux stockés dans le tableau
      .HtmlCar[.liNbHtmlChar,1] = m.lsChr                                     && caractère
      .HtmlCar[.liNbHtmlChar,2] = "&#" + Alltrim(Str(Asc(m.lsChr),3,0)) + ";" && code iso
      If Type("m.lsHTML")="C"
        .HtmlCar[.liNbHtmlChar,3] = "&" + m.lsHTML + ";"                      && code html
      Endif
    Endwith
    Return

    * String : Return Text String from HTML String
  Function HTMLdecode(lsHTML)
    Local liI
    Local lsCur
    Local lsLastCur
    lsCur = ""
    lsLastCur = Chr(32)
    lsHTML=Strtran(m.lsHTML, Chr(13),"")
    lsHTML=Strtran(m.lsHTML, Chr(10),"")
    With This
      For liI = 1 To Len(m.lsHTML)
        lsCur = Substr(m.lsHTML, m.liI, 1)
        Do Case
          Case m.lsCur == Chr(32) And m.lsLastCur == Chr(32) && ignore double space
          Case m.lsCur == "<" And Not .llInBalise    && début de balise
            .llInBalise=.T.
          Case m.lsCur == ">" And .llInBalise        && fin de balise : si balise connues : traiter et remplacer
            .llInBalise=.F.
            .lsBalise = Upper(Alltrim(.lsBalise))
            Do Case
              Case Left(.lsBalise,4)="BODY"
                .llInBody = .T.
              Case Left(.lsBalise,5)="/BODY"
                .llInBody = .F.
              Case Left(.lsBalise,6)="SCRIPT"
                .llInText = .F.
              Case Left(.lsBalise,7)="/SCRIPT"
                .llInText = .T.
              Case Left(.lsBalise,5)="STYLE"
                .llInText = .F.
              Case Left(.lsBalise,6)="/STYLE"
                .llInText = .T.
              Case Left(.lsBalise,6)="SELECT"
                .llInText = .F.
              Case Left(.lsBalise,7)="/SELECT"
                .llInText = .T.
              Case Left(.lsBalise,3)="/TD" Or ;
                  LEFT(.lsBalise,3)="/TH"
                .Add_Text(Chr(9)) && TAB
              Case Left(.lsBalise,2)="BR" Or ;
                  LEFT(.lsBalise,2)="/P" Or ;
                  LEFT(.lsBalise,3)="/H1" Or ;
                  LEFT(.lsBalise,3)="/H2" Or ;
                  LEFT(.lsBalise,3)="/H3" Or ;
                  LEFT(.lsBalise,3)="/TR" Or ;
                  LEFT(.lsBalise,5)="/DIV" Or ;
                  LEFT(.lsBalise,6)="/TABLE" Or ;
                  LEFT(.lsBalise,5)="/FORM"
                .Add_Text(CRLF)
              Case Left(.lsBalise,2)="HR"
                .Add_Text(CRLF + Replicate("-", 80) + CRLF)
              Case Left(.lsBalise,2)="LI"
                .Add_Text(CRLF + "*")
              Case Left(.lsBalise,5)="TITLE" Or Left(.lsBalise,6)="/TITLE" Or ;
                  LEFT(.lsBalise,5)="TABLE" Or ;
                  LEFT(.lsBalise,4)="FORM" Or ;
                  LEFT(.lsBalise,4)="NOBR" Or Left(.lsBalise,5)="/NOBR" Or ;
                  LEFT(.lsBalise,2)="OL" Or Left(.lsBalise,3)="/OL" Or;
                  LEFT(.lsBalise,2)="H1" Or ;
                  LEFT(.lsBalise,2)="H2" Or ;
                  LEFT(.lsBalise,2)="H3" Or ;
                  LEFT(.lsBalise,2)="TR" Or ;
                  LEFT(.lsBalise,2)="TD" Or ;
                  LEFT(.lsBalise,2)="TH" Or ;
                  LEFT(.lsBalise,5)="TBODY" Or Left(.lsBalise,6)="/TBODY" Or ;
                  LEFT(.lsBalise,2)="UL" Or Left(.lsBalise,3)="/UL" Or ;
                  LEFT(.lsBalise,3)="/LI" Or ;
                  LEFT(.lsBalise,5)="INPUT" Or Left(.lsBalise,6)="/INPUT" Or ;
                  LEFT(.lsBalise,5)="LABEL" Or Left(.lsBalise,6)="/LABEL" Or ;
                  LEFT(.lsBalise,8)= "TEXTAREA" Or Left(.lsBalise,9)= "/TEXTAREA" Or ;
                  LEFT(.lsBalise,4)="FONT" Or Left(.lsBalise,5)="/FONT" Or ;
                  LEFT(.lsBalise,5)="SMALL" Or Left(.lsBalise,6)="/SMALL" Or ;
                  LEFT(.lsBalise,4)="SPAN" Or Left(.lsBalise,5)="/SPAN" Or ;
                  LEFT(.lsBalise,2)="A " Or Left(.lsBalise,2)="/A" Or ;
                  LEFT(.lsBalise,3)="IMG" Or ;
                  .lsBalise=="P" Or Left(.lsBalise,2)="P " Or ;
                  .lsBalise=="I" Or .lsBalise=="/I" Or Left(.lsBalise,2)="I " Or ;
                  .lsBalise=="B" Or .lsBalise=="/B" Or Left(.lsBalise,2)="B " Or ;
                  .lsBalise=="U" Or .lsBalise=="/U" Or Left(.lsBalise,2)="U " Or ;
                  .lsBalise=="STRONG" Or .lsBalise=="/STRONG" Or;
                  .lsBalise=="EM" Or .lsBalise=="/EM" Or;
                  .lsBalise=="CITE" Or .lsBalise=="/CITE" Or;
                  LEFT(.lsBalise,3)="DIV" Or;
                  LEFT(.lsBalise,7)="CENTER" Or Left(.lsBalise,7)="/CENTER" Or ;
                  LEFT(.lsBalise,8)="NOSCRIPT" Or Left(.lsBalise,9)="/NOSCRIPT"
                * rien
              Otherwise
                If .Debug
                  .Add_Text("<"+.lsBalise+">"+ CRLF)
                Endif
            Endcase
            .lsBalise = ""
          Otherwise
            If .llInBalise
              .lsBalise = .lsBalise + m.lsCur
            Else
              .Add_Text(m.lsCur)
            Endif
        Endcase
        lsLastCur = m.lsCur
      Next
      For liI=1 To .liNbHtmlChar
        .ls_text = Strtran(.ls_text, .HtmlCar[m.liI,3], .HtmlCar[m.liI,1], -1, -1, 0) && html
        .ls_text = Strtran(.ls_text, .HtmlCar[m.liI,2], .HtmlCar[m.liI,1], -1, -1, 0) && iso
      Next
      If .Debug
        Set Safety Off
        Strtofile(.ls_text, "c:\temp\html2txt_debug.txt")
        Set Safety On
      Endif
    Endwith
    Return This.ls_text
  Endfunc

  Hidden Procedure Add_Text(lsText)
    If This.llInBody And This.llInText
      This.ls_text = This.ls_text + m.lsText
    Endif
  Endproc

Enddefine
* ---------------------------------------------------------------

