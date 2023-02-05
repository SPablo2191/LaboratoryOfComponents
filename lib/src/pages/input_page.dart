import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _name = '';
  String _email = '';
  String _password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        children: [
          Divider(),
          _getInput(),
          Divider(),
          _getEmail(),
          Divider(),
          _getPassword(),
          Divider(),
          _getPersona()
        ],
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
          helperText: '8 caracteres minimo',
          suffixIcon: Icon(Icons.accessibility),
          icon: Icon(Icons.account_circle)),
    );
  }

  _getPersona() {
    return ListTile(
      title: Text('Texto:'),
      subtitle: Text('$_name'),
    );
  }

  _getEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      onChanged: (value) => setState(() {
        _email = value;
      }),
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          hintText: 'e.g example@gmail.com', //placeholder
          labelText: 'Email',
          suffixIcon: Icon(Icons.alternate_email),
          icon: Icon(Icons.email_rounded)),
    );
  }

  _getPassword() {
    return TextField(
      obscureText: true,
      onChanged: (value) => setState(() {
        _password = value;
      }),
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0)), //placeholder
          labelText: 'Password',
          icon: Icon(Icons.password_rounded),
          suffixIcon: Icon(Icons.lock_open)),
    );
  }
}
