import 'dart:html';
import 'dart:typed_data';

import 'package:barcode_generator/shared/custom_button.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Central de Aluminios del Valle'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 56),
          child: Column(
            children: [
              CustomButton(
                text: 'Descargar Plantilla',
                onPressed: () {
                  const String url =
                      'https://docs.google.com/spreadsheets/d/1sd8sU_i2aoj2vFHADu6j0_kyNWGD0zt_/edit?usp=sharing&ouid=113850207277339374301&rtpof=true&sd=true';
                  AnchorElement anchorElement = AnchorElement(href: url);
                  anchorElement.download = 'url';
                  document.body?.append(anchorElement);
                  anchorElement.click();

                  anchorElement.remove();
                },
                icon: Icons.cloud_download,
                width: 220,
                backgroundColor: Colors.transparent,
              ),
              const SizedBox(
                height: 8,
              ),
              CustomButton(
                text: 'Cargar Plantilla',
                onPressed: () async {
                  FilePickerResult? result;
                  try {
                    result = await FilePicker.platform.pickFiles(
                      type: FileType.custom,
                      allowedExtensions: ['xls', 'xlsx'],
                    );
                  } catch (e) {
                    print(e);
                  }

                  if (result != null) {
                    try {
                      Uint8List uploadfile = result.files.single.bytes!;
                      print(uploadfile);
                    } catch (e) {
                      print(e);
                    }
                  }
                },
                icon: Icons.cloud_upload_rounded,
                width: 220,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
