JsOsaDAS1.001.00bplist00�Vscript_�

var app = Application.currentApplication()
app.includeStandardAdditions = true
     
var dialogText = "The current date and time is " + (app.currentDate())
app.displayDialog(dialogText)
// Result: {"buttonReturned":"OK"}

                            �jscr  ��ޭ