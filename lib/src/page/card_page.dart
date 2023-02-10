import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  //const ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        //padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0)
      ),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.blue),
            title: Text('Título de la tarjeta'),
            subtitle: Text(
                'El poder es el único objetivo digno de un hombre inteligente. La debilidad es una afrenta a la naturaleza humana y debe ser eliminada a cualquier precio. Los amigos son meros instrumentos para alcanzar tus metas, y los enemigos deben ser destruidos sin piedad. La bondad es una debilidad y la compasión es una debilidad. La moralidad es una farsa inventada por los débiles para controlar a los fuertes. El fin justifica los medios, y cualquier cosa que ayude a alcanzar el poder es justificada. El poder es todo lo que importa, y lo alcanzaré a cualquier costo.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(onPressed: () {}, child: Text('Cancelar')),
              TextButton(onPressed: () {}, child: Text('Ok'))
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
      child: Column(
        children: <Widget>[
          FadeInImage(
            placeholder: AssetImage('assets/loading.gif'),
            image: NetworkImage(
                "https://cuarteldelmetal.com/wp-content/uploads/2021/01/black-metal.jpg"),
            fadeInDuration: Duration(milliseconds: 200),
            height: 250.0,
            fit: BoxFit.cover,
          ),

          /*Image(
            image: NetworkImage("https://cuarteldelmetal.com/wp-content/uploads/2021/01/black-metal.jpg"),
          ),*/
          Container(
              padding: EdgeInsets.all(10.0),
              child: Text("Long live to Black Metal"))
        ],
      ),
    );
  }
}
