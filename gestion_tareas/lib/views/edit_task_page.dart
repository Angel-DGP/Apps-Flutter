import 'package:flutter/material.dart';
import 'package:gestion_tareas/models/task.dart';
import '../services/database_helper.dart';

class EditTaskPage extends StatefulWidget {
  final Task task;
  const EditTaskPage({super.key, required this.task});
  @override
  State<EditTaskPage> createState() => _EditTaskPageState();
}

class _EditTaskPageState extends State<EditTaskPage> {
  late TextEditingController titleController;
  late TextEditingController descriptionController;
  late TextEditingController dueDateController;
  late String status;

  @override
  void initState() {
    super.initState();
    titleController = TextEditingController(text: widget.task.title);
    descriptionController = TextEditingController(
      text: widget.task.description,
    );
    dueDateController = TextEditingController(text: widget.task.dueDate);
    status = widget.task.status;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Editar Tarea")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(labelText: "Titulo"),
            ),
            TextField(
              controller: descriptionController,
              decoration: InputDecoration(labelText: "Descripción"),
            ),
            DropdownButton<String>(
              value: status,
              items: [
                'Completada',
                'Pendiente',
              ].map((s) => DropdownMenuItem(value: s, child: Text(s))).toList(),
              onChanged: (val) => setState(() => status = val!),
            ),
            TextField(
              controller: dueDateController,
              decoration: InputDecoration(labelText: "Fecha de vencimiento"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                final updateTask = Task(
                  id: widget.task.id,
                  title: titleController.text,
                  description: descriptionController.text,
                  status: status,
                  dueDate: dueDateController.text,
                );
                await DatabaseHelper().updateTask(updateTask);
                Navigator.pop(context, true);
              },
              child: const Text('Actualizar'),
            ),
          ],
        ),
      ),
    );
  }
}
