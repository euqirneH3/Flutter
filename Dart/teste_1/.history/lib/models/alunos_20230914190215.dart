calss Alunoi {
  String _nome = "";
  List<double> _notas = [];

  Aluno(Sring nome) {
    _nome = nome;
  }

  void setNome(String nome) {
    _nome = nome;
  }

  String getNome() {
    return _nome;  
  }

  List<double> getNotas() {
    return _notas;
  }

  void adicinarNotas(double nota) {
   _notas.add(nota);
  }
}