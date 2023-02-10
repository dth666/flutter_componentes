import 'package:flutter/material.dart';
import 'package:tut_componentes/src/page/alert_page.dart';
import 'package:tut_componentes/src/provider/menu_provider.dart';
import 'package:tut_componentes/src/utils/icono_string_util.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes DTH'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(children: _listaItems(snapshot.data!, context));
        //return ListView(children: _listaItems([]));
      },
    );

  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];
    for (var o in data) {
      final wt = ListTile(
        title: Text(o['texto']),
        leading: getIcon(o['icon']),
        trailing: const Icon(Icons.arrow_forward, color: Colors.pink,),
        onTap: (){
          Navigator.pushNamed(context, o['ruta']);
          /*
          Una forma de navegar
          final route = MaterialPageRoute(builder: (context) => AlertPage());
          Navigator.push(context, route);*/
        }
      );
      opciones.add(wt);
      opciones.add(Divider());
    }
    return opciones;
  }
}