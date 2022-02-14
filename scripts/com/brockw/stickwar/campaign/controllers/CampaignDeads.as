package com.brockw.stickwar.campaign.controllers
{
   import com.brockw.stickwar.GameScreen;
   import com.brockw.stickwar.campaign.InGameMessage;
   import com.brockw.stickwar.engine.units.Bomber;
   import com.brockw.stickwar.engine.units.Unit;
   
   public class CampaignDeads extends CampaignController
   {
       
      
      private var message:InGameMessage;
      
      private var frames:int;
      
      private var spawnedBomber:Boolean;
      
      public function CampaignDeads(gameScreen:GameScreen)
      {
         super(gameScreen);
      }
      
      override public function update(gameScreen:GameScreen) : void
      {
         var u:Unit = null;
         var u1:Bomber = null;
         if(!this.spawnedBomber)
         {
            u1 = Bomber(gameScreen.game.unitFactory.getUnit(Unit.U_BOMBER));
            u1.bomberType = "poisonBomber";
            gameScreen.team.spawn(u1,gameScreen.game);
            this.spawnedBomber = true;
         }
         if(this.message && gameScreen.contains(this.message))
         {
            this.message.update();
            if(this.frames++ > 30 * 5)
            {
               gameScreen.removeChild(this.message);
            }
         }
         else if(!this.message)
         {
            for each(u in gameScreen.team.units)
            {
               if(u.isPoisoned())
               {
                  this.message = new InGameMessage("",gameScreen.game);
                  this.message.x = gameScreen.game.stage.stageWidth / 2;
                  this.message.y = gameScreen.game.stage.stageHeight / 4 - 75;
                  this.message.scaleX *= 1.3;
                  this.message.scaleY *= 1.3;
                  gameScreen.addChild(this.message);
                  this.message.setMessage("A unit has been poisoned. Garrisoning this unit will cure its poison","");
                  this.frames = 0;
                  break;
               }
            }
         }
      }
   }
}
