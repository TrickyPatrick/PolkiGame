-- POLKI GAME
-- Copyrights Thomas Decroix aka Tricky Patrick aka ThoThoBoss
-- Special Thanks to Omarito
-- If you want to change some Variables,(notice that HP superior to 100 will not be written unless they are inferior to 100) --
-- BEGINNING OF THE SAFE VARIABLE AREA
--

--[[Changing The HP of the Fighter]] local HpFighter2 = 100
--[[Changing The HP of the Dragon]] local HpDragon2 = 100
--[[Changing The HP given by the potion at first use]] local PotionHP = 10
--[[Changing the Hp of the fighter required to use potion]] local PotionUseHp = 30
--[[Changing the HP taken away from initial potion after each potion used]] local SubstractHP = 2
--[[Adding damages to the Sword for the dragon]] local AdditionalDamagesDragonSword = 0
--[[Adding damages to the Sword for the dragon]] local AdditionalDamagesFighterSword = 0
--[[Changing damages done by arrows]] local DamagesDoneByArrow = 15
--[[Changing Basics damages done by Dragon Charge]] local BasicDamagesCharge = 15

--
-- END OF THE SAFE VARIABLE AREA
-- IF YOU CHANGE THINGS DOWN (The code itself) I'm not giving any help, don't be frustrated but I have other stuff to do than helping someone who destroyed my code 





local STATECONST=768
local WhileOnRender = 0
local StopRender =1
local mdr = 1
local lol = 0
local patate = 0
local courgette = 1
local tomate = 0
local hh
local DD
local ArrowOrNot
local Victory
local Defeat
local Restart = false
local Draw
local RestartStop = 0
	--keys
	local A=97
	local B=98
	local C=99
	local D=100
	local E=101
	local F=102
	local G=103
	local H=104
	local I=105
	local J=106
	local K=107
	local L=108
	local M=109
	local N=110
	local O=111
	local P=112
	local Q=113
	local R=114
	local S=115
	local T=116
	local U=117
	local V=118
	local W=119
	local X=120
	local Y=121
	local Z=122
	local UP=1073741906
	local DOWN=1073741905
	local LEFT=1073741904
	local RIGHT=1073741903
	local SPACEBAR=32
	local LEFTSHIFT=1073742049
		--Fighter
		local HpFighter = HpFighter2
		local Epee
		local Personnage
		local MoveBack = false
		local EpeeAction = false
		local TurnPlayer = true
		FighterLife = true
		local BowAction = false
		local Bow
		local DrinkPotion = false
			--DeltaTimes
			local LastDeltaTime = 0
			local LastDeltaTime2 = 0
			local LastDeltaTime3 = 0
			local LastDeltaTime4 = 0
			local LastDeltaTime5 = 0
			local LastDeltaTime6 = 0
			local LastDeltaTime7 = 0
			local LastDeltaTime8 = 0
			local LastDeltaTime9 = 0
			local LastDeltaTime10 = 0
			local LastDeltaTime11 = 0
							--Dragon
				local HpDragon = HpDragon2
				local RandomCrash = 7
				local CrashChoice = 36
				local RandomAttack = 0
				DragonLife = true
				local DragonCharge = false
				local DragonChargeBack = false
				local AnimationDodge = false
				local DragonFly = false
				local DragonCrash = false
				local PropositionsCrash = false
					--Assets
					local n1
					local n2
					local n3
					local n4
					local n5
					local n6
					local n7
					local n8
					local n9
					local n0
					local nn1
					local nn2
					local nn3
					local nn4
					local nn5
					local nn6
					local nn7
					local nn8
					local nn9
					local nn0
					local BLACK
					local BLACKK
					local Dodge
					local Dodge1
					local Dodge2
					local Dodge3
					local Propositions
					local Dragon
					local Bow
					local Potion
						--TABLEAUX
						local KeyPressed = {}
						local Objects = {}

						
						
						
function RandomArrowAttack(x)
	math.randomseed(os.clock()*100000000000)
	b = math.random(0, 1)
	math.floor(b)
	a = math.random(0, 1)
	math.floor(a)
		x = 1 + b + a
return x
end
function RandomAttacks(x)
	math.randomseed(os.clock()*100000000000)
	a = math.random(0, 1)
	math.floor(a)
	b = math.random(0, 1)
	math.floor(b)	
	c = math.random(0, 1)
	math.floor(c)
		x = 1 + b + c
