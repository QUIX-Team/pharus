import 'dart:convert';

class CareerModel {
  String description;
  String title;
  String interest_code;
  String abilities;
  String skills;
  int job_zone;
  int id;
  CareerModel({
    this.description,
    this.title,
    this.interest_code,
    this.job_zone,
    this.id,
    this.abilities,
    this.skills
  });

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'description': description});
    result.addAll({'title': title});
    result.addAll({'interest_code': interest_code});
    result.addAll({'job_zone': job_zone});
    result.addAll({'id': id});
    result.addAll({'abilities': abilities});
    result.addAll({'skills':skills});

    return result;
  }

  factory CareerModel.fromMap(Map<String, dynamic> map) {
    return CareerModel(
      description: map['description'] ?? '',
      title: map['title'] ?? '',
      interest_code: map['interest_code'] ?? '',
      job_zone: map['job_zone']?.toInt() ?? 0,
      id: map['id']?.toInt() ?? 0,
      abilities: map['skills'] ?? '',
      skills: map['abilities'] ?? ''
    );
  }

  String toJson() => json.encode(toMap());

  factory CareerModel.fromJson(String source) =>
      CareerModel.fromMap(json.decode(source));

  CareerModel copyWith({
    String description,
    String title,
    String interest_code,
    String abilities,
    String skills,
    int job_zone,
    int id,
  }) {
    return CareerModel(
      description: description ?? this.description,
      title: title ?? this.title,
      interest_code: interest_code ?? this.interest_code,
      job_zone: job_zone ?? this.job_zone,
      id: id ?? this.id,
      skills: skills ?? this.skills,
      abilities: abilities ?? this.abilities
    );
  }
}
