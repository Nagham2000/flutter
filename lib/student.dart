class Student {
  String name,id;
  bool check=false;

  Student({required this.name, required this.id});

  @override
  String toString() {
    return 'Student{name: $name, id: $id}';
  }
}