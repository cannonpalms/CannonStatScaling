-- File: CannonStatScaling.lua
-- Name: CannonStatScaling
-- Author: cannon
-- Description: Records a character's stats upon each level-up to determine scaling
-- Version: 1.0.0

local STAT_STRENGTH = 1
local STAT_AGILITY = 2
local STAT_STAMINA = 3
local STAT_INTELLECT = 4
local STAT_SPIRIT = 5

function crit()
	return "Crit chance: "..GetCritChance()
end

function dodge()
	return "Dodge chance: "..GetDodgeChance()
end

function agility()
	return "Agility: "..primary(STAT_AGILITY)
end

function strength()
	return "Strength: "..primary(STAT_STRENGTH)
end

function stamina()
	return "Stamina: "..primary(STAT_STAMINA)
end

function intellect()
	return "Intellect: "..primary(STAT_INTELLECT)
end

function spirit()
	return "Spirit: "..primary(STAT_SPIRIT)
end

function armor()
	local base = UnitArmor("player")
	return "Armor: "..base
end

function damage()
	local lowDmg,
		hiDmg,
		offLowDmg,
		offHiDmg,
		posBuff,
		negBuff,
		percentMod = UnitDamage("player")

	local out = "Damage: { "
	out = out.."Main: { low: "..lowDmg..", hi: "..hiDmg.." }"
	out = out..", "
	out = out.."Off: { low: "..offLowDmg..", hi: "..offHiDmg.." }"
	out = out..", "
	out = out.."posBuff: "..posBuff..", negBuff: "..negBuff..", percentMod: "..percentMod
	out = out.." }"

	return out
end

function primary(statId)
	local base, total, posBuff, negBuff = UnitStat("player", statId)
	return "{ Base: "..base..", Total: "..total..", posBuff: "..posBuff..", negBuff: "..negBuff.." }"
end

function log(s)
	DEFAULT_CHAT_FRAME:AddMessage(s, 1, 1, 1)
end

function dump()
	log(agility())
	log(strength())
	log(stamina())
	log(intellect())
	log(spirit())
	log(crit())
	log(dodge())
	log(armor())
	log(damage())
end