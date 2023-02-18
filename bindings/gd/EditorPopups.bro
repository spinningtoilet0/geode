// All level editor related popups

class CollisionBlockPopup {
    static CollisionBlockPopup* create(EffectGameObject*, cocos2d::CCArray*) = mac 0x130010;
    void onNextItemID(cocos2d::CCObject*) = mac 0x130e60;
}

class ColorSelectLiveOverlay : FLAlertLayer {
    bool init(ColorAction*, ColorAction*, EffectGameObject*) = mac 0x2e2790, win 0x41db0;
    void sliderChanged(cocos2d::CCObject*) = mac 0x2e3830;
    EffectGameObject* m_effectGameObject;
    cocos2d::CCArray* m_barSprites;
    cocos2d::CCArray* m_12buttons;
    ColorAction* m_baseColorAction;
    ColorAction* m_detailColorAction;

}

class ColorSelectPopup : FLAlertLayer, cocos2d::extension::ColorPickerDelegate, TextInputDelegate, GJSpecialColorSelectDelegate {
    virtual void colorValueChanged(cocos2d::ccColor3B color) = mac 0x423520, win 0x46ee0;
    ColorSelectPopup() {}
    bool init(EffectGameObject* triggerObj, cocos2d::CCArray* triggerObjs, ColorAction* colorAction) = mac 0x41ee70, win 0x43ae0;
    void updateColorValue() = win 0x46f30;
    void updateCopyColorTextInputLabel() = win 0x479c0, mac 0x422ed0;
    void closeColorSelect(cocos2d::CCObject* sender) = mac 0x421af0, win 0x46d80;

    cocos2d::extension::CCControlColourPicker* m_colorPicker;
    cocos2d::CCLabelBMFont* m_unk1DC;
    cocos2d::CCLabelBMFont* m_label;
    Slider* m_unk1E4;
    Slider* m_slider;
    EffectGameObject* m_effectGameObject;
    cocos2d::CCArray* m_unk1F0;
    CCMenuItemToggler* m_toggler1;
    CCMenuItemToggler* m_toggler2;
    unsigned int m_rgbLastColor;
    cocos2d::CCSprite* m_unk200;
    cocos2d::CCSprite* m_unk204;
    unsigned int m_bgrColor; // TODO: are u sure this isnt just a cccolor3b
    GJColorSetupLayer* m_colorSetupLayer;
    float m_fadeTime;
    int m_playerColor;
    bool m_isBlending;
    float m_opacity;
    ColorAction* m_colorAction;
    CCTextInputNode* m_textInput1;
    bool m_unk228;
    bool m_isTouchTrigger;
    bool m_unk22A;
    bool m_isMultipleColorTrigger;
    bool m_unk22C;
    bool m_isColorTrigger;
    int m_colorID;
    bool m_unk234;
    int m_copyChannelID;
    bool m_copyOpacity;
    ConfigureHSVWidget* m_hsvWidget;
    PAD = win 0x10;
    cocos2d::CCArray* m_unk254;
    cocos2d::CCArray* m_unk258;
    CCTextInputNode* m_textInput2;
    PAD = win 0x4;
    CCMenuItemToggler* m_toggler3;
    CCMenuItemToggler* m_toggler4;
    PAD = win 0x8;
    cocos2d::CCArray* m_unk274;
    bool m_spawnTrigger;
    bool m_multiTrigger;
    bool m_copyColor;
}

class CustomizeObjectLayer : FLAlertLayer, TextInputDelegate, HSVWidgetPopupDelegate, ColorSelectDelegate, ColorSetupDelegate {
    void onNextColorChannel(cocos2d::CCObject* sender) = win 0x56c80;
    void onSelectColor(cocos2d::CCObject* sender) = win 0x577b0;
    int getActiveMode(bool unknown) = win 0x57210;

    EffectGameObject* m_targetObject;
    cocos2d::CCArray* m_targetObjects;
    cocos2d::CCArray* m_colorButtons;
    cocos2d::CCArray* m_colorNodes;
    cocos2d::CCArray* m_textInputNodes;
    PAD = win 0x4;
    cocos2d::CCArray* m_detailColorButtons;
    int m_selectedMode;
    int m_customColorChannel;
    bool m_unk0x200;
    bool m_unk0x201;
    bool m_glowDisabled;
    CCMenuItemSpriteExtra* m_baseButton;
    CCMenuItemSpriteExtra* m_detailButton;
    CCMenuItemSpriteExtra* m_textButton;
    CCMenuItemSpriteExtra* m_baseColorHSV;
    CCMenuItemSpriteExtra* m_detailColorHSV;
    cocos2d::CCLabelBMFont* m_titleLabel;
    cocos2d::CCLabelBMFont* m_selectedColorLabel;
    CCTextInputNode* m_customColorInput;
    CCTextInputNode* m_textInput;
    ButtonSprite* m_customColorButtonSprite;
    CCMenuItemSpriteExtra* m_customColorButton;
    CCMenuItemSpriteExtra* m_arrowDown;
    CCMenuItemSpriteExtra* m_arrowUp;
    cocos2d::extension::CCScale9Sprite* m_customColorInputBG;
    ColorChannelSprite* m_colorSprite;
    CCMenuItemSpriteExtra* m_colorSpriteButton;
    bool m_showTextInput;
    bool m_customColorSelected;
}