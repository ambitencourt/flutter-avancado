//** Cloud Firestore **

/* * Inserir no bd *
Firestore.instance.collection("nome_da_coleção")
	.document("nome_do_documento")
		.setData(
			{
				"nome_do_atributo1" : "valor_do_atributo", // Se for String colocar entre " "
				"nome_do_atributo2" : "valor_do_atributo", // Se for int ou dynamic deixar sem " "
				"nome_do_atributo3" : "valor_do_atributo",
			}
		);
*/		
/* Pode substituir alguns termos usando variável: * Inserir no bd *

var bd = Firestore.instance;
bd.collection("nome_da_coleção")
	.document("nome_do_documento")
		.setData(
			{
				"nome_do_atributo1" : "valor_do_atributo", // Se for String colocar entre " "
				"nome_do_atributo2" : "valor_do_atributo", // Se for int ou dynamic deixar sem " "
				"nome_do_atributo3" : "valor_do_atributo",
			}
		);
*/
/* É possível também adicionar usando o comando Add: * Inserir no bd *

var bd = Firestore.instance;
bd.collection("nome_da_coleção")
	.add(
			{
				"nome_do_atributo1" : "valor_do_atributo", // Se for String colocar entre " "
				"nome_do_atributo2" : "valor_do_atributo", // Se for int ou dynamic deixar sem " "
				"nome_do_atributo3" : "valor_do_atributo",
			}
		);
*/	
/* * Atualizar dados no bd *

var bd = Firestore.instance;
bd.collection("nome_da_coleção")
	.document("nome_do_documento")
		.updateData(
			{
				"nome_do_atributo1" : "valor_do_atributo", // Se for String colocar entre " "
				
			}
		);
*/			
/* * Deletar dados no bd *
var bd = Firestore.instance;
await bd.collection("nome_da_coleção")
	.documents("nome_do_documento").delete();
  */