import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  BasicPage({Key key}) : super(key: key);

  final titleStyle = TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold);
  final subtitleStyle = TextStyle(fontSize: 15.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          _createImage(),
          _createTitle(),
          SizedBox(height: 20.0),
          _createActions(),
          _createText(),
          _createText(),
          _createText(),
          _createText(),
          _createText(),
          _createText(),
          _createText(),
        ],
      ),
    ));
  }

  Widget _createImage() {
    return Container(
      width: double.infinity,
      child: Image(
        fit: BoxFit.cover,
        height: 200.0,
        image: NetworkImage(
            'https://www.tmb.ie/wp/wp-content/uploads/2018/07/Best-backpacking-destinations-1-1.jpg'),
      ),
    );
  }

  Widget _createTitle() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Backpacking is so good', style: titleStyle),
                  SizedBox(height: 7.0),
                  Text('You can go everywhere', style: subtitleStyle)
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red,
              size: 25.0,
            ),
            Text(
              '40',
              style: TextStyle(fontSize: 25.0),
            )
          ],
        ),
      ),
    );
  }

  Widget _createActions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _createAction(Icons.call, 'Call'),
        _createAction(Icons.near_me, 'Route'),
        _createAction(Icons.share, 'Share'),
      ],
    );
  }

  Widget _createAction(IconData icon, String text) {
    return Column(
      children: <Widget>[
        Icon(icon, color: Colors.blue, size: 25.0),
        SizedBox(height: 10.0),
        Text(text, style: TextStyle(fontSize: 15.0, color: Colors.blue))
      ],
    );
  }

  Widget _createText() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 35.0),
        child: Text(
          'Eu nisi enim non voluptate nisi laboris culpa est labore deserunt proident laboris. Laboris laboris laborum nulla qui est qui velit pariatur sit id excepteur. Est culpa aute ut nulla deserunt consequat laboris cillum.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
