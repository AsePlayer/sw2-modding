package com.brockw.stickwar.engine.Ai.command
{
   import com.brockw.stickwar.engine.StickWar;
   import com.brockw.stickwar.engine.units.Unit;
   import flash.display.Bitmap;
   
   public class CatFuryCommand extends UnitCommand
   {
      
      public static const actualButtonBitmap:Bitmap = new Bitmap(new MagikillSummon());
       
      
      public function CatFuryCommand(game:StickWar)
      {
         super();
         type = UnitCommand.CAT_FURY;
         hotKey = 81;
         _hasCoolDown = true;
         _intendedEntityType = Unit.U_CAT;
         requiresMouseInput = false;
         isSingleSpell = false;
         isActivatable = false;
         this.buttonBitmap = actualButtonBitmap;
         cursor = new nukeCursor();
         if(game != null)
         {
            this.loadXML(game.xml.xml.Chaos.Units.cat.fury);
         }
      }
   }
}
