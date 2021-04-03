class Note {
  String title;
  String content;
  DateTime date;

  Note({this.title, this.content, this.date});
}

final Map<String, int> categories = {
  'Notes':112,
  'Work':58,
  'Home':23,
  'Complete':31
};


final List<Note> notes = [
  Note(
    title: 'Buy ticket',
    content:'Buy airplane ticket',
    date: DateTime.now(),
  ),

  Note(
    title: 'Walk with dog',
    content: 'Walk on the street with my favorite dog.',
    date: DateTime.now(),


  )
];