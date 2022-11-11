bezahl.online Kassa Install Package

Please build following components with CGO_ENABLED=0
    gm65server
    printapi
    ptapiserver
    rfidserver
and put them under
    bezahlonlinekassa/usr/share/bezahlonline/ directory!
Build register web app and copy the 
    assets directory
and
    index.html
from registers dist directory under 
    bezahlonlinekassa/usr/share/bezahlonline/register/html/

To create install package:    
```
dpkg-deb --build bezahlonlinekassa/
```

after successful build rename the resulting bezahlonlinekassa.deb to bezahlonlinekassa_stable.deb
```
mv bezahlonlinekassa.deb bezahlonlinekassa_stable.deb
```

and check-in the bezahlonlinekassa_stable.deb to Github!

On the fresh ubuntu install use the one-liner to install the register!

One-liner install:
```
curl --proto '=https' --tlsv1.2 -sSf https://raw.githubusercontent.com/bezahl-online/kassa/main/install/register-setup.sh | sh
```
