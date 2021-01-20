import '../models/contact_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

final _root = 'https://randomuser.me/api/?results=20';

class ContactApiProvider {
  static Future<List<Contact>> fetchRandomUsers() async {
    final response = await http.get('$_root');
    final randomUserJson = json.decode(response.body);
    
    return randomUserJson['results'].map<Contact>((json) => Contact.fromJson(json)).toList();
  }
}