import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({super.key});

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _value = 0;
  bool _isBlocked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliders'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            _createSlider(),
            _createSwitch(),
            _createCheckbox(),
            _createImage()
          ],
        ),
      ),
    );
  }

  _createSlider() {
    return Slider(
        value: _value,
        activeColor: Colors.amber,
        // divisions: 10, => frame to freme
        label: 'size',
        min: 0,
        max: 500,
        onChanged: (_isBlocked)
            ? null
            : (value) {
                setState(() {
                  _value = value;
                });
              });
  }

  _createImage() {
    return Expanded(
      child: Image(
          fit: BoxFit.contain,
          width: _value,
          image: NetworkImage(
              'https://iso.500px.com/wp-content/uploads/2014/07/big-one.jpg')),
    );
  }

  _createCheckbox() {
    return CheckboxListTile(
        title: Text('Bloquear slider'),
        value: _isBlocked,
        onChanged: (value) {
          setState(() {
            if (value != null) {
              _isBlocked = value;
            }
          });
        });
  }

  _createSwitch() {
    return SwitchListTile(
        title: Text('Bloquear slider'),
        value: _isBlocked,
        onChanged: (value) {
          setState(() {
            if (value != null) {
              _isBlocked = value;
            }
          });
        });
  }
}
