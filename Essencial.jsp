<%@ page language="java" import="java.sql.*" %>

 <%

 // cria variaveis e pega os valores digitados pelo usuário
 // 
 String vNome = request.getParameter( "txtNome" );
 String vTelefone = request.getParameter ("txtTelefone");
 String vEmail = request.getParameter( "txtEmail" );
 String vMensagem = request.getParameter ("txtMensagem");



 // cria as variavies para acessar o banco de dados
 //
 String driver = "net.sourceforge.jtds.jdbc.Driver" ;
 String url    = "jdbc:jtds:sqlserver://10.4.0.90:1433/bd220022016";
 String usuario= "bd220022016" ;
 String senha  = "123456" ;

 // carrega o driver na memoria
 Class.forName( driver ) ;
 
 // cria a conexao com o banco de dados
 // informando endereço do banco, usuario, senha
 Connection conexao = DriverManager.getConnection(url,usuario,senha) ;

 // cria o statement para executar o comando sql
 Statement stm = conexao.createStatement() ; 

 String sql = "insert into Mensagem values('" + vEmail + "','" + vMensagem + "','" + vNome + "','" + vTelefone + "')" ;



 stm.executeUpdate( sql ) ;

 out.print("<br>");
 out.print("<center>Dados Cadastrados com Sucesso!!!</center>");
  
 %>


 