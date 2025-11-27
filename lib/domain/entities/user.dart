class User {
  final int idDamkar;
  final int idPolisi;
  final String role;
  final String nama;
  final String telp;
  final String cabang;
  final int idPolsek;
  final String email;

  User({
    required this.idDamkar,
    required this.idPolisi,
    required this.role,
    required this.nama,
    required this.telp,
    required this.cabang,
    required this.idPolsek,
    required this.email,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      idDamkar: json['id_damkar'] ?? 0,
      idPolisi: json['id_polisi'] ?? 0,
      role: json['role'] ?? '',
      nama: json['nama'] ?? '',
      telp: json['telp'] ?? '',
      cabang: json['cabang'] ?? '',
      idPolsek: json['id_polsek'] ?? 0,
      email: json['email'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id_damkar': idDamkar,
      'id_polisi': idPolisi,
      'role': role,
      'nama': nama,
      'telp': telp,
      'cabang': cabang,
      'id_polsek': idPolsek,
      'email': email,
    };
  }
}
