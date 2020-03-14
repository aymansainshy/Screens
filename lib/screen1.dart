import 'package:ayman/card_form.dart';
import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: 300,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.blue[400],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 60, right: 20, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Asim SharafAldeen',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 22),
              Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                // color: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: _buildColumn(CrossAxisAlignment.start),
                      ),
                      Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            style: BorderStyle.solid,
                            width: 1.5,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Icon(
                          Icons.repeat,
                          color: Colors.white,
                        ),
                      ),
                      Expanded(
                        child: _buildColumn(CrossAxisAlignment.end),
                      ),
                      SizedBox(height: 22),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 22),
              CardForm(),
              SizedBox(height: 22),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue[600],
                ),
                child: FlatButton(
                  onPressed: () {},
                  child: Center(
                    child: Text(
                      'Select Ticket',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

Widget _buildColumn(CrossAxisAlignment cross) {
  return Column(
    crossAxisAlignment: cross,
    children: <Widget>[
      Text(
        'Khatrtoum',
        style: TextStyle(
          color: Colors.white60,
          fontSize: 17,
        ),
      ),
      SizedBox(height: 10),
      Text(
        'KHG',
        style: TextStyle(
          color: Colors.white,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 10),
      Text(
        'Bahri',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
    ],
  );
}
