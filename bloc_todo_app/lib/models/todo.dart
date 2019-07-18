import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
import 'package:todos_app_core/todos_app_core.dart';
import 'package:todos_repository_core/todos_repository_core.dart';

// MARK: Model

@immutable
class Todo extends Equatable {
  final bool complete;
  final String id;
  final String note;
  final String task;

  // MARK: Init
  // {}内は初期値？Swiftでいう初期値あり引数のinit的な？
  // taskだけ必須の引数であとはオプション
  Todo(
    this.task, {this.complete = false, String note = '', String id }) 
    : this.note = note ?? '',
      this.id = id ?? Uuid().generateV4(),
      super([complete, id, note, task]);

  Todo copyWith({bool complete, String id, String note, String task}) {
    return Todo(
      task ?? this.task,
      complete: complete ?? this.complete,
      id: id ?? this.id,
      note: note ?? this.note,
    );
  }

  @override
  String toString() {
    return 'Todo { complete: $complete, task: $task, note: $note, id: $id }';
  }

  TodoEntity toEntity() {
    return TodoEntity(task, id, note, complete);
  }
}