return x
end
function RandomSwordDragon(x)
	math.randomseed(os.clock()*100000000000)
	a = math.random(0, 1)
	math.floor(a)
	b = math.random(0, 1)
	math.floor(b)	
	c = math.random(0, 1)
	math.floor(c)
	d = math.random(0, 1)
	math.floor(d)	
	e = math.random(0, 1)
	math.floor(e)
	f = math.random(0, 1)
	math.floor(f)	
	g = math.random(0, 1)
	math.floor(g)
	h = math.random(0, 1)
	math.floor(h)	
	i = math.random(0, 1)
	math.floor(i)
	j = math.random(0, 1)
	math.floor(j)	
	k = math.random(0, 1)
	math.floor(k)	
	l = math.random(0, 1)
	math.floor(l)	
	m = math.random(0, 1)
	math.floor(m)	
	n = math.random(0, 1)
	math.floor(n)	
	o = math.random(0, 1)
	math.floor(o)	
	n = a + b + c + d + e + f + g + h + i + j + k + l + m + n + o
	return n
end
function RandomSwordBoy(x)
	
	math.randomseed(os.clock()*100000000000)
	a = math.random(0, 1)
	math.floor(a)
	b = math.random(0, 1)
	math.floor(b)	
	c = math.random(0, 1)
	math.floor(c)
	d = math.random(0, 1)
	math.floor(d)	
	e = math.random(0, 1)
	math.floor(e)
	f = math.random(0, 1)
	math.floor(f)
	g = math.random(0, 1)
	math.floor(g)
	x = a + b + c + d + e + f + g
	return x

end
function RandomPostionCrash(x)
	math.randomseed(os.clock()*100000000000)
	a = math.random(0, 1)
	math.floor(a)
	b = math.random(0, 1)
	math.floor(b)	
	c = math.random(0, 1)
	math.floor(c)
		x = 1 + b + c + a
	return x
end

function OnEngineLoad()	
	hh = CreateSprite("assets/hh.jpg",1080,1920,0,0)
	Objects[hh] = true
	Propositions = CreateSprite("assets/Propositions.png", 200,1900,10,25)
	Objects[Propositions] = true
	Objects[PropositionsCrash] = false
	local XIMAGE1 = 1600
	local YIMAGE = 600
	local XIMAGE2 = 1700
	local XIMAGE11 = 200
	local XIMAGE22 = 300
	local YIMAGE11 = 600	
	Dragon = CreateSprite("assets/Dragon.png", 400, 800, 1150, 650)
	Objects[Dragon] = true
	BLACK = CreateSprite("assets/NOIR.jpg",100,300,100,YIMAGE11)
	BLACKK = CreateSprite("assets/NOIRR.jpg",100,300,1500,YIMAGE)
	n1 = CreateSprite("assets/1.png", 100, 100, 1500, YIMAGE)
	n0 = CreateSprite("assets/0.png", 100, 100, XIMAGE1, YIMAGE)
	nn0 = CreateSprite("assets/0.png", 100, 100, XIMAGE2, YIMAGE)
	n1 = CreateSprite("assets/1.png", 100, 100, 100, YIMAGE11)
	n0 = CreateSprite("assets/0.png", 100, 100, XIMAGE11, YIMAGE11)
	nn0 = CreateSprite("assets/0.png", 100, 100, XIMAGE22, YIMAGE11)
	Personnage = CreateSprite("assets/Personnage.png", 200, 300, 100, 800)
	Objects[Personnage] = true
end
AddEventHandler("OnEngineLoad", OnEngineLoad)

function OnRender(dt)
	if (DragonLife == false and Objects[Dragon] == false and FighterLife == true and RestartStop == 0) then
		Victory = CreateSprite("Assets/Victory.png",1080,1920,0,0)
		Restart = true
		RestartStop = 1
	end
	if (FighterLife == false and Objects[Personnage] == false and DragonLife == true and RestartStop == 0) then
		Defeat = CreateSprite("Assets/Defeat.png",1080,1920,0,0)
		Restart = true
		RestartStop = 1
	end
	if (DragonLife == false and Objects[Dragon] == false and Objects[Personnage] == false and FighterLife == false and RestartStop == 0) then
		Draw = CreateSprite("Assets/Draw.png",1080,1920,0,0)
		Restart = true
		RestartStop = 1
	end
end
AddEventHandler("OnEngineRender", OnRender)

function DRINKPOTION(dt)
	if DrinkPotion == true then
		LastDeltaTime11 = LastDeltaTime11+dt
		if (LastDeltaTime11 > 0.001) then
			LastDeltaTime11 = 0
			x, y = GetPos(Potion)
			SetPos(Potion,x-1,y)
			if ( x < 249) then
				DelSprite(Potion)
				Objects[Potion] = false
				HpFighter = HpFighter + PotionHP
				WriteHP(HpDragon, HpFighter)
				if PotionHP > 2 then
					PotionHP = PotionHP - SubstractHP
				end
				DrinkPotion = false
			end
		end	
	end
