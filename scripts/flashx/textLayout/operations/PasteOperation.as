package flashx.textLayout.operations
{
   import flashx.textLayout.conversion.ConverterBase;
   import flashx.textLayout.edit.ModelEdit;
   import flashx.textLayout.edit.SelectionState;
   import flashx.textLayout.edit.TextFlowEdit;
   import flashx.textLayout.edit.TextScrap;
   import flashx.textLayout.elements.FlowLeafElement;
   import flashx.textLayout.elements.ParagraphElement;
   import flashx.textLayout.formats.ITextLayoutFormat;
   import flashx.textLayout.formats.TextLayoutFormat;
   import flashx.textLayout.tlf_internal;
   
   use namespace tlf_internal;
   
   public class PasteOperation extends FlowTextOperation
   {
       
      
      private var _textScrap:TextScrap;
      
      private var _numCharsAdded:int = 0;
      
      private var _deleteTextOperation:DeleteTextOperation;
      
      private var _applyParagraphSettings:Array;
      
      private var _pointFormat:ITextLayoutFormat;
      
      private var _applyPointFormat:ApplyFormatOperation;
      
      public function PasteOperation(operationState:SelectionState, textScrap:TextScrap)
      {
         this._pointFormat = operationState.pointFormat;
         super(operationState);
         this._textScrap = textScrap;
      }
      
      override public function doOperation() : Boolean
      {
         var plainText:Boolean = false;
         var nextInsertPosition:int = 0;
         var leaf:FlowLeafElement = null;
         var paragraph:ParagraphElement = null;
         if(this._textScrap != null)
         {
            if(absoluteStart != absoluteEnd)
            {
               this._deleteTextOperation = new DeleteTextOperation(originalSelectionState);
               this._deleteTextOperation.doOperation();
            }
            plainText = this._textScrap.isPlainText();
            if(!plainText)
            {
               leaf = textFlow.findLeaf(absoluteStart);
               paragraph = leaf.getParagraph();
               if(paragraph.textLength == 1)
               {
                  this.applyParagraphSettings(paragraph);
               }
            }
            nextInsertPosition = TextFlowEdit.insertTextScrap(textFlow,absoluteStart,this._textScrap,plainText);
            if(textFlow.interactionManager)
            {
               textFlow.interactionManager.notifyInsertOrDelete(absoluteStart,nextInsertPosition - absoluteStart);
            }
            this._numCharsAdded = nextInsertPosition - absoluteStart;
            if(this._pointFormat && plainText)
            {
               this._applyPointFormat = new ApplyFormatOperation(new SelectionState(textFlow,absoluteStart,absoluteStart + this._numCharsAdded),this._pointFormat,null,null);
               this._applyPointFormat.doOperation();
            }
         }
         return true;
      }
      
      private function applyParagraphSettings(paragraph:ParagraphElement) : void
      {
         var scrapParagraph:ParagraphElement = this._textScrap.textFlow.getFirstLeaf().getParagraph();
         this._applyParagraphSettings = [];
         var format:TextLayoutFormat = new TextLayoutFormat(scrapParagraph.format);
         format.setStyle(ConverterBase.MERGE_TO_NEXT_ON_PASTE,undefined);
         var applyParagraphFormat:ApplyFormatToElementOperation = new ApplyFormatToElementOperation(originalSelectionState,paragraph,format);
         applyParagraphFormat.doOperation();
         this._applyParagraphSettings.push(applyParagraphFormat);
      }
      
      override public function undo() : SelectionState
      {
         var i:int = 0;
         if(this._textScrap != null)
         {
            if(this._applyPointFormat)
            {
               this._applyPointFormat.undo();
            }
            ModelEdit.deleteText(textFlow,absoluteStart,absoluteStart + this._numCharsAdded,false);
            if(this._applyParagraphSettings)
            {
               for(i = this._applyParagraphSettings.length - 1; i >= 0; i--)
               {
                  this._applyParagraphSettings[i].undo();
               }
            }
            if(this._deleteTextOperation)
            {
               this._deleteTextOperation.undo();
            }
         }
         return originalSelectionState;
      }
      
      override public function redo() : SelectionState
      {
         var nextInsertPosition:int = 0;
         var i:int = 0;
         if(this._textScrap != null)
         {
            if(this._deleteTextOperation)
            {
               this._deleteTextOperation.redo();
            }
            if(this._applyParagraphSettings)
            {
               for(i = this._applyParagraphSettings.length - 1; i >= 0; i--)
               {
                  this._applyParagraphSettings[i].redo();
               }
            }
            nextInsertPosition = TextFlowEdit.insertTextScrap(textFlow,absoluteStart,this._textScrap,this._textScrap.isPlainText());
            if(textFlow.interactionManager)
            {
               textFlow.interactionManager.notifyInsertOrDelete(absoluteStart,nextInsertPosition - absoluteStart);
            }
            if(this._applyPointFormat)
            {
               this._applyPointFormat.redo();
            }
         }
         return new SelectionState(textFlow,absoluteStart + this._numCharsAdded,absoluteStart + this._numCharsAdded,null);
      }
      
      public function get textScrap() : TextScrap
      {
         return this._textScrap;
      }
      
      public function set textScrap(val:TextScrap) : void
      {
         this._textScrap = val;
      }
   }
}
