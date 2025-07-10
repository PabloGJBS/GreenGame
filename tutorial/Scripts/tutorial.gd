extends Node2D
var pageTutorial = 1

func _on_finishTutorial_pressed():
	get_tree().change_scene_to_file("res://main/scene/main.tscn")

func _on_next_pressed():
	pageTutorial = pageTutorial + 1
	var newText = "Tutorial:"
	if pageTutorial == 2:
		$"Icon-store".show()
		$Rectangle65.show()
		$Vector.show()
		newText = "
		Vá para a lojinha para conferir ofertas muito úteis!




Venha aqui para conferir as atividades disponíveis no seu local, no mundo todo e as que você já fez também!



Clique neste ícone para doar ou trocar suas gemas do conhecimento por moedas"

	if pageTutorial == 3:
		$"✈️".show()
		$"Icon-kgem".show()
		$Termometro.show()
		$"Icon-store".hide()
		$Rectangle65.hide()
		$Vector.hide()
		
		newText = "Este termômetro indicará o quanto a Terra está superaquecida. Lembre-se de que para ganhar, você precisa zerar este termômetro! Se o termômetro marcar 4.0 °C você perde.


São as gemas do conhecimento doadas que abaixam a temperatura. Você consegue ganhá-las se fizer atividades!



Sempre que o jornal aparecer, você ganha seu salário e 3 aviões. A quantidade de aviões é sua quantidade de passos entre as cidades."
	
	if pageTutorial == 4:
		$"✈️".hide()
		$"Icon-kgem".hide()
		$Termometro.hide()
		$"Info-mini-tutorial".show()
		newText = "Para se movimentar, basta clicar sobre o ponto da cidade que você deseja chegar.




Para rever o tutorial de forma resumida, clique aqui!"

		$Next.text = "ok"
		$Label2.show()
		$Next.connect("pressed", _on_finishTutorial_pressed)
		
	
	
	$Label.text = newText
