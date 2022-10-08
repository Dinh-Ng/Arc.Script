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
