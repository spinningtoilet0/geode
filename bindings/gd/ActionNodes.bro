// Trigger actions that _usually_ mostly used to store data

class CollisionTriggerAction : cocos2d::CCNode {
    static CollisionTriggerAction* createFromString(gd::string) = mac 0x176ee0;
}

class ColorAction : cocos2d::CCNode {
    static ColorAction* create() = mac 0x17c990, win 0x11ab10;
    static ColorAction* create(cocos2d::ccColor3B, cocos2d::ccColor3B, float, double, bool, int, float, float) = win 0x11ab60;
    gd::string getSaveString() = mac 0x17d080, win 0x11ada0;
    void setupFromDict(cocos2d::CCDictionary*) = mac 0x17f310, win 0x11b7c0;
    void setupFromString(gd::string) = mac 0x17f270, win 0x11b730;

    PAD = mac 0xc, win 0xc;
    cocos2d::ccColor3B m_color;
    cocos2d::ccColor3B m_color2;
    float m_unk100;
    bool m_blending;
    int m_playerColor;
    int m_colorID;
    float m_opacity;
    float m_unk114;
    float m_copyHue;
    float m_copySaturation;
    float m_copyBrightness;
    bool m_saturationChecked;
    bool m_brightnessChecked;
    int m_copyID;
    PAD = mac 0x1;
    bool m_copyOpacity;
    ColorActionSprite* m_colorSprite;
    PAD = mac 0x10;
}

class ColorActionSprite : cocos2d::CCNode {
    float m_opacity;
    cocos2d::_ccColor3B m_f0124;
    cocos2d::_ccColor3B m_activeColor;
}

class CountTriggerAction : cocos2d::CCNode {
    static CountTriggerAction* createFromString(gd::string) = mac 0x1754f0;

    int m_previousCount;
    int m_targetCount;
    int m_targetID;
    bool m_activateGroup;
    bool m_multiActivate;
}