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
  String _selectedItem = 'fly';
  List<String> _powers = ['fly', 'super strength'];
  String _date = '';
  TextEditingController _inputDateFieldController = new TextEditingController();
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
          _getDate(context),
          Divider(),
          _getDropDown(),
          Divider(),
          _getPersona(),
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
          helperText: '8 characters minimum',
          suffixIcon: Icon(Icons.accessibility),
          icon: Icon(Icons.account_circle)),
    );
  }

  _getPersona() {
    return ListTile(
      title: Text('Nombre: $_name'),
      subtitle: Text('Email: $_email'),
      trailing: Text(_selectedItem),
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

  _getDate(BuildContext context) {
    return TextField(
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
      controller: _inputDateFieldController,
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0)), //placeholder
          labelText: 'Date',
          hintText: 'Birth date',
          icon: Icon(Icons.date_range_rounded),
          suffixIcon: Icon(Icons.perm_contact_cal)),
    );
  }

  _selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
        context: context,
        initialDate: new DateTime.now(),
        firstDate: new DateTime(2023),
        lastDate: new DateTime(2025),
        locale: Locale('es', 'ES'));
    if (picked != null) {
      setState(() {
        _inputDateFieldController.text = picked.toString();
      });
    }
  }

  List<DropdownMenuItem<String>>? getDropdownItems() {
    return _powers.map((power) {
      return DropdownMenuItem(
        child: Text(power),
        value: power,
      );
    }).toList();
    // _powers.forEach((power) => powerList.add(DropdownMenuItem(
    //       child: Text(power),
    //       value: power,
    //     )));
    // return powerList;
  }

  _getDropDown() {
    return Row(
      children: [
        Icon(Icons.abc),
        SizedBox(
          width: 30,
        ),
        Expanded(
          child: DropdownButton(
              value: _selectedItem,
              items: getDropdownItems(),
              onChanged: (value) {
                setState(() {
                  if (value != null) {
                    _selectedItem = value;
                  } else {}
                  ;
                });
              }),
        ),
      ],
    );
  }
}
