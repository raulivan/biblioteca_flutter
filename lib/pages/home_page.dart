import 'package:bilioteca/components/cardwg/index.dart';
import 'package:bilioteca/pages/login_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildeBody(),
    );
  }

  Widget _buildAppBar() {
    return AppBar(
      title: Row(
        children: [
          Icon(Icons.library_books),
          SizedBox(
            width: 5,
          ),
          Text('Lib Flutter')
        ],
      ),
    );
  }

  Widget _buildeBody() => ListView(
        children: [
          CardWG('Tela de Login', Icons.lock, () {
            var route = MaterialPageRoute(builder: (context) => LoginPage());

            Navigator.push(context, route);
          }),
          CardWG('Tela Principal', Icons.home, () {
            print('Tela principal');
          }),
          CardWG('Tela de Cadastro', Icons.perm_contact_calendar, () {
            print('Tela de Cadastro');
          }),
        ],
      );
}
