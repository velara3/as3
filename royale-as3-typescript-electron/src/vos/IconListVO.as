package vos {
    
    [Bindable]
    public class IconListVO
    {
        public var label:String;
        public var icon:String;

        public function IconListVO(label:String, icon:String = null)
        { 
            this.label = label;
            this.icon = icon;
        }
    }
}