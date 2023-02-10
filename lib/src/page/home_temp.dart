import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['Uno','Dos','Tres','Cuatro','Cinco','Seis'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("DTH666 Components APP")),
      body: ListView(
        children: _crearItemsCorta(),
      ),
    );
  }
  List<Widget> _crearItems(){
    List<Widget> l = <Widget>[];
    for(String opt in opciones){
      final w = ListTile(title: Text(opt));
      l..add(w)..add(const Divider());
    }
    return l;
  }

  List<Widget> _crearItemsCorta() {
    return opciones.map((e) {
      return Column(
        children: <Widget>[ListTile(
          title: Text(e),
          subtitle: Text('Sub'),
          leading: Icon(Icons.add),
          trailing: Icon(Icons.arrow_back),
          onTap: (){},
        ),Divider()],
      );
    }).toList();
  }

}