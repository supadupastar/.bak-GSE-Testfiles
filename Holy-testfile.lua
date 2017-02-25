

DPS:
/castsequence [nochanneling: Holy Fire] Holy Fire, Divine Star, Holy Word: Chastise, Smite
/cast [nochanneling: Holy Fire] Holy Fire
/cast [nochanneling: Holy Fire] Smite
/cast [nochanneling: Holy Fire] Divine Star
/cast [nochanneling: Holy Fire] Holy Word: Chastise
/cast [nochanneling] Circle of Healing
/cast [@player] Body and Mind

Heal solo:
/castsequence [@mouseover,exists,help,nodead][] Renew, Flash Heal, Heal, Heal
/cast [@mouseover,exists,help,nodead] Renew
/cast [@mouseover,exists,help,nodead] Flash Heal
/cast [@mouseover,exists,help,nodead] Heal
/cast [@mouseover,exists,help,nodead] Circle of Healing
/cast [@player] Body and Mind

Heal aoe:

/cast [nochanneling] Circle of Healing
/cast [nochanneling] Prayer of Healing
/cast [nochanneling][@cursor] Holy Word: Sanctify
/cast [mod:ctrl][nochanneling] Divine Hymn
/cast [@player] Prayer of Mending



DEF:
/cast [@player] Body and Mind
/cast [@player] Guardian Spirit
/cast [@player] Desperate Prayer
/cast [@player] Holy Word: Serenity


standard macro:
/castsequence [@player,exists,nodead] Body and Mind, Renew






Sequences['KTNHOLYSINGLE5'] = {
author="KTN",
specID=257,
helpTxt = 'Talents - 3 2 3 1 3 3 2',
PreMacro=[[
/targetlasttarget [noexists,nocombat]
/use [dead] Findle's Loot-A-Rang
/assist [@focus,exists,nodead]
/targetenemy [noharm][dead]
/cast Berserking
/cast Fade
]],
'/castsequence [@focus,exists,nodead] Body and Mind, Renew',
'/cast [@focus,exists,nodead] Prayer of Mending',
'/cast [@focus,exists,nodead] Holy Word: Serenity',
'/castsequence reset=target [@mouseover,exists,help,nodead] Renew, Heal,  Prayer of Healing, Heal, Heal, Prayer of Healing, Heal',
'/cast [combat] Halo',
PostMacro=[[
/use 13
/use 14
]],
}




Sequences['KTNHOLYSINGLE5'] = {
author="KTN",
specID=257,
helpTxt = 'Talents - 3 2 3 1 3 3 2',
PreMacro=[[
/assist [@focus,exists,nodead]
/targetenemy [noharm][dead]
/cast Berserking
/cast Fade
]],
'/castsequence reset=target [@mouseover,exists,help,nodead] Renew, Flash Heal, Flash Heal, Flash Heal, Flash Heal, Flash Heal',
'/castsequence [@focus,exists,nodead] Body and Mind, Renew',
'/cast [@focus,exists,nodead] Prayer of Mending',
'/cast [@focus,exists,nodead] Holy Word: Serenity',
'/cast [combat] Halo',
PostMacro=[[
/use 13
/use 14
]],
}


Sequences['KTNHH'] = {
-- This Sequence was exported from GSE 2.0.14.
  Author="KillTheNoise",
  SpecID=257,
  Talents = "3,2,3,1,1,1,3",
  Helplink = "https://wowlazymacros.com/forums/topic/gs-e-holy-priest-heal-7-0-3/page/2/",
  Help = "Mouse over the party/raid frames for single target heals, set the tank as focus at the beginning and roll.",
  Default=1,
  Icon='Spell_Holy_GuardianSpirit',
  MacroVersions = {
    [1] = {
      StepFunction = [[Sequential]],
      KeyPress={
        "/assist [@focus,exists,nodead]",
        "/targetenemy [noharm][dead]",
        "/castsequence [@mouseover,exists,help,nodead] Renew, Flash Heal, Heal, Heal",
        "/cast [@mouseover,exists,help,nodead] Light of T'uure",
      },
      PreMacro={
      },
        "/cast [@player,nogroup] Body and Mind",
        "/castsequence [@focus,exists,nodead] Body and Mind, Renew",
        "/castsequence [@focus,exists,nodead] Prayer of Mending, Prayer of Healing",
        "/cast Circle of Healing",
        "/cast [combat] Holy Word: Chastise",
        "/cast [combat] Holy Fire",
        "/cast [combat] Smite",
      PostMacro={
      },
      KeyRelease={
        "/cast [@player] Holy Word: Sanctify",
        "/startattack",
        "/cast [combat] Fade",
      },
    },
  },
}