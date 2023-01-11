import 'package:flutter/material.dart';
class Bookmodel {
  Bookmodel({
      required this.id,
    required this.name,
    required this.branch,
    required this.session,
    required this.book,
    required this.bookId,
    required this.issueDate,
    required this.v,});

  Bookmodel.fromJson(dynamic json) {
    id = json['_id'];
    name = json['name'];
    branch = json['branch'];
    session = json['session'];
    book = json['book'];
    bookId = json['book_id'];
    issueDate = json['issue_date'];
    v = json['__v'];
  }
  late String id;
  late String name;
  late String branch;
  late String session;
  late String book;
  late String bookId;
  late String issueDate;
  late  int v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = id;
    map['name'] = name;
    map['branch'] = branch;
    map['session'] = session;
    map['book'] = book;
    map['book_id'] = bookId;
    map['issue_date'] = issueDate;
    map['__v'] = v;
    return map;
  }

}