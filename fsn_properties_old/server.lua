local mysql = false

presetItems = {
	["bandage"] = {
		index = 'bandage',
		name = 'Bandage',
		data = {
			weight = 0.4
		},
	},
	["painkillers"] = {
		index = 'painkillers',
		name = 'Pain Killers',
		data = {
			weight = 0.4
		},
	},
	["morphine"] = {
		index = 'morphine',
		name = 'Morphine',
		data = {
			weight = 0.4
		},
	},
	["radio_receiver"] = {
		index = 'radio_receiver',
		name = 'Radio Receiver',
		data = {
			weight = 0.4
		},
	},
	["repair_kit"] = {
		index = 'repair_kit',
		name = 'Repair Kit',
		data = {
			weight = 0.2
		},
	},
	["uncooked_meat"] = {
		index = 'uncooked_meat',
		name = 'Uncooked Meat',
		data = {
			weight = 2
		},
	},
	["cooked_meat"] = {
		index = 'cooked_meat',
		name = 'Cooked Meat',
		data = {
			weight = 0.3
		},
	},
	["minced_meat"] = {
		index = 'minced_meat',
		name = 'Minced Meat',
		data = {
			weight = 0.3
		},
	},
	["dirty_money"] = {
		index = 'dirty_money',
		name = 'Dirty money',
	},
	["beef_jerky"] = {
		index = 'beef_jerky',
		name = 'Beef Jerky',
		data = {
			weight = 0.5
		},
	},
	["cupcake"] = {
		index = 'cupcake',
		name = 'Cupcake',
		data = {
			weight = 0.3
		},
	},
	["burger"] = {
		index = 'burger',
		name = 'Burger Supreme',
		data = {
			weight = 1.5
		},
	},
	["microwave_burrito"] = {
		index = 'microwave_burrito',
		name = 'Microwave Burrito',
		data = {
			weight = 1.5
		},
	},
	["panini"] = {
		index = 'panini',
		name = 'Panini',
		data = {
			weight = 1
		},
	},
	["pepsi"] = {
		index = 'pepsi',
		name = 'Pepsi',
		data = {
			weight = 1
		},
	},
	["pepsi_max"] = {
		index = 'pepsi_max',
		name = 'Pepsi Max',
		data = {
			weight = 1
		},
	},
	["water"] = {
		index = 'water',
		name = 'Water',
		data = {
			weight = 1
		},
	},
	["coffee"] = {
		index = 'coffee',
		name = 'Coffee',
		data = {
			weight = 1
		},
	},
	["drill"] = {
		index = 'drill',
		name = 'Drill',
		data = {
			weight = 15
		},
	},
	["lockpick"] = {
		index = 'lockpick',
		name = 'Lockpick',
		data = {
			weight = 1.5
		},
	},
	["modified_drillbit"] = {
		index = 'modified_drillbit',
		name = 'Modified Drillbit',
		data = {
			weight = 10
		},
	},
	["zipties"] = {
		index = 'zipties',
		name = 'Zip Ties',
		data = {
			weight = 3
		},
	},
	["phone"] = {
		index = 'phone',
		name = 'Phone',
		data = {
			weight = 1
		},
	},
	["2g_weed"] = {
		index = '2g_weed',
		name = '2G Weed',
		data = {
			weight = 2
		},
	},
	["joint"] = {
		index = 'joint',
		name = 'Joint',
		data = {
			weight = 0.6
		},
	},
	["acetone"] = {
		index = 'acetone',
		name = 'Acetone',
		data = {
			weight = 1.5
		},
	},
	["phosphorus"] = {
		index = 'phosphorus',
		name = 'Phosphorus',
		data = {
			weight = 1.5
		},
	},
	["meth_rocks"] = {
		index = 'meth_rocks',
		name = 'Meth Rocks',
		data = {
			weight = 0.6
		},
	},
	["packaged_cocaine"] = {
		index = 'packaged_cocaine',
		name = 'Packaged Cocaine',
		data = {
			weight = 0.3
		},
	},
	["binoculars"] = {
		index = 'binoculars',
		name = 'Binoculars',
		data = {
			weight = 3
		},
	},
	["frozen_fries"] = {
		index = 'frozen_fries',
		name = 'Frozen Fries',
		data = {
			weight = 1
		},
	},
	["fries"] = {
		index = 'fries',
		name = 'Fries',
		data = {
			weight = 1
		},
	},
	["frozen_patty"] = {
		index = 'frozen_patty',
		name = 'Frozen Patty',
		data = {
			weight = 1
		},
	},
	["cooked_patty"] = {
		index = 'cooked_patty',
		name = 'Cooked Patty',
		data = {
			weight = 1
		},
	},
	["burger_bun"] = {
		index = 'burger_bun',
		name = 'Burger Bun',
		data = {
			weight = 1
		},
	},
	["ecola_drink"] = {
		index = 'ecola_drink',
		name = 'eCola',
		data = {
			weight = 1
		},
	},
	["keycard"] = {
		index = 'keycard',
		name = 'Key Card',
		data = {
			weight = 0.6
		},
	},
	["empty_canister"] = {
		index = 'empty_canister',
		name = 'Empty Canister',
		data = {
			weight = 5
		},
	},
	["gas_canister"] = {
		index = 'gas_canister',
		name = 'Gas Canister',
		data = {
			weight = 5
		},
	},
	["vpn1"] = {
		index = 'vpn1',
		name = 'VPN v1.0',
		data = {
			weight = 5
		},
	},
	["vpn2"] = {
		index = 'vpn2',
		name = 'VPN v2.0',
		data = {
			weight = 5
		},
	},
}

function PrintTable(o)
   if type(o) == 'table' then
      local s = '{ '
      for k,v in pairs(o) do
         if type(k) ~= 'number' then k = '"'..k..'"' end
         s = s .. '['..k..'] = ' .. dump(v) .. ','
      end
      return s .. '} '
   else
      return tostring(o)
   end
end


function init()
  MySQL.Async.fetchAll('SELECT * FROM `fsn_properties`', {}, function(res)
    for k, prop in pairs(res) do
      for k, _prop in pairs(enterable_properties) do
        if _prop.db_id == prop.property_id then
          _prop.owner = prop.property_owner
          _prop.expiry = prop.property_expiry

          local remaining = prop.property_expiry - os.time()
          local remaining_days = math.ceil(remaining / 86399)
          if prop.property_expiry ~= 0 and remaining_days < 0 then
            _prop.owner = -1
            _prop.expiry = 0
            print(':fsn_properties: '.._prop.title..' RENT RAN OUT, RESETTING TO UNSOLD')
          end
          ----
          if prop.property_coowners ~= '' then
            _prop.coowners = json.decode(prop.property_coowners)
          else
            _prop.coowners = {}
          end
          ----
          if prop.property_inventory ~= '' then
            _prop.inventory = json.decode(prop.property_inventory)
			print(#json.decode(prop.property_inventory))
          else
            _prop.inventory = {}
          end
          ----
          if prop.property_weapons ~= '' then
            _prop.weapons = json.decode(prop.property_weapons)
          else
            _prop.weapons = {}
          end
          ----
          _prop.money = prop.property_money
          print(':fsn_properties: '.._prop.title..' is now owned by '.._prop.owner)
        end
      end
    end
  end)
end

MySQL.ready(function()
    mysql = true
    init()
end)
