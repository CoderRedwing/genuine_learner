import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  final List<Notification> notifications = [
    Notification(title: 'Datastructures Book', returnDate: '2023-01-20', isNewIssue: true),
    Notification(title: 'Computer Org', returnDate: '2023-02-01', isNewIssue: false),
    Notification(title: 'Maths IV', returnDate: '2023-02-20', isNewIssue: true),
    Notification(title: 'Discrete Book', returnDate: '2023-10-30', isNewIssue: false),
  ];

   NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Notifications"),
      ),

      body: Container(

        child: ListView.builder(
          itemCount: notifications.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: notifications[index].isNewIssue ? const Icon(Icons.book) : const Icon(Icons.notifications),
              title: Text(notifications[index].title),
              subtitle: Text("Return Date : ${notifications[index].returnDate}"),
              trailing: const Icon(Icons.arrow_forward),
            );
          },
        ),
      ),
    );
  }
}

class Notification {
  final String title;
  final String returnDate;
  final bool isNewIssue;

  Notification({required this.title, required this.returnDate, required this.isNewIssue});
}
