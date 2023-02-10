import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  static var pageName = 'avatar';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
              margin: EdgeInsets.all(5),
              child: CircleAvatar(
                //child: Text('DTH'),
                backgroundImage: NetworkImage(
                    'https://i.pinimg.com/564x/30/a8/5a/30a85aea73e05538e1d35fd66bd32406.jpg'),
                 backgroundColor: Colors.black,
              )),
        ],
      ),
      body: Center(
        child: FadeInImage(
          fadeInDuration: Duration(milliseconds: 200),
          placeholder: AssetImage("assets/loading.gif"),
          image: NetworkImage('https://i0.wp.com/www.scienceofnoise.net/wp-content/uploads/2020/09/637251607192756219.jpg'),
        ),
      ),
    );
  }
}
