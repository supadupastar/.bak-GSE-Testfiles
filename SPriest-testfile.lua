Dispersion	
Flash Heal	
Levitate	
Mastery: Madness (Passive)	
Mind Blast	
Mind Flay	
Mind Sear (Passive)	
Mind Vision	
Power Word: Shield	
Psychic Scream	
Purify Disease	
Shadowfiend	
Shadowform	
Shadow Mend	
Shadow Word: Death	
Shadow Word: Death (Passive)	
Shadow Word: Pain	
Shadowy Apparitions (Passive)	
Silence	
Vampiric Embrace	
Vampiric Touch	
Void Bolt (Passive)	
Void Bolt (Passive)	
Void Eruption	
Voidform (Passive)
Void Torrent


==============================================================

==============================================================


Sequences['SPriest'] = {
-- This Sequence was exported from GSE 2.0.14.
  Author="Dæmsoñ@Antonidas",
  SpecID=258,
  Talents = "",
  Default=1,
  Icon='Spell_Shadow_ShadowWordPain',
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
        "/cast [form:0] Shadowform",
        "/targetenemy [noharm] [dead]",
      },
      PreMacro={
      },
        "/cast [combat, nochanneling:Void Torrent] Void Eruption",
        "/castsequence [combat, nochanneling:Void Torrent] Shadow Word: Death, Shadow Word: Death, Mind Blast, Mind Blast",
        "/castsequence [combat, nochanneling:Void Torrent] Mind Blast, Mind Blast",
        "/castsequence [combat, nochanneling:Void Torrent] Mind Flay, Mind Flay",
        "/castsequence [combat, nochanneling:Void Torrent] Mind Blast, Mind Blast",
        "/cast [combat, nochanneling:Void Torrent] Mindbender",
		"/castsequence [harm,nodead][@targettarget,harm,nodead][@targettargettarget,harm,nodead][@targettargettargettarget,harm,nodead][@targettargettargettargettarget,harm,nodead] Shadow Word: Pain, Vampiric Touch",
      PostMacro={
      },
      KeyRelease={
      },
    },
  },
}



Sequences['SPriest_def'] = {
-- This Sequence was exported from GSE 2.0.14.
  Author="Dæmsoñ@Antonidas",
  SpecID=258,
  Talents = "",
  Default=1,
  MacroVersions = {
    [1] = {
      Trinket1=false,
      Trinket2=false,
      Head=false,
      Neck=false,
      Belt=false,
      Ring1=false,
      Ring2=false,
      StepFunction = [[Sequential]],
      KeyPress={
      },
      PreMacro={
      },
        "/cast [combat, nochanneling] Psychic Scream",
        "/use Healthstone",
        "/cast [combat, nochanneling: Shadow Word: Pain][@player] Power Word: Shield",
      PostMacro={
      },
      KeyRelease={
      },
    },
  },
}



Sequences['SPriest_dots'] = {
-- This Sequence was exported from GSE 2.0.14.
  Author="Dæmsoñ@Antonidas",
  SpecID=258,
  Talents = "",
  Default=1,
  Icon='Spell_Shadow_ShadowWordPain',
  MacroVersions = {
    [1] = {
      Trinket1=false,
      Trinket2=true,
      Head=false,
      Neck=false,
      Belt=false,
      Ring1=false,
      Ring2=false,
      StepFunction = [[Sequential]],
      KeyPress={
        "/cast [form:0] Shadowform",
        "/targetenemy [noharm] [dead]",
      },
      PreMacro={
      },
        "/cast [@mouseover,harm,nodead] [] Shadow Word: Pain",
        "/cast [@mouseover,harm,nodead] [] Vampiric Touch",
        "/cast [combat, nochanneling: Shadow Word: Pain][@player] Power Word: Shield",
      PostMacro={
      },
      KeyRelease={
      },
    },
  },
}



Sequences['SPriest_heal'] = {
-- This Sequence was exported from GSE 2.0.14.
  Author="Dæmsoñ@Antonidas",
  SpecID=258,
  Talents = "",
  Default=1,
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
      },
      PreMacro={
      },
        "/cast [nochanneling] Shadow Mend",
        "/use healthstone",
        "/cast [combat, nochanneling: Shadow Word: Pain][@player] Power Word: Shield",
        "/cast [combat, nochanneling] Vampiric Embrace",
      PostMacro={
      },
      KeyRelease={
      },
    },
  },
}



==============================================================
TEST CODES
==============================================================



SPriest_dot (standard macro)

#showtooltip Shadow Word: Pain
/castsequence [harm,nodead][@targettarget,harm,nodead][@targettargettarget,harm,nodead][@targettargettargettarget,harm,nodead][@targettargettargettargettarget,harm,nodead]Shadow Word: Pain, Vampiric Touch




























