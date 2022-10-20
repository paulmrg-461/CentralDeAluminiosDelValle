import 'package:barcode_generator/shared/custom_button.dart';
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
                onPressed: () => print('Hola Amiguis'),
                icon: Icons.cloud_download,
                width: 220,
                backgroundColor: Colors.transparent,
              ),
              const SizedBox(
                height: 8,
              ),
              CustomButton(
                text: 'Cargar Plantilla',
                onPressed: () => print('Hola Amiguis'),
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
