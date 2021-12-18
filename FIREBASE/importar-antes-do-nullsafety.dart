/* * Ler uma coleção do bd *
var bd = Firestore.instance;
QuerySnapshot resultado = await bd.collection("nome_da_coleção").getDocuments(); // se usar await lembrar de colocar async na função
//QuerySnapshot é para agir na coleção inteira, caso queira somente em um documento, usar DocumentSnapshot
	resultado.documents.forEach((d){ //d é cada documento
		print(d.documentID); //o print é só para testes, já que só aparece no debug
		print(d.data);
	}
	)

* Atualizar dados no bd *
var bd = Firestore.instance;
QuerySnapshot resultado = await bd.collection("nome_da_coleção").getDocuments(); // se usar await lembrar de colocar async na função
//QuerySnapshot é para agir na coleção inteira, caso queira somente em um documento, usar DocumentSnapshot
	resultado.documents.forEach((d){ //d é cada documento
		d.reference.updateData( {
		"nome_do_atributo3" : "valor_do_atributo",	
		})
	}
	)
	
* Ler documento específico do bd *
var bd = Firestore.instance;
DocumentSnapshot resultado = await bd.collection("nome_da_coleção")
	.document("nome_do_documento").get();

		print(resultado.documentID); //o print é só para testes, já que só aparece no debug
		print(resultado.data);
	}
	)

* Ler dados do bd e notificar *
var bd = Firestore.instance;
bd.collection("nome_da_coleção")
	.snapshots().listen((resultado)
	{
	resultado.documents.forEach((d){
		{
			print(d.data);
		});
	});

  */