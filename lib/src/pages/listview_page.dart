import 'dart:async';

import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({super.key});

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  ScrollController _scrollController = new ScrollController();
  List<int> _numbers = [];
  int _lastItem = 0;
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Listas'),
        ),
        body: Stack(
          children: [_createListView(), _createLoading()],
        ));
  }

  @override
  void initState() {
    super.initState();
    _addTenItems();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        _fetchData();
        // _addTenItems();
      }
    });
  }

  @override
  void dispose() {
    // oN DESTROY
    super.dispose();
    _scrollController.dispose();
  }

  _createListView() {
    return ListView.builder(
        controller: _scrollController,
        itemCount: _numbers.length,
        itemBuilder: (context, index) {
          final image = _numbers[index];
          return FadeInImage(
              placeholder: AssetImage('assets/jar.gif'),
              image:
                  NetworkImage('https://picsum.photos/500/300/?image=$image'));
        }); // como se va a dibujar este componente
  }

  _addTenItems() {
    for (var i = 0; i < 10; i++) {
      _numbers.add(_lastItem++);
    }
    setState(() {});
  }

  _fetchData() async {
    _isLoading = true;
    return new Timer(Duration(seconds: 2), _responseHTTP());
  }

  _responseHTTP() {
    _isLoading = false;
    _scrollController.animateTo(_scrollController.position.pixels + 100,
        curve: Curves.fastOutSlowIn, duration: Duration(milliseconds: 250));
    _addTenItems();
  }

  _createLoading() {
    if (_isLoading) {
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(),
            ],
          ),
        ],
      );
    } else {
      return Container();
    }
  }
}
