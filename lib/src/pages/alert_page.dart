import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Alert')),
      body: Center(
        child: ElevatedButton(
            onPressed: () => _showAlert(context),
            child: Text('Mostrar Alerta'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.amber,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
            )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.keyboard_arrow_left),
      ),
    );
  }

  _showAlert(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          title: Text('Advertencia'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Buenas! este es un mensaje de alerta'),
              FlutterLogo(
                size: 100.0,
              )
            ],
          ),
          actions: [
            ElevatedButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text('Cancelar')),
            ElevatedButton(onPressed: () {}, child: Text('Aceptar'))
          ],
        );
      },
    );
  }
}
