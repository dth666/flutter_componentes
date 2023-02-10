import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _nombre = "";
  String _email = "";
  String _password = "";
  String _fecha = "";
  List _poderes = ['Cagar', 'Tragar', 'Apestar'];
  String _opcionSeleccionada = 'Tragar';
  TextEditingController _inputFieldDateController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        children: <Widget>[
          _crearInput(),
          Divider(),
          _crearEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
          _crearFecha(context),
          Divider(),
          _crearDropDown(),
          Divider(),
          _crearPersona()
        ],
      ),
    );
  }

  Widget _crearInput() {
    return TextField(
        //autofocus: true,
        textCapitalization: TextCapitalization.sentences,
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            counter: Text('Chars ${_nombre.length}'),
            hintText: 'Pepito perez',
            labelText: 'Nombre',
            helperText: 'Escriba su nombre completo',
            suffixIcon: Icon(Icons.accessibility),
            icon: Icon(Icons.account_circle)),
        onChanged: (val) {
          setState(() {
            _nombre = val;
            print(_nombre);
          });
        });
  }

  Widget _crearPersona() {
    return ListTile(
      title: Text('Nombre es $_nombre'),
      subtitle: Text('Email $_email'),
      trailing: Text('Poder $_opcionSeleccionada'),
    );
  }

  Widget _crearEmail() {
    return TextField(
        //autofocus: true,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            counter: Text('Chars ${_email.length}'),
            hintText: 'email@dominio.com',
            labelText: 'Correo',
            helperText: 'Escriba su correo',
            suffixIcon: Icon(Icons.accessibility),
            icon: Icon(Icons.email)),
        onChanged: (val) {
          setState(() {
            _email = val;
            print(_email);
          });
        });
  }

  Widget _crearPassword() {
    return TextField(
        //autofocus: true,
        obscureText: true,
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            counter: Text('Chars ${_password.length}'),
            labelText: 'Password',
            helperText: 'Escriba su password',
            suffixIcon: Icon(Icons.accessibility),
            icon: Icon(Icons.password)),
        onChanged: (val) {
          setState(() {
            _password = val;
            print(_password);
          });
        });
  }

  Widget _crearFecha(BuildContext context) {
    return TextField(
        //autofocus: true,
        enableInteractiveSelection: false,
        controller: _inputFieldDateController,
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            counter: Text('Chars ${_password.length}'),
            labelText: 'Fecha',
            helperText: 'Escriba la fecha de nacimiento',
            suffixIcon: Icon(Icons.date_range),
            icon: Icon(Icons.date_range)),
        onTap: () {
          FocusScope.of(context).requestFocus(new FocusNode());
          _selectDate(context);
          /*setState(() {
            _fecha = val;
            print(_fecha);
          });*/
        });
  }

  void _selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: new DateTime(1983),
        lastDate: new DateTime(2025),
        locale: Locale('es', 'ES'));
    if (picked != null) {
      setState(() {
        _fecha = picked.toString();
        _inputFieldDateController.text = _fecha;
      });
    }
  }

  List<DropdownMenuItem<String>> _getOpcionesDropDown() {
    List<DropdownMenuItem<String>> lista = [];
    _poderes.forEach((poder) {
      lista.add(DropdownMenuItem(
        child: Text(poder),
        value: poder,
      ));
    });
    return lista;
  }

  Widget _crearDropDown() {
    return Row(
      children: <Widget>[
        Icon(Icons.select_all),
        SizedBox(
          width: 30,
        ),
        Expanded(
            child: DropdownButton(
                items: _getOpcionesDropDown(),
                value: _opcionSeleccionada,
                onChanged: (el) {
                  setState(() {
                    _opcionSeleccionada = el.toString();
                  });
                  print(el);
                }))
      ],
    );

    ;
  }
}
