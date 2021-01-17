# flutter_contact_list

Simple flutter app that fetches the random users from the web and display using **ListView.builder** and **ListTile** widget.

<br />

### Folder structure
```
lib
├── models                   
    ├── contact_model.dart        # Contact class
├── resources                     
    ├── contact_api_provider.dart # makes API call and serialize the response object
├── screens                     
    ├── contact_list.dart         # display contacts in ListView
    ├── home.dart                 # home page
└── main.dart                     # main entry of the app
```
<br />
<br />

### Description

Use the http package to make the API call to https://randomuser.me/api/?results=20 (limit to 20 users) and parse the response object to display info on the My Contact page.
<br />
<br />

### Main Feature

Since http returns a Future object, **FutureBuilder** widget was used to read the data.


```dart
class ContactList extends StatelessWidget {
  final ContactApiProvider _contactApiProvider = ContactApiProvider();

  @override
  Widget build(BuildContext context) {
    Future<List<Contact>> _contact = _contactApiProvider.fetchRandomUsers();
    return FutureBuilder<List<Contact>>(
      future: _contact,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return _listContacts(snapshot.data);
        } else {
          if (snapshot.hasError) {
            return Text('Error loading random users!');
          }
          return Text('Loading...');
        }
      }
    );
  }
  ...
}
```
<br />

### Screenshot

Emulator: iOS (iPhone 12 Pro Max)

[![Simulator-Screen-Shot-i-Phone-12-Pro-Max-2021-01-17-at-12-04-52.png](https://i.postimg.cc/qvBJnqKV/Simulator-Screen-Shot-i-Phone-12-Pro-Max-2021-01-17-at-12-04-52.png)](https://postimg.cc/N5Vvvgbp)
