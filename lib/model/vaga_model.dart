class VagaModel {
  int id;
  String titulo;
  String descricao;
  DateTime data;
  int idInstituicao;
  String nomeInstituicao;
  String imgUrl;
  String location;
  List<String> responsibilities;
  String position;

  VagaModel({
    required this.id,
    required this.titulo,
    required this.descricao,
    required this.data,
    required this.idInstituicao,
    required this.nomeInstituicao,
    required this.imgUrl,
    required this.location,
    required this.responsibilities,
    required this.position
  });

  get qualifications => null;
}