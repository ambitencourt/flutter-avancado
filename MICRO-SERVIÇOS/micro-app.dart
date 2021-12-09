/*MICRO FRONT-ENDS

						BASE_APP (flutter create nome_do_app_base)
						
							MICRO_CORE (Núcleo responsável por organizar o app, gerenciamento de rotas)
							
				(São indenpendentes, isolados)	      (Responsáveis por gerenciar a regra de negócio, as funcionalidades compartilhadas, são as únicas dependências dos micros-apps)
						Micro_app_login							MICRO_COMMONS_USER(Usuário, já que o Micro Core não tem acesso aos detalhes como senha)
						Micro_app_home							MICRO_COMMONS_DEPS(Dependências, pois cada micro_app pode ter sua versão de package)
						Micro_app_profile						MICRO_COMMONS_DESIGN_SYSTEM(UI, Estilização, a identidade visual do app)
*/