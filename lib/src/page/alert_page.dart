import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Alert Page')),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.ac_unit),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () => _mostrarAlerta(context),
            child: Text('Mostrar alerta'),
            style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue,
                shape: StadiumBorder())),
      ),
    );
  }
  void _mostrarAlerta(BuildContext context){
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30)
            ),
            title: Text('Título alerta'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('Contenido'),
                FlutterLogo(size: 100,)
              ],
            ),
            actions: <Widget>[
              //pop cierra el modal pero se puede hacer culaquier cosa como rutear  otgra página etc.
              TextButton(onPressed: () => Navigator.of(context).pop(), child: Text('Cancelar')),
              TextButton(onPressed: () {}, child: Text('Ok'))
            ],
          );
        },
      barrierDismissible: true
    );
  }
}
