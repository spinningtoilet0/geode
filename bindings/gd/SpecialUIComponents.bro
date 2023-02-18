// UI components that are not really generic

class CCCircleWave : cocos2d::CCNode {
    static CCCircleWave* create(float, float, float, bool) = mac 0xbd270, win 0x16c00;
    static CCCircleWave* create(float, float, float, bool, bool) = mac 0xbd290, win 0x16c00;
    bool init(float, float, float, bool, bool) = mac 0xbd380, win 0x16cd0;
    void followObject(cocos2d::CCNode*, bool) = mac 0xbd670, win 0x16f20;
    void updatePosition(float) = mac 0xbd630, win 0x16f00;
    void setPosition(cocos2d::CCPoint const& pos) = mac 0xbd600, win 0x16ed0;
    void removeMeAndCleanup() = mac 0xbdac0, win 0x17280;
    void draw() = mac 0xbd960, win 0x17100;
    void updateTweenAction(float dt, const char* key) = mac 0xbd960, win 0x16f90;

    cocos2d::CCArray* m_children;
    PAD = win 0x4;
    float m_currentRadius;
    float m_currentOpacity;
    cocos2d::CCPoint m_circleCenter;
    int m_filled;
    int m_lineWidth;
    float m_opacityMultiplier;
    bool m_blendFuncDirty;
}

class CCLightFlash {
    static CCLightFlash* create() = mac 0x295870, win 0x17920;
    void playEffect(cocos2d::CCPoint, cocos2d::_ccColor3B, float, float, float, float, float, float, float, float, float, float, float, float, float, float, int, bool, bool, float) = mac 0x295900, win 0x179f0;
}

class ColorChannelSprite : cocos2d::CCSprite {
    void updateBlending(bool) = mac 0x16e1d0, win 0x114710;
    void updateCopyLabel(int, bool) = mac 0x16ded0, win 0x114440;
    void updateOpacity(float) = mac 0x16e080, win 0x1145c0;
    void updateValues(ColorAction*) = mac 0x16e2e0, win 0x114800;
    static ColorChannelSprite* create() = mac 0x16de00, win 0x114340;

    cocos2d::CCLabelBMFont* m_copyLabel;
    cocos2d::CCLabelBMFont* m_opacityLabel;
    cocos2d::CCLabelBMFont* m_blendingDot;
}

class ConfigureHSVWidget : cocos2d::CCNode {
    cocos2d::CCLabelBMFont* m_hueLabel;
    cocos2d::CCLabelBMFont* m_saturationLabel;
    cocos2d::CCLabelBMFont* m_brightnessLabel;
    Slider* m_hueSlider;
    Slider* m_saturationSlider;
    Slider* m_brightnessSlider;
    cocos2d::ccHSVValue m_value;
}

class CustomSongWidget : cocos2d::CCNode, MusicDownloadDelegate, FLAlertLayerProtocol {
    void FLAlert_Clicked(FLAlertLayer*, bool) {}
    void loadSongInfoFinished(SongInfoObject*) {}

    void updateSongObject(SongInfoObject* song) = win 0x69280;

    SongInfoObject* m_songInfo;
    PAD = win 0x1C;
    CCMenuItemSpriteExtra* m_downloadBtn;
    PAD = win 0x30;
}

class GJGroundLayer : cocos2d::CCLayer {
    void updateGroundWidth() = mac 0x356790, win 0x12dda0;
}

class GJRotationControl : cocos2d::CCLayer {
    void setAngle(float angle) {
        m_sliderPosition = cocos2d::CCPointMake(sinf(angle) * 60.0f, cosf(angle) * 60.0f);
        m_angle = angle;
    
        m_sliderThumb->setPosition(m_sliderPosition);
    }

    void updateSliderPosition(cocos2d::CCPoint const& pos) = win 0x94020;

    float m_unknown0;
    float m_unknown1;
    cocos2d::CCPoint m_sliderPosition;
    cocos2d::CCSprite* m_sliderThumb;
    float m_objAngle;
    float m_angle;
    int m_touchID;
}

class GJScaleControl : cocos2d::CCLayer {
    virtual bool init() = mac 0x31b30, win 0x94490;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x31d30, win 0x947a0;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x31e60, win 0x94840;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x31fb0, win 0x94940;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x32060, win 0x2dea0; // shared with many others
    void updateLabel(float value) = win 0x94990;
    void loadValues(GameObject* obj, cocos2d::CCArray* objs) = win 0x94590;

    Slider* m_slider;
    unsigned int m_touchID;
    float m_value;
    PAD = mac 0x8, win 0x4;
    cocos2d::CCLabelBMFont* m_label;
    GJScaleControlDelegate* m_delegate;
}