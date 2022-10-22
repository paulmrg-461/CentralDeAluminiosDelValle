import 'dart:io';

import 'package:dio/dio.dart';

class BarcodeServices {
  static Dio dio = Dio();
  static Future<bool> getBarcodeListPdf(File file) async {
    // FormData formData = FormData.fromMap({"name": "Template.xlsx", "file": file});
    final FormData formData = FormData.fromMap({
      'name': 'wendux',
      'age': 25,
      'file':
          await MultipartFile.fromFile(file.path, filename: 'Template.xlsx'),
    });
    print(formData);
    final response = await dio
        .post("http://127.0.0.1:5050/api/upload-excel-file", data: formData);
    print(response);
    return true;
  }
}
