class Contact {
  final String first;
  final String last;
  final String gender;
  final int age;
  final String username;
  final String email;
  final String pictureLarge;
  final String pictureMedium;
  final String pictureThumbnail;

  Contact({ 
    this.first, this.last, this.gender, this.age, this.username,
    this.email, this.pictureLarge, this.pictureMedium, this.pictureThumbnail,
  });

  factory Contact.fromJson(Map<String, dynamic> json) {
    return Contact (
      first: json['name']['first'],
      last: json['name']['last'],
      gender: json['gender'],
      age: json['dob']['age'],
      username: json['login']['username'],
      email: json['email'],
      pictureLarge: json['picture']['large'],
      pictureMedium: json['picture']['medium'],
      pictureThumbnail: json['picture']['thumbnail'],
    );
  }
}