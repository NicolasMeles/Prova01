class Calculo{
  
  String valor = '0';
  final buffer = [0.0, 0.0];
  int bufferindex = 0;
  String? operacao;
  bool limparValor = false;

  static const operacoes = const['=', '+', '-', '*', '/'];

  String get valores{
    return valor;
  }

  void clique(String clicou){
    
    if(clicou == 'Limpar')
      limpar();

    else if(operacoes.contains(clicou))
      setOperacao(clicou); 
    
    else
      setNumero(clicou);
    
  }

  setOperacao(String novaOperacao){
    bool igual = novaOperacao == '=';
    if(bufferindex == 0 && !igual){
      operacao = novaOperacao;
      bufferindex = 1;
      limparValor = true;
    }
    else {
      buffer[0] = calcular();
      buffer[1] = 0.0;
      valor = buffer[0].toString();
      valor = valor.endsWith('.0') ? valor.split('.')[0] : valor;

      
      operacao = igual ? null : novaOperacao;
      bufferindex = igual ? 0 : 1;
      
    }

    limparValor = true;
    
  }

  setNumero(String numero){
    final virgula = numero == '.';
    final _limparValor = (valor == '0' && !virgula) || limparValor;
    
    if(valor == '.' && valor.contains('.'))
      return;
    final valorVazio = virgula ? '0' : ''; 
    final valorAtual = _limparValor ? valorVazio : valor; 
    valor = valorAtual + numero;
    limparValor = false;

    buffer[bufferindex] = double.tryParse(valor) ?? 0;
    print(buffer[bufferindex]);

    
  }

  calcular(){
    switch(operacao){
      case '+': return buffer[0] + buffer[1];
      case '-': return buffer[0] - buffer[1];
      case '*': return buffer[0] * buffer[1];
      case '/': return buffer[0] / buffer[1];
      default: return buffer[0];
    }
  }

  void limpar(){
    valor = '0';
    buffer.setAll(0, [0.0,0.0]);
    bufferindex = 0;
    operacao = null;
    limparValor = false;

  }
}