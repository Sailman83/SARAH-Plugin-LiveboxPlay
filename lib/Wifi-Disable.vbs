' script de deconnexion/reconnexion Internet Livebox-Play 3

call Main

sub Wait_IE(nav)
WScript.Sleep(1000)
Do While not nav.ReadyState = 4
Loop
end sub

sub Click_IE (nav,id)
nav.document.getelementbyID(id).click
call Wait_IE(nav)
end sub

sub init(nav)
set nav = CreateObject("InternetExplorer.Application")
nav.Visible = false
nav.navigate "192.168.1.1"
call Wait_IE(nav)
nav.document.getelementbyID("PopupUsername").Value = "admin"
nav.document.getelementbyID("PopupPassword").Value = "admin25"
nav.document.getelementbyID("bt_authenticate").click
call Wait_IE(nav)
end sub

sub bosse(nav)
'call Click_IE(nav,"rubric2") OLD
'call Click_IE(nav,"link3") OLD

nav.navigate "192.168.1.1/configWifi.html"
call Wait_IE(nav)

call Click_IE(nav,"bt_disable")
call Wait_IE(nav)
WScript.Sleep(1000)
call Click_IE(nav,"ct-msgbox-button1")
call Wait_IE(nav)
end sub

sub clean(nav)
nav.quit
end sub

sub main
dim nav

call init(nav)
call bosse(nav)
call clean(nav)
end sub