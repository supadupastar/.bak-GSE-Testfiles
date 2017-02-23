Atonement (Passive)	
Flash Heal	
Focused Will (Passive)	
Leap of Faith	
Levitate	
Mass Resurrection	
Mastery: Absolution (Passive)	
Mind Vision	
Pain Suppression	
Penance	
Plea	
Power Word: Barrier	
Power Word: Radiance	
Power Word: Shield	
Psychic Scream	
Purify	
Rapture	
Shadowfiend	
Shadow Mend	
Shadow Word: Pain	
Smite (Passive)




Base Healing Macro
This is the base macro that all my healing macros are derived from.

Alt: Self Cast
Mouseover Friend: Cast on Mouseover
Target Friend: Cast on Target
Target Enemy Targeting Friend: Cast on Enemy's Target
Default casting behavior. This condition also serves to generate the correct tooltip.

#showtooltip
/cast [mod:alt,@player] [@mouseover,help,nodead] [help] [@targettarget,help] [] SPELL



Offensive Macro for Healers
This macro is primarily for healers who want to play Disc but want to play it like a traditional healer. Basically allows you to dps while having fiendly players targeted or moused over.

Mouseover Enemy: Cast on Mouseover
Target Enemy: Cast on Target
Mouseover Friend Targeting Enemy: Cast on Friend's Target
Target Friend Targeting Enemy: Cast on Friend's Target
Default casting behavior. This condition also serves to generate the correct tooltip.

#showtooltip
/cast [@mouseover,harm,nodead] [harm] [@mouseovertarget,harm] [@targettarget,harm] [] SPELL



Mouseover Macro for DPS

This is a basic mouseover macro for offensive spells such as Shadow Word: Pain, Vampiric Touch, and Void Eruption (Void Bolt)

Mouseover Enemy: Cast on Mouseover
Default casting behavior. This condition also serves to generate the correct tooltip.

#showtooltip
/cast [@mouseover,harm,nodead] [] SPELL





==============================================================

==============================================================



Sequences['DiscDamage'] = {
-- This Sequence was exported from GSE 2.0.14.
  Author="Me",
  SpecID=256,
  Talents = "x 3,2,1,1,1,3,1",
  Default=1,
  Icon='Spell_Holy_PowerWordShield',
  MacroVersions = {
    [1] = {
      Trinket1=false,
      Head=false,
      Neck=false,
      Belt=false,
      Ring1=false,
      Ring2=false,
      StepFunction = [[Sequential]],
      KeyPress={
        "/targetenemy [noharm][dead]",
      },
      PreMacro={
      },
        "/cast [nochanneling: Penance] Schism",
        "/castsequence [nochanneling: Penance] Power Word: Solace, Purge the Wicked, Divine Star",
        "/cast [nochanneling: Penance] Penance",
        "/cast [nochanneling: Penance] Smite",
        "/cast [combat][nochanneling: Penance] Power Word: Shield",
      PostMacro={
      },
      KeyRelease={
        "/startattack",
      },
    },
  },
}



Sequences['DiscHeal'] = {
-- This Sequence was exported from GSE 2.0.14.
  Author="Me",
  SpecID=256,
  Talents = " ",
  Default=1,
  MacroVersions = {
    [1] = {
      StepFunction = [[Sequential]],
      KeyPress={
        "/targetenemy [noharm][dead]",
      },
      PreMacro={
      },

        "/castsequence [@mouseover,exists,help,nodead] Shadow Mend, Plea, Plea",
        "/cast [@focus,exists,nodead] Power Word: Radiance",
      PostMacro={
      },
      KeyRelease={
        "/startattack",
      },
    },
  },
}

==============================================================
TEST CODES
==============================================================


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





DEF

/cast [nochanneling: Penance] Psychic Scream
/cast [combat][nochanneling: Plea] Pain Suppression
/cast [combat][nochanneling: Plea][@player] Power Word: Shield
/castsequence [@player] Plea, Plea, Shadow Mend
/targetenemy [noharm][dead]
/cast [nochanneling: Penance] Light's Wrath
/castsequence [@player] Plea, Plea, Shadow Mend