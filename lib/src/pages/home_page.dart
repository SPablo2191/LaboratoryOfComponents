import 'package:components_lab/src/pages/alert_page.dart';
import 'package:components_lab/src/providers/menu_provider.dart';
import 'package:components_lab/src/utils/icon_string_util.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Laboratory of Components')),
      ),
      body: _getList(),
    );
  }

  Widget _getList() {
    return FutureBuilder(
      future: menuProvider.loadData(), // its kinda like a subscriptions
      initialData: [], //optional field
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _getItemsListMap(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _getItemsList(List<dynamic>? data) {
    final List<Widget> options = [];
    data?.forEach((element) {
      final widgetTemp = ListTile(
        title: Text(element['texto']),
        leading: Icon(
          Icons.access_alarm,
          color: Colors.blue[600],
        ),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {},
      );
      options
        ..add(widgetTemp)
        ..add(Divider());
    });
    return options;
  }

  List<Widget> _getItemsListMap(List<dynamic>? data, BuildContext context) {
    if (data != null) {
      return data.map((element) {
        return Column(children: [
          ListTile(
            title: Text(element['texto']),
            subtitle: Text(element['ruta']),
            leading: getIcon(element['icon']),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AlertPage()));
            },
          ),
          Divider()
        ]);
      }).toList();
    } else {
      return [];
    }
  }
}
