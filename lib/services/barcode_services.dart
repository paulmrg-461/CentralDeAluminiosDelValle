import 'dart:convert';
import 'package:file_picker/file_picker.dart';
import 'package:http/http.dart' as http;
import 'dart:html' as html;

class BarcodeServices {
  static Future<bool> getBarcodeListPdf(PlatformFile fileToSend) async {
    final request = http.MultipartRequest(
      "POST",
      Uri.parse("http://127.0.0.1:5050/api/upload-excel-file"),
    );

    request.files.add(http.MultipartFile(
        'file', fileToSend.readStream!, fileToSend.size,
        filename: fileToSend.name));

    final http.StreamedResponse resp = await request.send();

    //------Read response
    final result = await resp.stream.single;
    final base64 = base64Encode(result);

    // Create the link with the file
    final anchor =
        html.AnchorElement(href: 'data:application/octet-stream;base64,$base64')
          ..target = 'blank';
    // add the name
    anchor.download = 'BarcodeList.pdf';

    // trigger download
    html.document.body!.append(anchor);
    anchor.click();
    anchor.remove();

    return true;
  }

  static Future<bool> downloadTemplate() async {
    html.window.open("http://127.0.0.1:5050/api/download-template", "_blank");
    return true;
  }
}
