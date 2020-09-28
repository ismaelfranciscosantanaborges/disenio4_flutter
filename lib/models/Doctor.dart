class Doctor {
  String img;
  String firstName;
  String lastName;
  String street;
  String city;
  String state;
  String email;

  Doctor(
      {this.img,
      this.firstName,
      this.lastName,
      this.street,
      this.city,
      this.state,
      this.email});

  Doctor.fromJson(Map<String, dynamic> json)
      : img = json['picture']['medium'],
        firstName = json['name']['first'],
        lastName = json['name']['last'],
        street = json['location']['street'].toString(),
        city = json['location']['city'],
        state = json['location']['state'],
        email = json['email'];
}