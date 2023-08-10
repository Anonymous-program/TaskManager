class NetworkRespones{
  final int statusCode;
  final bool isSuccese;
  final Map<String,dynamic>? body;

  NetworkRespones(this.isSuccese,this.statusCode, this.body);

}