end
AddEventHandler("OnEngineRender", DRINKPOTION)

function BOWACTION(dt)
	if (BowAction == true and DragonLife == true and FighterLife == true) then
		LastDeltaTime10 = LastDeltaTime10+dt
		if (LastDeltaTime10 > 0.004 and Objects[Arrow] and Objects[Bow]) then
			LastDeltaTime10 = 0
			x, y = GetPos(Arrow)
			SetPos(Arrow,x+2,y-2)
			if (x >= 483) then
				LastDeltaTime10 = 0
				x, y = GetPos(Arrow)
				SetPos(Arrow,x+2,y+2)
				rotateSprite(Arrow,390)
				if (x >= 716) then
					LastDeltaTime10 = 0
					x, y = GetPos(Arrow)
					SetPos(Arrow,x+1.5,y+4)
					rotateSprite(Arrow, 430)
					if (x >= 950) then
						DelSprite(Arrow)
						Objects[Arrow] = false
						ArrowOrNot = RandomArrowAttack(x)
						if ArrowOrNot == 1 then
							HpDragon = HpDragon - DamagesDoneByArrow
							WriteHP(HpDragon, HpFighter)
						end
						BowAction = false
						DelSprite(Bow)
						Objects[Bow] = false
					end
				end	
			end
		end
	end
end
AddEventHandler("OnEngineRender", BOWACTION)

function EPEEACTION(dt)
	if (EpeeAction == true and DragonLife == true and FighterLife == true) then
		LastDeltaTime = LastDeltaTime+dt
		if (LastDeltaTime > 0.01 and Objects[Personnage]) then
			LastDeltaTime = 0
			x, y = GetPos(Personnage)
			x1, y1 = GetPos(Epee)
			SetPos(Personnage,x+20,y)
			SetPos(Epee,x1+20,y1)
			if (x >= 950) then
				MoveBack = true
				EpeeAction=false
				DelSprite(Epee)
				HpDragon = HpDragon - AdditionalDamagesDragonSword -RandomSwordDragon(x)
				HpFighter = HpFighter - AdditionalDamagesFighterSword - RandomSwordBoy(y)
				WriteHP(HpDragon, HpFighter)
				
			end
		end
	end
end
AddEventHandler("OnEngineRender", EPEEACTION)

function MOVEBACKEPEEFIGHTER(dt)
	if (MoveBack) then
		LastDeltaTime2 = LastDeltaTime2+dt
		if (LastDeltaTime2 > 0.01 and Objects[Personnage]) then
			LastDeltaTime2 = 0
			x, y = GetPos(Personnage)
			SetPos(Personnage,x-20,y)
			if ( x <= 100) then
				SetPos(Personnage, x, y)
				MoveBack = false
			end
		end
	end
end
AddEventHandler("OnEngineRender", MOVEBACKEPEEFIGHTER)

