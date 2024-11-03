import 'package:voluntarios_project/model/instituicao_model.dart';
import 'package:voluntarios_project/model/vaga_model.dart';

List<InstituicaoModel> ongs = [
  InstituicaoModel(
    id: 1,
    nome: 'ONG Amigos da Natureza',
  ),
  InstituicaoModel(
    id: 2,
    nome: 'Associação Cuidar',
  ),
  InstituicaoModel(
    id: 3,
    nome: 'Centro de Apoio',
  ),
];

List<VagaModel> popularPositions = [
  VagaModel(
    id: 101,
    titulo: 'Voluntário para Plantio de Árvores',
    descricao: 'Ajudar no plantio de árvores em áreas de reflorestamento.',
    data: DateTime(2024, 11, 5),
    idInstituicao: ongs[0].id,
    nomeInstituicao: ongs[0].nome,
    location: 'Caxias do Sul',
    imgUrl: 'assets/icons/who.svg',
    responsibilities: responsibilities,
    position: 'Voluntario',
  ),
  VagaModel(
    id: 102,
    titulo: 'Auxiliar em Abrigo de Animais',
    descricao: 'Cuidar e alimentar animais resgatados.',
    data: DateTime(2024, 11, 8),
    idInstituicao: ongs[1].id,
    nomeInstituicao: ongs[1].nome,
    location: 'Caxias do Sul',
    imgUrl: 'assets/icons/who.svg',
    responsibilities: responsibilities,
    position: 'Voluntario',
  ),
  VagaModel(
    id: 103,
    titulo: 'Apoio em Distribuição de Alimentos',
    descricao:
        'Ajudar na distribuição de alimentos para famílias em situação de vulnerabilidade.',
    data: DateTime(2024, 11, 12),
    idInstituicao: ongs[2].id,
    nomeInstituicao: ongs[2].nome,
    location: 'Caxias do Sul',
    imgUrl: 'assets/icons/who.svg',
    responsibilities: responsibilities,
    position: 'Voluntario',
  ),
];

final responsibilities = [
  'Apoiar a equipe na organização e coordenação de eventos e atividades comunitárias',
  'Colaborar na criação e implementação de campanhas de arrecadação de fundos e divulgação',
  'Assistir na preparação de materiais de apoio, como panfletos e conteúdos digitais',
  'Fornecer suporte e orientação aos participantes durante as atividades',
  'Manter registros precisos de presença e feedback dos participantes',
  'Trabalhar em conjunto com outros voluntários e membros da equipe para garantir a execução bem-sucedida das atividades',
];
