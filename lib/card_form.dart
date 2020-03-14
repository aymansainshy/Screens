import 'package:flutter/material.dart';

class CardForm extends StatefulWidget {
  @override
  _CardFormState createState() => _CardFormState();
}

class _CardFormState extends State<CardForm> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          height: 300,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white60,
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: <Widget>[
                SizedBox(height: 10),
                Row(
                  children: <Widget>[
                    Expanded(child: _buildContainer()),
                    SizedBox(width: 20),
                    Expanded(child: _buildContainer()),
                  ],
                ),
                Form(
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 10),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Entes Date',
                        ),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Title',
                        ),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'City',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _buildContainer() {
  return Container(
    height: 40,
    width: 130,
    decoration: BoxDecoration(
      border: Border.all(
        color: Colors.blue[800],
        style: BorderStyle.solid,
        width: 1.5,
      ),
      color: Colors.blue[100],
      borderRadius: BorderRadius.circular(20),
    ),
    child: Center(
      child: Text(
        'Select Type',
        style: TextStyle(
          color: Colors.blue[900],
          fontSize: 16,
        ),
      ),
    ),
  );
}
