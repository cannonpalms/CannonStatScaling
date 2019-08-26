## Required data

Strength (base, total)
Agility (base, total)
Stamina (base)
Intellect (base)
Spirit (base, total)
Armor (base)
Melee Attack (weapon skill)
Melee Power (base, posBuff, negBuff)
Melee Damage Range (main-offhand high/low values, percentMod) 
Ranged Attack (weapon skill)
Ranged Power (base, posBuff, negBuff)
Ranged Damage Range (main-offhand high/low values, percentMod) 
% Crit
% Dodge
Health
Mana

## When to record

Record new data on the level up event (PLAYER_LEVEL_UP)

## How to store data

Store data in the StatScalingDB saved variable in a format such as follows:

```
{
	1: {
		characterName: "...",
		class: "...",
		race: "...",
		levels: {
			1: {
				<see Required Data above>
			},
			2: {
				...
			},
			...
		}
	}
}
```

For each new character that is played, add a new object to the saved var.

## Any questions

Hit me up on discord.