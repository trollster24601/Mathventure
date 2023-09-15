extends Label



func range_jawaban():
	var batas = global.level*10
	if (global.stage == 1):
		batas = batas * 2
	elif (global.stage == 4):
		batas = batas*batas
	return batas

func set_jawaban(batas_jawaban):
	var A = $"../A"
	var B = $"../B"
	var C = $"../C"
	var D = $"../D"
	
	var rnga = RandomNumberGenerator.new()
	var randa : int = rnga.randf_range(1, batas_jawaban)
	
	var rngb = RandomNumberGenerator.new()
	var randb : int = rngb.randf_range(1, batas_jawaban)
	
	var rngc = RandomNumberGenerator.new()
	var randc : int = rngc.randf_range(1, batas_jawaban)
	
	var rngd = RandomNumberGenerator.new()
	var randd : int = rngd.randf_range(1, batas_jawaban)
	
	
	
	
	
	global.a = false
	global.b = false
	global.c = false
	global.d = false
	
	var rng3 = RandomNumberGenerator.new()
	var pilihan_benar = ceil(rng3.randf_range(0, 4))
	
	if (pilihan_benar == 1):
		global.a = true
	elif (pilihan_benar == 2):
		global.b = true
	elif (pilihan_benar == 3):
		global.c = true
	elif (pilihan_benar == 4):
		global.d = true
	
	#var rng = RandomNumberGenerator.new()
	#var cadangan = rngd.randf_range(1, batas_jawaban)
	
	if (randa==randb or randa == randc or randa == randd or randa == global.jawaban_benar):
		
		randa = global.jawaban_benar + 1
	
	if (randa==randb or randb == randc or randb == randd or randb == global.jawaban_benar):
		randb = global.jawaban_benar + 2
	
	if (randc==randb or randa == randc or randc == randd or randc == global.jawaban_benar):
		randc = global.jawaban_benar + 3
	
	if (randd==randb or randd == randc or randa == randd or randd == global.jawaban_benar):
		randd = global.jawaban_benar + 4
	
	A.text = str(randa)
	B.text = str(randb)
	C.text = str(randc)
	D.text = str(randd)
	
	if (global.a):
		A.text = (str(global.jawaban_benar))
	if (global.b):
		B.text = (str(global.jawaban_benar))
	if (global.c):
		C.text = (str(global.jawaban_benar))
	if (global.d):
		D.text = (str(global.jawaban_benar))

func generate_soal(range_soal):
	var batas = range_soal
	var rng1 = RandomNumberGenerator.new()
	var rand1 : int = rng1.randf_range(1, batas)

	var rng2 = RandomNumberGenerator.new()
	var rand2 : int = rng2.randf_range(1, batas)

	
	
	
	
	if (global.level==1):
		global.stage = ceil(global.soal/10.0)
	else :
		global.stage = int(ceil(global.soal/10.0)) % 4
		if(global.stage == 0):
			global.stage = 4
			
	
	var A = $"../A"
	var B = $"../B"
	var C = $"../C"
	var D = $"../D"
	var batas_jawaban = global.level*10
	
	
	if (global.stage == 1):
		global.jawaban_benar = rand1 + rand2
		set_text(str(rand1) + " + " + str(rand2) + " = ...")
		batas_jawaban = global.level*20
	elif (global.stage == 2):
		while (rand1 < rand2):
			rand1 = ceil(rng1.randf_range(0, batas))
		global.jawaban_benar = rand1 - rand2
		set_text(str(rand1) + " - " + str(rand2) + " = ...")
	elif (global.stage == 3):
		global.jawaban_benar = rand1 * rand2
		set_text(str(rand1) + " x " + str(rand2) + " = ...")
		batas_jawaban = global.level*10 * global.level*10
	elif (global.stage == 4):
		while (rand1 < rand2 or rand1 % rand2 != 0):
			rand1 = ceil(rng1.randf_range(0, batas))
		global.jawaban_benar = rand1 / rand2
		set_text(str(rand1) + " : " + str(rand2) + " = ...")
	
	
	
	
	

	set_jawaban(batas_jawaban)
# Called when the node enters the scene tree for the first time.

func _ready():
	var range_soal = global.level * 10
	generate_soal(range_soal)
	#generate_soal(10)

	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	
	
	pass
	
	
