class MemoData {
  int? id; // 생성시에 MemoData 로 넣게 될텐데, insert 일때는 null 일테니
  String content;
  final DateTime createAt;

  MemoData({
    this.id,
    required this.content,
    required this.createAt,
  });

  @override
  String toString() {
    return 'content : $content, createAt : $createAt';
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'content': content,
      'createAt': createAt.toIso8601String(),
    };
  }
}
