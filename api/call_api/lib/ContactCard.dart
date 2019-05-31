import 'package:flutter_web/material.dart';
import 'User.dart';

class ContactCard extends StatefulWidget {
  final User user;
  ContactCard(this.user);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ContactCardState(user);
  }
}

class ContactCardState extends State<ContactCard> {
  User user;
  ContactCardState(this.user);
  Widget get contactCard {
    return new Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: null,
            title: Text(user.name),
            subtitle: Text(user.email),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      child: contactCard,
    );
  }
}
