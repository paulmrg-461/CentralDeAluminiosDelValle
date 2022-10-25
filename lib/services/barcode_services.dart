import 'dart:io';
import 'dart:ui';
import 'dart:html' as html;
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';

class BarcodeServices {
  static Dio dio = Dio();
  static Future<bool> getBarcodeListPdf(File fileToSend) async {
    // FormData formData = FormData.fromMap({"name": "Template.xlsx", "file": file});
    final FormData formData = FormData.fromMap({
      'name': 'wendux',
      'age': 25,
      'file': await MultipartFile.fromFile(fileToSend.path,
          filename: 'Template.xlsx'),
    });
    final Response<dynamic> response = await dio
        .post("http://127.0.0.1:5050/api/upload-excel-file", data: formData);
    // final Directory dir = await getTemporaryDirectory();
    Directory appDocDir = await getApplicationDocumentsDirectory();
    print(appDocDir);
    File file = File("${appDocDir.path}/BarcodeList.pdf");
    final RandomAccessFile raf = file.openSync(mode: FileMode.write);
    // response.data is List<int> type
    raf.writeString(response.data);
    // await raf.close();

    return true;
  }

  static Future<bool> downloadTemplate() async {
    kIsWeb
        ? html.window
            .open("http://127.0.0.1:5050/api/download-template", "_blank")
        : downloadTemplateNativeDevice();
    return true;
  }

  static Future<bool> downloadTemplateNativeDevice() async {
    Directory appDocDir = await getApplicationDocumentsDirectory();
    print(appDocDir.path);
    final String finalPath = '${appDocDir.path}/Template.xlsx';
    final Response<dynamic> response = await dio.download(
        "http://127.0.0.1:5050/api/download-template", finalPath);

    return true;
  }
}
