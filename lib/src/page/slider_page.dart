import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({Key? key}) : super(key: key);

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 100.0;
  bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _crearCheckbox(),
            _crearSwitch(),
            Expanded(
              child: _crearImagen(),
            )
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
        activeColor: Colors.indigoAccent,
        label: 'Tamaño imagen',
        // divisions: 20,
        min: 100,
        max: 400,
        value: _valorSlider,
        onChanged: (_bloquearCheck) ? null : (val) {
        setState(() {
                  _valorSlider = val;
                });
              });
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
          "https://www.revolvermag.com/sites/default/files/media/images/article/avatar-johan_carlen-2b.jpg"),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }

  Widget _crearCheckbox() {
    /*return Checkbox(
      value: _bloquearCheck,
      onChanged: (value) {
        setState(() {
          _bloquearCheck = value!;
        });
      },
    );*/
    return CheckboxListTile(value: _bloquearCheck,
      onChanged: (value) {
        setState(() {
          _bloquearCheck = value!;
        });
      },
    );
  }

  Widget _crearSwitch() {
    return SwitchListTile(value: _bloquearCheck,
      onChanged: (value) {
        setState(() {
          _bloquearCheck = value!;
        });
      },
    );
  }
}
