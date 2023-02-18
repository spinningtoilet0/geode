// Sprites that are not necessarily UI components

class CCSpritePlus : cocos2d::CCSprite {
    bool initWithSpriteFrameName(const char*) = mac 0x248670, win 0x1c1e0;
    void setScaleX(float scale) = win 0x1c440;
    void setScaleY(float scale) = win 0x1c4c0;
    void setScale(float scale) = win 0x1c540;
    void setPosition(const cocos2d::CCPoint& pos) = win 0x1c220;
    void setRotation(float rotation) = win 0x1c280;
    bool initWithTexture(cocos2d::CCTexture2D* texture) = win 0x1c200;
    void setFlipX(bool flip) = win 0x1c300;
    void setFlipY(bool flip) = win 0x1c3a0;
    static CCSpritePlus* createWithSpriteFrame(cocos2d::CCSpriteFrame* frame) = win 0x1c130;

    cocos2d::CCArray* m_followers;
    CCSpritePlus* m_followingSprite;
    bool m_hasFollower;
    bool m_propagateScaleChanges;
    bool m_propagateFlipChanges;
}

class EffectGameObject : GameObject {
    void updateLabel() {
        auto label = static_cast<cocos2d::CCLabelBMFont*>(this->getChildByTag(999));
        if (label) {
            switch (m_objectID) {
                // instant count, collision block, pickup
                case 0x713: [[fallthrough]];
                case 0x718: [[fallthrough]];
                case 0x716: 
                    label->setString(
                        cocos2d::CCString::createWithFormat("%i", m_itemBlockAID)->getCString()
                    );
                    break;
                //   color,    pulse
                case 899: [[fallthrough]];
                case 1006: {
                    int target = m_objectID == 1006 ? m_targetGroupID : m_targetColorID;
                    if (target > 999) {
                        label->setString(GJSpecialColorSelect::textForColorIdx(target));
                    } else {
                        label->setString(
                            cocos2d::CCString::createWithFormat("%i", target)->getCString()
                        );
                    }
                    label->limitLabelWidth(30.0f, 0.5f, 0.0f);
                    } break;
                default:
                    label->setString(
                        cocos2d::CCString::createWithFormat("%i", m_targetGroupID)->getCString()
                    );
            }
        }
    }

    static EffectGameObject* create(const char*) = mac 0xc9790, win 0x253c30;
    bool init(char const*) = win 0x253CD0;
    void getTargetColorIndex() = mac 0xca1f0;
    virtual void triggerObject(GJBaseGameLayer*) = mac 0xc9870, win 0x253d60;
    gd::string getSaveString() = win 0x257560;
    void updateSpecialColor() = win 0x254980;
    void spawnXPosition() = win 0x254A00;
    void triggerActivated(float) = win 0x254A30;

    cocos2d::ccColor3B m_colColor;
    float m_duration;
    float m_opacity;
    int m_targetGroupID;
    int m_centerGroupID;
    float m_shakeStrength;
    float m_shakeInterval;
    bool m_tintGround;
    bool m_playerColor1;
    bool m_playerColor2;
    bool m_blending;
    cocos2d::CCPoint m_move;
    EasingType m_easingType;
    float m_easingRate;
    bool m_lockToPlayerX;
    bool m_lockToPlayerY;
    bool m_useTarget;
    MoveTargetType m_moveTargetType;
    int m_rotateDegrees;
    int m_times360;
    bool m_lockObjectRotation;
    cocos2d::CCPoint m_followMod;
    bool UndocuementedLevelProperty74;
    float m_followYSpeed;
    float m_followYDelay;
    int m_followYOffset;
    float m_followYMaxSpeed;
    float m_fadeInTime;
    float m_holdTime;
    float m_fadeOutTime;
    int m_pulseHSVMode;
    int m_pulseGroupMode;
    cocos2d::ccHSVValue m_hsvValue;
    int m_copyColorID;
    bool m_copyOpacity;
    bool m_pulseMainOnly;
    bool m_pulseDetailOnly;
    bool m_pulseExclusive;
    bool m_activateGroup;
    bool m_touchHoldMode;
    TouchToggleMode m_touchToggleMode;
    bool m_touchDualMode;
    int m_animationID;
    float m_spawnDelay;
    cocos2d::CCPoint m_spawnPosition;
    bool m_multiTrigger;
    bool m_editorDisabled;
    int m_targetCount;
    bool m_subtractCount;
    ComparisonType m_comparisonType;
    bool m_multiActivate;
    bool m_triggerOnExit;
    int m_blockBID;
    bool m_dynamicBlock;
    int m_itemBlockAID;
    int m_pickupMode;
    PAD = mac 0x28, win 0x24;
}

class EndPortalObject : GameObject {
    static EndPortalObject* create() = mac 0x1da8f0, win 0x98a50;
    void updateColors(cocos2d::_ccColor3B) = mac 0x1dacb0, win 0x98eb0;
}

class GJRobotSprite : CCAnimatedSprite {
    // virtual ~GJRobotSprite() = mac 0x34aaf0; inlined on windows, RE and recreate 
    virtual bool init() = mac 0x34ad50, win 0x145840;
    virtual void setOpacity(unsigned char) = mac 0x34bcc0, win 0x146640; // shared with GJSpriteSprite
    virtual void hideSecondary() = mac 0x34c3b0, win 0x146c90;
    static GJRobotSprite* create() = mac 0x34ac00, win 0x1457a0;
    void updateColor02(cocos2d::_ccColor3B) = mac 0x34bbd0, win 0x1461c0;
    void updateFrame(int) = mac 0x34bdd0, win 0x146700;
    void hideGlow() = mac 0x34b860;

    PAD = win 0x8;
    cocos2d::ccColor3B m_secondaryColor;
}

class GJSpiderSprite : GJRobotSprite {
    // ~GJSpiderSprite() = mac 0x34c4a0; same as ~CCRobotSprite, fully merged on windows
    virtual bool init() = mac 0x34c700, win 0x146db0;
    static GJSpiderSprite* create() = mac 0x34c5b0, win 0x146cf0;
}