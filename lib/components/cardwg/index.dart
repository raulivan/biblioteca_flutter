import 'package:flutter/material.dart';

class CardWG extends StatelessWidget {
  String _texto;
  IconData _icone;
  Function _onClick;

  CardWG(this._texto, this._icone, this._onClick);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: this._onClick,
        child: Card(
          elevation: 5,
          child: Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  this._icone,
                  size: 30,
                ),
                Text(
                  this._texto,
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 20),
                ),
                Icon(Icons.arrow_right)
              ],
            ),
          ),
        ));
  }
}
