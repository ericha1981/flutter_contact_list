import '../models/contact_model.dart';
import 'package:http/http.dart' show Client;
import 'dart:convert';

final _root = 'https://randomuser.me/api/?results=20';

class ContactApiProvider {
  Client client = Client();

  Future<List<Contact>> fetchRandomUsers() async {
    final response = await client.get('$_root');
    final randomUserJson = json.decode(response.body);
    
    List<Contact> list = [];
    for (var user in randomUserJson['results']) {
      list.add(
        Contact.fromJson(user)
      );
    }
    return list;
  }
}