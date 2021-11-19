package com.brockw.stickwar.engine
{
   public class SoundLoader
   {
       
      
      public function SoundLoader(soundManager:SoundManager)
      {
         super();
         soundManager.addSound("acidPoolSound",acidPoolSound,1);
         soundManager.addSound("medusaPetrifySound",medusaPetrifySound,1);
         soundManager.addSound("deathKnightChargeSound",deathKnightChargeSound,1);
         soundManager.addSound("fulminateSound",fulminateSound,1);
         soundManager.addSound("wizardPoisonSound",wizardPoisonSound,1);
         soundManager.addSound("electricWallSound",electricWallSound,1);
         soundManager.addSound("skeltalFistsSound",skeltalFistsSound,1);
         soundManager.addSound("skeletalReaperSound",skeletalReaperSound,1);
         soundManager.addSound("ninjaCloakSound",ninjaCloakSound,1);
         soundManager.addSound("speartonHoghSound",speartonHoghSound,1);
         soundManager.addSound("OrderVictory",OrderVictory,2.4);
         soundManager.addSound("OrderDefeat",OrderDefeat,2.4);
         soundManager.addSound("orderInGame",OrderMainLoop,1,3);
         soundManager.addSound("chaosInGame",ChaosMainLoop,1,3);
         soundManager.addSound("lobbyMusic",LobbyMusic,1,2.4);
         soundManager.addSound("loginMusic",LoginMusic,1,2.4);
         soundManager.addSound("orderDeath1",orderDeath1,10);
         soundManager.addSound("orderDeath2",orderDeath2,10);
         soundManager.addSound("hitOnArmour1",hitOnArmour1,10,0.6);
         soundManager.addSound("hitOnArmour2",hitOnArmour2,10,0.6);
         soundManager.addSound("hitOnArmour3",hitOnArmour3,10,0.6);
         soundManager.addSound("hitOnArmour4",hitOnArmour4,10,0.6);
         soundManager.addSound("hitOnArmour5",hitOnArmour5,10,0.6);
         soundManager.addSound("hitOnArmour6",hitOnArmour6,10,0.6);
         soundManager.addSound("hitOnArmour7",hitOnArmour7,10,0.6);
         soundManager.addSound("hitOnFlesh1",hitOnFlesh1,10,0.6);
         soundManager.addSound("hitOnFlesh2",hitOnFlesh2,10,0.6);
         soundManager.addSound("hitOnFlesh3",hitOnFlesh3,10,0.6);
         soundManager.addSound("hitOnFlesh4",hitOnFlesh4,10,0.6);
         soundManager.addSound("hitOnFlesh5",hitOnFlesh5,10,0.6);
         soundManager.addSound("hitOnFlesh6",hitOnFlesh6,10,0.6);
         soundManager.addSound("hitOnFlesh7",hitOnFlesh7,10,0.6);
         soundManager.addSound("hitOnFlesh8",hitOnFlesh8,10,0.6);
         soundManager.addSound("hitOnFlesh9",hitOnFlesh9,10,0.6);
         soundManager.addSound("hitOnFlesh10",hitOnFlesh10,10,0.6);
         soundManager.addSound("hitOnFlesh11",hitOnFlesh11,10,0.6);
         soundManager.addSound("hitOnFlesh12",hitOnFlesh12,10,0.6);
         soundManager.addSound("minerHit",SwordwrathHit1,10);
         soundManager.addSound("minerDeath",GenericDeath,10);
         soundManager.addSound("swordwrathSwing1",SwordwrathSwing1,10,0.125);
         soundManager.addSound("swordwrathDeath",GenericDeath,10,0.5);
         soundManager.addSound("speartonHit1",SwordwrathHit1,10);
         soundManager.addSound("speartonDeath",GenericDeath,10);
         soundManager.addSound("archidonBow",SwordwrathHit1,10,0.85);
         soundManager.addSound("archidonDeath",GenericDeath,10);
         soundManager.addSound("ninjaSwipe1",ninjaSwipe1,10,0.5);
         soundManager.addSound("ninjaSwipe2",ninjaSwipe2,10,0.5);
         soundManager.addSound("ninjaSwipe3",ninjaSwipe3,10,0.5);
         soundManager.addSound("ninjaSwipe4",ninjaSwipe4,10,0.5);
         soundManager.addSound("launchArrow1",launchArrow1,10,0.75);
         soundManager.addSound("launchArrow2",launchArrow2,10,0.75);
         soundManager.addSound("launchArrow3",launchArrow3,10,0.75);
         soundManager.addSound("launchArrow4",launchArrow4,10,0.75);
         soundManager.addSound("StatueHit1",StatueHit1,10,0.5);
         soundManager.addSound("StatueHit2",StatueHit2,10,0.5);
         soundManager.addSound("StatueHit3",StatueHit3,10,0.5);
         soundManager.addSound("StatueHit4",StatueHit4,10,0.5);
         soundManager.addSound("StatueHit5",StatueHit5,10,0.5);
         soundManager.addSound("electricWall",electricWallSpellSound,10);
         soundManager.addSound("mediumExplosion1",mediumExplosion1,10);
         soundManager.addSound("mediumExplosion2",mediumExplosion2,10);
         soundManager.addSound("mediumExplosion3",mediumExplosion3,10);
         var tutorialVoiceVolume:Number = 0.8;
         soundManager.addSound("voiceTutorial1",voiceTutorial1,tutorialVoiceVolume);
         soundManager.addSound("voiceTutorial2",voiceTutorial2,tutorialVoiceVolume);
         soundManager.addSound("voiceTutorial3",voiceTutorial3,tutorialVoiceVolume);
         soundManager.addSound("voiceTutorial4",voiceTutorial4,tutorialVoiceVolume);
         soundManager.addSound("voiceTutorial5",voiceTutorial5,tutorialVoiceVolume);
         soundManager.addSound("voiceTutorial6",voiceTutorial6,tutorialVoiceVolume);
         soundManager.addSound("voiceTutorial7",voiceTutorial7,tutorialVoiceVolume);
         soundManager.addSound("voiceTutorial8",voiceTutorial8,tutorialVoiceVolume);
         soundManager.addSound("voiceTutorial9",voiceTutorial9,tutorialVoiceVolume);
         soundManager.addSound("voiceTutorial10",voiceTutorial10,tutorialVoiceVolume);
         soundManager.addSound("voiceTutorial11",voiceTutorial11,tutorialVoiceVolume);
         soundManager.addSound("voiceTutorial12",voiceTutorial12,tutorialVoiceVolume);
         soundManager.addSound("voiceTutorial13",voiceTutorial13,tutorialVoiceVolume);
         soundManager.addSound("voiceTutorial14",voiceTutorial14,tutorialVoiceVolume);
         soundManager.addSound("voiceTutorial15",voiceTutorial15,tutorialVoiceVolume);
         soundManager.addSound("voiceTutorial16",voiceTutorial16,tutorialVoiceVolume);
         soundManager.addSound("voiceTutorial17",voiceTutorial17,tutorialVoiceVolume);
         soundManager.addSound("voiceTutorial18",voiceTutorial18,tutorialVoiceVolume);
         soundManager.addSound("voiceTutorial19",voiceTutorial19,tutorialVoiceVolume);
         soundManager.addSound("voiceTutorial20",voiceTutorial20,tutorialVoiceVolume);
         soundManager.addSound("voiceTutorial21",voiceTutorial21,tutorialVoiceVolume);
         soundManager.addSound("voiceTutorial22",voiceTutorial22,tutorialVoiceVolume);
         soundManager.addSound("MedusaVoiceOverLevel5",MedusaVoiceOverLevel5,1);
         soundManager.addSound("wizardVoiceOver1",wizardVoiceOver1,1);
         soundManager.addSound("wizardVoiceOver2",wizardVoiceOver2,1);
         soundManager.addSound("wizardVoiceOver3",wizardVoiceOver3,1);
         soundManager.addSound("wizardVoiceOver4",wizardVoiceOver4,1);
         soundManager.addSound("medusaVoice1",medusaVoice1,1);
         soundManager.addSound("medusaVoice2",medusaVoice2,1);
         soundManager.addSound("medusaVoice3",medusaVoice3,1);
         soundManager.addSound("youMustAllDie",youMustAllDie,1);
         soundManager.addSound("clickButton",clickButton,1,0.25);
         soundManager.addSound("newEmpirePoints",newEmpirePointsSound,1);
         soundManager.addSound("tutorialGood1",tutorialGood1,1);
         soundManager.addSound("tutorialGood2",tutorialGood2,1);
         soundManager.addSound("tutorialGood3",tutorialGood3,1);
         soundManager.addSound("tutorialGood4",tutorialGood4,1);
         soundManager.addSound("ArmoryEquipSound",ArmoryEquipSound,1);
         soundManager.addSound("ButtonSound",ButtonSound,1);
         soundManager.addSound("CancelMatchmakingSound",CancelMatchmakingSound,1);
         soundManager.addSound("LoginSound",LoginSound,1);
         soundManager.addSound("MatchFoundSound",MatchFoundSound,1);
         soundManager.addSound("MenuTab",MenuTab,1,2);
         soundManager.addSound("SelectRaceSound",SelectRaceSound,1);
         soundManager.addSound("StartMatchmaking",StartMatchmaking,1);
         soundManager.addSound("UnitReady",UnitReady,1,0.3);
         soundManager.addSound("UnitUnlock",UnitUnlock,1);
         soundManager.addSound("ClickGold",ClickGold,2,0.5);
         soundManager.addSound("ClickMana",ClickMana,1);
         soundManager.addSound("CommandHoldSound",CommandHoldSound,0.5);
         soundManager.addSound("CommandMove1",CommandMove1,1,1);
         soundManager.addSound("CommandMove2",CommandMove2,1,1);
         soundManager.addSound("CommandMove3",CommandMove3,1,1);
         soundManager.addSound("CommandMove4",CommandMove4,1,1);
         soundManager.addSound("CommandMove5",CommandMove5,1,1);
         soundManager.addSound("CommandMove6",CommandMove6,1,1);
         soundManager.addSound("CommandStopSound",CommandStopSound,0.5);
         soundManager.addSound("GarrisonEnter",GarrisonEnter,1);
         soundManager.addSound("GarrisonExit",GarrisonExit,1);
         soundManager.addSound("MouseoverStructure",MouseoverStructure,1,2);
         soundManager.addSound("StatueDestroyed",StatueDestroyed,1,0.4);
         soundManager.addSound("Pain1",Pain1,1,2);
         soundManager.addSound("Pain2",Pain2,1,2);
         soundManager.addSound("Pain3",Pain3,1,2);
         soundManager.addSound("Pain4",Pain4,1,2);
         soundManager.addSound("Pain5",Pain5,1,2);
         soundManager.addSound("Pain6",Pain6,1,2);
         soundManager.addSound("Pain7",Pain7,1,2);
         soundManager.addSound("Pain8",Pain8,1,2);
         soundManager.addSound("Pain9",Pain9,1,2);
         soundManager.addSound("Pain10",Pain10,1,2);
         soundManager.addSound("Pain11",Pain11,1,2);
         soundManager.addSound("Pain12",Pain12,1,2);
         soundManager.addSound("Pain13",Pain13,1,2);
         soundManager.addSound("Pain14",Pain14,1,2);
         soundManager.addSound("Pain15",Pain15,1,2);
         soundManager.addSound("BowReady",BowReady,1,0.5);
         soundManager.addSound("launchArrow5",launchArrow5,1,1);
         soundManager.addSound("TowerCapture",TowerCapture,1,1);
         soundManager.addSound("UnitMake",UnitMake,1,1);
         soundManager.addSound("UnitMakeFail",UnitMakeFail,1,1);
         soundManager.addSound("ResearchStarted",ResearchStarted,1,1);
         soundManager.addSound("Hellfistin",Hellfistin,1,1);
         soundManager.addSound("Hellfistout1",Hellfistout1,1,1);
         soundManager.addSound("Hellfistout2",Hellfistout3,1,1);
         soundManager.addSound("Hellfistout3",Hellfistout3,1,1);
         soundManager.addSound("MagikillDeath",MagikillDeath,1,1);
         soundManager.addSound("Medusa1",Medusa1,1,2);
         soundManager.addSound("Medusa2",Medusa2,1,2);
         soundManager.addSound("Medusa3",Medusa3,1,2);
         soundManager.addSound("PoisonCureSpellFinish",PoisonCureSpellFinish,1,1);
         soundManager.addSound("PoisonCureSpellStart",PoisonCureSpellStart,1,1);
         soundManager.addSound("HealSpellFinish",HealSpellFinish,1,1);
         soundManager.addSound("HealSpellStart",HealSpellStart,1,1);
         soundManager.addSound("PoisonedSound",PoisonedSound,1,1);
         soundManager.addSound("Rage1",Rage1,1,1);
         soundManager.addSound("Rage2",Rage2,1,1);
         soundManager.addSound("Rage3",Rage3,1,1);
         soundManager.addSound("ReaperAir1",ReaperAir1,1,5);
         soundManager.addSound("ReaperAir2",ReaperAir2,1,5);
         soundManager.addSound("ReaperAir3",ReaperAir3,1,5);
         soundManager.addSound("AcidSpraySound",AcidSpraySound,1,1);
         soundManager.addSound("BoulderSmashSound",BoulderSmashSound,1,1);
         soundManager.addSound("BoulderThrowSound",BoulderThrowSound,1,2.5);
         soundManager.addSound("BuildChaosTower",BuildChaosTower,1,1);
         soundManager.addSound("BuildWall",BuildWall,1,1);
         soundManager.addSound("CrawlerDeath1",CrawlerDeath1,1,2);
         soundManager.addSound("CrawlerDeath2",CrawlerDeath2,1,2);
         soundManager.addSound("CrawlerDeath3",CrawlerDeath3,1,2);
         soundManager.addSound("CrawlerPain1",CrawlerPain1,1,1);
         soundManager.addSound("CrawlerPain2",CrawlerPain2,1,1);
         soundManager.addSound("CrawlerPain3",CrawlerPain3,1,1);
         soundManager.addSound("ElectricWallSoundEffect",ElectricWallSoundEffect,1,1);
         soundManager.addSound("GhostTower1",GhostTower1,1,1);
         soundManager.addSound("GhostTower2",GhostTower2,1,1);
         soundManager.addSound("GiantDeath1",GiantDeath1,1,3);
         soundManager.addSound("GiantDeath2",GiantDeath2,1,3);
         soundManager.addSound("GiantDeath3",GiantDeath3,1,3);
         soundManager.addSound("GiantGrowl1",GiantGrowl1,1,3);
         soundManager.addSound("GiantGrowl2",GiantGrowl2,1,3);
         soundManager.addSound("GiantGrowl3",GiantGrowl3,1,3);
         soundManager.addSound("GiantGrowl4",GiantGrowl4,1,3);
         soundManager.addSound("GiantGrowl5",GiantGrowl5,1,3);
         soundManager.addSound("GiantGrowl6",GiantGrowl6,1,3);
         soundManager.addSound("BodyfallSound",BodyfallSound,1,6);
      }
   }
}
