import 'package:flutter/material.dart';
import 'package:expense_tracker_app/models/expense.dart';

class ExpensesList extends StatelessWidget {
  final List<Expense> expenses;

  const ExpensesList({super.key, required this.expenses});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (context, index) {
        final expense = expenses[index];
        return ListTile(
          title: Text(expense.title),
          subtitle: Text('${expense.amount} - ${expense.date.toLocal()}'),
          trailing: Text(expense.category.name),
          tileColor: Color.fromARGB(255, 18, 156, 202),
        );
      },
    );
  }
}
