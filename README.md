# flutter_contact_list

Simple flutter app that gets the random user list and display in **ListView.builder** and **ListTile** widget.

### Desciption

Use the http package to make a API call to https://randomuser.me/api/?results=20 (limit to 20 users) and parse the response object to display info on the My Contact page.

### Main Feature

Since http returns a Future object, **FutureBuilder** widget was used to read the data.

### Screenshot

Emulator: iOS (iPhone 12 Pro Max)

[![Simulator-Screen-Shot-i-Phone-12-Pro-Max-2021-01-17-at-12-04-52.png](https://i.postimg.cc/qvBJnqKV/Simulator-Screen-Shot-i-Phone-12-Pro-Max-2021-01-17-at-12-04-52.png)](https://postimg.cc/N5Vvvgbp)
