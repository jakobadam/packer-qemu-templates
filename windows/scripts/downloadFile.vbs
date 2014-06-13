
Dim strFileURL
Dim strFileLocation

strFileURL=WScript.Arguments(0)
strHDLocation=WScript.Arguments(1)

Set objXMLHTTP = CreateObject("WinHttp.WinHttpRequest.5.1")
objXMLHTTP.SetTimeouts 600000, 600000, 600000, 600000

objXMLHTTP.open "GET", strFileURL, false
objXMLHTTP.send()

If objXMLHTTP.Status = 200 Then
  Set objADOStream = CreateObject("ADODB.Stream")
	objADOStream.Open
	objADOStream.Type = 1 'adTypeBinary

	objADOStream.Write objXMLHTTP.ResponseBody
	objADOStream.Position = 0    'Set the stream position to the start

	Set objFSO = Createobject("Scripting.FileSystemObject")
	  If objFSO.Fileexists(strHDLocation) Then objFSO.DeleteFile strHDLocation
	Set objFSO = Nothing

	objADOStream.SaveToFile strHDLocation
	objADOStream.Close
	Set objADOStream = Nothing
Else
	WScript.Echo objXMLHTTP.Status
End if

Set objXMLHTTP = Nothing