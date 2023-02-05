import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _name = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        children: [_getInput(), _getPersona()],
      ),
    );
  }

  _getInput() {
    return TextField(
      // autofocus: true,
      onChanged: (value) => setState(() {
        _name = value;
      }),
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          counter: Text('characters ${_name.length}'),
          hintText: 'e.g example123', //placeholder
          labelText: 'Username',
          helperText: 'tiene que tener 8 caracteres',
          suffixIcon: Icon(Icons.accessibility),
          icon: Icon(Icons.account_circle)),
    );
  }

  _getPersona() {
    return ListTile(
      title: Text('$_name'),
    );
  }
}
