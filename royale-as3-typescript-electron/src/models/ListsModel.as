package models
{
    import org.apache.royale.collections.ArrayList;
    import vos.IconListVO;

    public class ListsModel 
    {
        /**
         * this is the dataProvider for the List
         */
        private var _iconListData:ArrayList = new ArrayList([
            new IconListVO("Alert", MaterialIconType.WEB_ASSET),
            new IconListVO("Button", MaterialIconType.CROP_7_5),
            new IconListVO("DropDownList", MaterialIconType.CREDIT_CARD),
            new IconListVO("CheckBox", MaterialIconType.CHECK_BOX),
            new IconListVO("Label", MaterialIconType.LABEL),
            new IconListVO("List", MaterialIconType.LIST_ALT),
            new IconListVO("RadioButton", MaterialIconType.RADIO_BUTTON_CHECKED),
            new IconListVO("Slider", MaterialIconType.STORAGE),
            new IconListVO("Text", MaterialIconType.SUBJECT),
            new IconListVO("TextInput", MaterialIconType.TEXT_FIELDS)            
        ]);

        public function get iconListData():ArrayList
        {
            return _iconListData;
        }
    }
}