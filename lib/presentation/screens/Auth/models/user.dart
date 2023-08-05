import 'dart:convert';

class UserModel {
  final String name;
  final String email;
  final String uid;
  final String password;
  final String coins;
  UserModel({
    required this.name,
    required this.email,
    required this.uid,
    required this.password,
    required this.coins,
  });

  UserModel copyWith({
    String? name,
    String? email,
    String? uid,
    String? password,
    String? coins,
  }) {
    return UserModel(
      name: name ?? this.name,
      email: email ?? this.email,
      uid: uid ?? this.uid,
      password: password ?? this.password,
      coins: coins ?? this.coins,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'email': email,
      'uid': uid,
      'password': password,
      'coins': coins,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      name: map['name'] as String,
      email: map['email'] as String,
      uid: map['uid'] as String,
      password: map['password'] as String,
      coins: map['coins'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserModel( name: $name, email: $email, uid: $uid, password: $password, coins: $coins)';
  }

  @override
  bool operator ==(covariant UserModel other) {
    if (identical(this, other)) return true;

    return other.name == name &&
        other.email == email &&
        other.uid == uid &&
        other.password == password &&
        other.coins == coins;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        email.hashCode ^
        uid.hashCode ^
        password.hashCode ^
        coins.hashCode;
  }
}