function DODGEANIMATIONETCHARGE(dt)
	if (CrashChoice == RandomCrash and DragonCrash == true) then
		DragonCrash = false
		DragonCharge = true
	end
	if (DragonCharge == false and DragonCrash==true and DD==3) then
		AnimationDodge=true
	end
	if (DragonCharge == true and DragonLife == true) then
		DD =2
		LastDeltaTime8 = LastDeltaTime8+dt
		if (LastDeltaTime8 > 0.01) then
			LastDeltaTime8 = 0
			x, y = GetPos(Dragon)
			SetPos(Dragon,x-25,y)
			if ( x < 100) then
				GetPos(Dragon, x, y)
				HpFighter = HpFighter - BasicDamagesCharge - RandomSwordDragon(x)
				WriteHP(HpDragon, HpFighter)
				DragonChargeBack = true
				DragonCharge = false			
			end	
		end	
	end
	if (AnimationDodge == true and DD == 3) then
		DD=DD+1
		Dodge = CreateSprite("assets/Dodgee.png", 200, 1000, 500,500)
		Dodge1 = CreateSprite("assets/Dodgeee.png", 200, 1000, 500,500)
		Dodge2 = CreateSprite("assets/Dodgeeee.png", 200, 1000, 500,500)
		Dodge3 = CreateSprite("assets/Dodgeeeee.png", 200, 1000, 500,500)	
		Objects[Dodge]=true
		Objects[Dodge1]=true
		Objects[Dodge2]=true
		Objects[Dodge3]=true
	end	
	if (AnimationDodge==true and DD == 4) then
		LastDeltaTime9 = LastDeltaTime9+dt
		if (LastDeltaTime9 > 0.01) then
			LastDeltaTime9 = 0
			x1, y1 = GetPos(Dodge)
			x2, y2 = GetPos(Dodge1)
			x3, y3 = GetPos(Dodge2)
			x4, y4 = GetPos(Dodge3)
			setSpriteRotationCenter(Dodge, 500, 100)
			setSpriteRotationCenter(Dodge1, 500, 100)
			setSpriteRotationCenter(Dodge2, 500, 100)
			setSpriteRotationCenter(Dodge3, 500, 100)
			SetPos(Dodge,x1+10,y1)
			SetPos(Dodge1,x2-10,y2)
			SetPos(Dodge2,x3,y3+10)
			SetPos(Dodge3,x4,y4-10)
			rotateSprite(Dodge,getSpriteRotation(Dodge)+ 3)
			rotateSprite(Dodge1,getSpriteRotation(Dodge1)+ 3)
			rotateSprite(Dodge2,getSpriteRotation(Dodge2)- 3)
			rotateSprite(Dodge3,getSpriteRotation(Dodge3)- 3)
			if ( x1 > 1500 ) then
				GetPos(Dodge, x, y)
				DelSprite(Dodge)
				DelSprite(Dodge1)
				DelSprite(Dodge2)
				DelSprite(Dodge3)
				Objects[Dodge] = false
				Objects[Dodge1]=false
				Objects[Dodge2]=false
				Objects[Dodge3]=false
				AnimationDodge = false
				DD = 5
			end	
		end	
	end
end
AddEventHandler("OnEngineRender", DODGEANIMATIONETCHARGE)

function DRAGONCHARGEBACK(dt)
	if (DragonChargeBack == true and DragonLife == true) then
		LastDeltaTime8 = LastDeltaTime8+dt
		if (LastDeltaTime8 > 0.01) then
			LastDeltaTime8 = 0
			x, y = GetPos(Dragon)
			SetPos(Dragon,x+25,y)
			if ( x > 1150) then
				GetPos(Dragon, x, y)
				DragonChargeBack = false
			end	
		end
	end
end
AddEventHandler("OnEngineRender", DRAGONCHARGEBACK)

function PROPOSITIONS(dt)
	if lol == mdr then
		mdr = mdr + 1
		patate = patate + 1
		if (Objects[PropositionsCrash] == true) then
			DelSprite(PropositionsCrash)
			Objects[PropositionsCrash] = false
		end
		if (Objects[Propositions] == true) then
			DelSprite(Propositions)
			Objects[Propositions] = false
		
		end
	end
	if  (TurnPlayer == false and Objects[PropositionsCrash] == false and patate == courgette and EpeeAction == false and MoveBack == false and DragonCharge == false and DragonChargeBack == false and FighterLife == true and DragonLife == true) then
		courgette = courgette + 1
		PropositionsCrash = CreateSprite("assets/PropositionsCrash.png", 200,1900,10,25)
		Objects[PropositionsCrash] = true
	end
	if  (TurnPlayer == true and Objects[Propositions] == false and patate == courgette and DragonCharge == false and DragonChargeBack == false and MoveBack == false and EpeeAction == false and FighterLife == true and DragonLife == true) then
		courgette = courgette + 1
		Propositions = CreateSprite("assets/Propositions.png", 200,1900,10,25)
		Objects[Propositions] = true
	end
end
AddEventHandler("OnEngineRender", PROPOSITIONS)

function FIGHTERDEATH(dt)
	if (FighterLife == false and Objects[Personnage]) then
		LastDeltaTime4 = LastDeltaTime4+dt
		if (LastDeltaTime4 > 0.01) then
			LastDeltaTime4 = 0
			x, y = GetPos(Personnage)
			SetPos(Personnage,x-5,y-5)
			if ( x <0 and y < 100) then
				DelSprite(Personnage)
				Objects[Personnage] = false
			end
		end
	end
end
AddEventHandler("OnEngineRender", FIGHTERDEATH)

function DRAGONDEATH(dt)
	if (DragonLife == false and Objects[Dragon] == true) then
		LastDeltaTime3 = LastDeltaTime3+dt
		if (LastDeltaTime3 > 0.01) then
			LastDeltaTime3 = 0
			x, y = GetPos(Dragon)
			SetPos(Dragon,x+5,y+5)
			if ( x > 2000 and y > 2000) then
				DelSprite(Dragon)
				Objects[Dragon] = false
			end
		end
	end	
