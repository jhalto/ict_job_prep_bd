
class McqModel {
  String? ques;
  String? sub;
  String? a;
  String? b;
  String? c;
  String? d;
  String? ans;
  String? note;
  String? image;

McqModel({required this.ques,required this.sub, required this.a, required this.b, required this.c , required this.d, required this.ans , this.image, this.note,});

factory McqModel.fromJson(Map<String, dynamic>json){
  return McqModel(
    ques: json['ques'],
    sub: json['sub'],
   a: json['a'], 
   b: json['b'], 
   c: json['c'], 
   d: json['d'], 
   ans: json['ans'],
   note: json['note'],
   image: json['image'],
   );
}
 
Map<String, dynamic> toJson(){
  return {
     'ques': ques,
     'sub':sub,
      'a': a,
      'b': b,
      'c': c,
      'd': d,
      'ans': ans,
      'note': note,
      'image': image,
  };
}

}