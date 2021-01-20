import 'package:flutter/material.dart';
import '../resources/contact_api_provider.dart';
import '../models/contact_model.dart';

class ContactList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future<List<Contact>> _contact = ContactApiProvider.fetchRandomUsers();
    return FutureBuilder<List<Contact>>(
      future: _contact,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text('Error loading random users!');
        }

        if (snapshot.hasData) {
          return _listContacts(snapshot.data);
        } else {
          return Text('Loading...'); // Replace this with CircularProgressindicator()
        }
      }
    );
  }

  Widget _listContacts(List<Contact> list) {
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(list[index].pictureThumbnail),
            backgroundColor: Colors.grey[300],
          ),
          title: contactDetails(list[index]),
          subtitle: Text('${list[index].username}'),
          trailing: Column(
            children: <Widget>[
              Icon(Icons.more_vert),
            ],
          ),
          onTap: () {
            print('${list[index].username}');
          },
        );
      },
    );
  }

  Widget contactDetails(Contact contact) {
    return Text('${contact.first} ${contact.last}');
  }
}