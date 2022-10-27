---@diagnostic disable: lowercase-global, undefined-global
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

-- fuction run through wall
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

function menuoth()
  menuother = gg.choice({
    "✡️Đổi skill (InGame)☯️",
    "✡️Đổi hết sang đồ đỏ👑",
	-- "✡️Chiến P (🦏 vs 🐊)",
    "✡️Back↩️"
  }, nil, "⚜⚜⚜ other hack ⚜⚜⚜")
  if menuother == 1   	then 		skin() 			end
  if menuother == 2   	then 		deck()  		end
  -- if menuother == 3   	then 		MSTbattle()  	end
  if menuother == 3 	then    	main()  		end

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