end
AddEventHandler("OnEngineRender", DRAGONDEATH)

function OnInput(key, state)
if state == STATECONST then -- dont delete this
		KeyPressed[key] = true
	end
if state == STATECONST+1 then -- dont delete this
		KeyPressed[key] = false
	end
	if (Restart == true and key == R and state == STATECONST) then
		hh = CreateSprite("assets/hh.jpg",1080,1920,0,0)
		Objects[hh] = true
		local XIMAGE1 = 1600
		local YIMAGE = 600
		local XIMAGE2 = 1700
		local XIMAGE11 = 200
		local XIMAGE22 = 300
		local YIMAGE11 = 600	
		Dragon = CreateSprite("assets/Dragon.png", 400, 800, 1150, 650)
		BLACK = CreateSprite("assets/NOIR.jpg",100,300,100,YIMAGE11)
		BLACKK = CreateSprite("assets/NOIRR.jpg",100,300,1500,YIMAGE)
		n1 = CreateSprite("assets/1.png", 100, 100, 1500, YIMAGE)
		n0 = CreateSprite("assets/0.png", 100, 100, XIMAGE1, YIMAGE)
		nn0 = CreateSprite("assets/0.png", 100, 100, XIMAGE2, YIMAGE)
		n1 = CreateSprite("assets/1.png", 100, 100, 100, YIMAGE11)
		n0 = CreateSprite("assets/0.png", 100, 100, XIMAGE11, YIMAGE11)
		nn0 = CreateSprite("assets/0.png", 100, 100, XIMAGE22, YIMAGE11)
		Personnage = CreateSprite("assets/Personnage.png", 200, 300, 100, 800)
		Objects[PropositionsCrash] = false
		Objects[Propositions] = false
		HpFighter = HpFighter2
		HpDragon = HpDragon2
		Objects[Dragon] = true
		Objects[Personnage] = true
		DragonLife = true
		FighterLife = true
		Restart = false
		RestartStop = 0
		TurnPlayer = true
	end
	if (TurnPlayer == true and FighterLife == true and DragonLife == true ) then
				if (key == A and state == STATECONST and DragonChargeBack == false and DragonCharge == false and AnimationDodge == false) then
					Epee = CreateSprite("assets/sword.png", 400,250,230,620)
					lol = lol + 1
					EpeeAction = true
					TurnPlayer = false
				end
				if (key == Z and state == STATECONST and DragonChargeBack == false and DragonCharge == false and AnimationDodge == false) then
					Bow = CreateSprite("assets/Bow2.png", 250,300,170,730)
					rotateSprite(Bow, 390)
					Arrow = CreateSprite("assets/Arrow.png",250,250,250,740)
					Objects[Bow] = true
					Objects[Arrow] = true
					lol = lol + 1
					TurnPlayer = false
					BowAction = true
				end
				if (key == E and state == STATECONST and DragonChargeBack == false and DragonCharge == false and AnimationDodge == false and HpFighter < PotionUseHp and FighterLife == true) then
					DrinkPotion = true
					Potion = CreateSprite("assets/Potion.png", 150,150,700,780)
					Objects[Potion] = true
					TurnPlayer = false
					lol = lol + 1
				end
	end	
	if (TurnPlayer == false and DrinkPotion == false and EpeeAction == false and MoveBack == false and DragonLife == true and FighterLife == true and BowAction == false) then
	
		RandomAttacks = 1
		if (RandomAttacks == 1) then
			if (key == LEFT and state == STATECONST) then
				lol = lol + 1
				DragonCrash = true
				RandomCrash = RandomPostionCrash(x)
				CrashChoice = 1
				TurnPlayer = true
				DD=3
			end
			if (key == RIGHT and state == STATECONST) then
				lol = lol + 1
				RandomCrash = RandomPostionCrash(x)
				CrashChoice = 2
				TurnPlayer = true
				DragonCrash = true
				DD=3

			end
			if (key == UP and state == STATECONST) then
				lol = lol + 1
				RandomCrash = RandomPostionCrash(x)
				CrashChoice = 3
				TurnPlayer = true
				DragonCrash = true
				DD = 3
			end
			if (key == DOWN and state == STATECONST) then
				lol = lol + 1
				RandomCrash = RandomPostionCrash(x)
				CrashChoice = 4
				TurnPlayer = true
				DragonCrash = true
				DD=3	
			end
		end	
	end
end
AddEventHandler("OnKeyboardInput", OnInput)
