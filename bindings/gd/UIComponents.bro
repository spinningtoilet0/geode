// Generic UI components

class ButtonSprite : cocos2d::CCSprite {
    static ButtonSprite* create(
        const char* caption,
        int width,
        int unknown,
        float scale,
        bool absoluteWidth,
        const char* font,
        const char* texture,
        float height
    ) = win 0x137d0, mac 0x4fa90, ios 0x38c7c;

    static ButtonSprite* create(
        cocos2d::CCSprite* topSprite,
        int width,
        int unknown,
        float height,
        float scale,
        bool absoluteWidth,
        const char* texture,
        bool bUnknown
    ) = win 0x134b0, mac 0x4f1d0;

    [[docs("
    /**
    * Create a ButtonSprite with a top sprite and a texture.
    * @param topSprite The top sprite to add on top of the sprite
    * @param width Sprite width; ignored if `absolute` is false
    * @param absolute Whether to use absolute width or not
    * @param texture The name of the background sprite file (can't be in a spritesheet)
    * @param height The height of the button, leave 0 for automatic
    * @param scale Scale of top sprite
    */
    ")]]
    static ButtonSprite* create(
        cocos2d::CCSprite* topSprite,
        int width,
        bool absolute,
        float height,
        const char* texture,
        float scale
    ) {
        return create(topSprite, width, 0, height, scale, absolute, texture, true);
    }

    [[docs("
    /**
    * Create a ButtonSprite with text, a font and a texture.
    * @param caption The text of the ButtonSprite
    * @param width Sprite width; ignored if `absolute` is false
    * @param absolute Whether to use absolute width or not
    * @param font The name of the BM font file to use
    * @param texture The name of the background sprite file (can't be in a spritesheet)
    * @param height The height of the button, leave 0 for automatic
    * @param scale Scale of text
    * @returns Pointer to the created ButtonSprite, or nullptr on error
    */
    ")]]
    static ButtonSprite* create(const char* caption, int width, bool absolute, const char* font, const char* texture, float height, float scale) {
        return create(caption, width, 0, scale, absolute, font, texture, height);
    }

    inline static ButtonSprite* create(char const* caption) {
        return ButtonSprite::create(caption, 0, 0, "goldFont.fnt", "GJ_button_01.png", .0f, 1.f);
    }
    inline static ButtonSprite* create(char const* caption, const char* font, const char* texture, float scale = 1.f) {
        return ButtonSprite::create(caption, 0, 0, font, texture, .0f, scale);
    }
    static ButtonSprite* create(char const*, int, int, float, bool) = mac 0x4fa40;
    void updateBGImage(const char*) = mac 0x502d0, win 0x13af0;
    static ButtonSprite* create(char const*, float) = mac 0x4fa60;
    void setString(const char* txt) = mac 0x4fec0, win 0x14030;
    void updateSpriteBGSize(cocos2d::CCPoint const& offset) = win 0x13c00;
    void setColor(cocos2d::ccColor3B color) = mac 0x50410, win 0x143e0;

    PAD = mac 0x18, win 0x18;
    cocos2d::CCLabelBMFont* m_label;
    cocos2d::CCSprite* m_subSprite;
    cocos2d::CCSprite* m_subBGSprite;
    cocos2d::extension::CCScale9Sprite* m_BGSprite;
    PAD = win 0x8;
    cocos2d::CCPoint m_spritePosition;
}

class CCBlockLayer : cocos2d::CCLayerColor {
    inline CCBlockLayer() {}
    virtual bool init() = mac 0x2a59c0, win 0x168d0;
    virtual void draw() = mac 0x2a5c20, win 0x16a80; // same as GJDropDownLayer
    virtual void registerWithTouchDispatcher() = mac 0x2a5ad0, win 0x16990; // shared with many
    virtual void enterLayer() = mac 0x2a5aa0, win 0x16970;
    virtual void exitLayer() = mac 0x2a5b40, win 0x169e0; // same as PauseLayer, EditorPauseLayer
    virtual void showLayer(bool) = mac 0x2a5b90, win 0x16a20; // same as PauseLayer, EditorPauseLayer
    virtual void hideLayer(bool) = mac 0x2a5ba0, win 0x16a30; // same as PauseLayer, EditorPauseLayer
    virtual void layerVisible() = mac 0x2a5bc0, win 0x16a40; // same as GJDropDownLayer
    virtual void layerHidden() = mac 0x2a5be0, win 0x16a50; // same as PauseLayer, EditorPauseLayer
    virtual void enterAnimFinished() {}
    virtual void disableUI() {}
    virtual void enableUI() {}

    bool m_unknown;
    bool m_unknown2;
}

class CCContentLayer : cocos2d::CCLayerColor {
    inline CCContentLayer() {}
    static CCContentLayer* create(cocos2d::ccColor4B const& color, float width, float height) = win 0x172a0;
    virtual void setPosition(cocos2d::CCPoint const& pos) = mac 0x464c60, win 0x17400;
}

class CCMenuItemSpriteExtra : cocos2d::CCMenuItemSprite {
    void useAnimationType(MenuAnimationType type) {
        m_startPosition = this->getNormalImage()->getPosition();
        m_animationType = type;
    }
    void setDestination(cocos2d::CCPoint const& pos) {
        m_destPosition = pos;
    }
    void setOffset(cocos2d::CCPoint const& pos) {
        m_offset = pos;
    }
    void setScale(float scale) {
        this->CCMenuItemSprite::setScale(scale);
        m_baseScale = scale;
    }

    static CCMenuItemSpriteExtra* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = mac 0x1253c0, win 0x18ee0, ios 0xe0740;
    inline static CCMenuItemSpriteExtra* create(cocos2d::CCNode* sprite, cocos2d::CCObject* target, cocos2d::SEL_MenuHandler callback) {
        return CCMenuItemSpriteExtra::create(sprite, nullptr, target, callback);
    }
    void setSizeMult(float) = mac 0x1255e0, win 0x19080;
    CCMenuItemSpriteExtra() = mac 0x32670, win 0x18db0;
    ~CCMenuItemSpriteExtra() = win 0x18eb0;
    bool init(
        cocos2d::CCNode* normalImage,
        cocos2d::CCNode* selectedImage,
        cocos2d::CCObject* target,
        cocos2d::SEL_MenuHandler callback
    ) {
        if (!cocos2d::CCMenuItemSprite::initWithNormalSprite(
            normalImage, selectedImage, nullptr, target, callback
        )) return false;

        this->setAnchorPoint({ .5f, .5f });
        this->setContentSize(normalImage->getScaledContentSize());
        normalImage->setPosition(m_obContentSize / 2);

        m_baseScale = 1.f;
        m_animationEnabled = true;
        m_scaleMultiplier = 1.26f;

        return true;
    }
    void activate() = mac 0x125730, win 0x191c0;
    void selected() = mac 0x125840, win 0x19270;
    void unselected() = mac 0x125a70, win 0x19430;

    float m_scaleMultiplier;
    float m_baseScale;
    bool m_animationEnabled;
    bool m_colorEnabled;
    float m_unknown;
    gd::string m_unknown2;
    gd::string m_unknown3;
    float m_colorDip;
    cocos2d::CCPoint m_destPosition;
    cocos2d::CCPoint m_offset;
    MenuAnimationType m_animationType;
    cocos2d::CCPoint m_startPosition;
}

class CCMenuItemToggler : cocos2d::CCMenuItem {
    inline CCMenuItemToggler() : CCMenuItem(), m_onButton(nullptr), m_offButton(nullptr), m_toggled(false), m_notClickable(false) {}

    static CCMenuItemToggler* createWithSize(const char* spr1, const char* spr2, cocos2d::CCObject* target, cocos2d::SEL_MenuHandler callback, float scale) {
        auto sprOff = cocos2d::CCSprite::createWithSpriteFrameName(spr1);
        auto sprOn = cocos2d::CCSprite::createWithSpriteFrameName(spr2);
    
        sprOff->setScale(scale);
        sprOn->setScale(scale);
    
        return create(sprOff, sprOn, target, callback);
    }
    static CCMenuItemToggler* createWithStandardSprites(cocos2d::CCObject* target, cocos2d::SEL_MenuHandler callback, float scale) {
        auto sprOff = cocos2d::CCSprite::createWithSpriteFrameName("GJ_checkOff_001.png");
        auto sprOn = cocos2d::CCSprite::createWithSpriteFrameName("GJ_checkOn_001.png");
    
        sprOff->setScale(scale);
        sprOn->setScale(scale);
    
        return create(sprOff, sprOn, target, callback);
    }
    bool isOn() {
        return m_toggled;
    }
    bool isToggled() {
        return m_toggled;
    }
    void setClickable(bool on) {
        m_notClickable = !on;
    }
    void toggleWithCallback(bool on) {
        this->activate();
        this->toggle(on);
    }

    static CCMenuItemToggler* create(cocos2d::CCNode* offSpr, cocos2d::CCNode* onSpr, cocos2d::CCObject* target, cocos2d::SEL_MenuHandler callback) = mac 0x38400, win 0x19600, ios 0xf5594;
    void setSizeMult(float) = mac 0x38a40, win 0x19850;
    void toggle(bool) = mac 0x38950, win 0x199b0, ios 0xf5848;
    bool init(cocos2d::CCNode* off, cocos2d::CCNode* on, cocos2d::CCObject* target, cocos2d::SEL_MenuHandler handler) = mac 0x38500, win 0x196e0;
    void activate() = mac 0x38bc0, win 0x198d0, ios 0xf59ac;
    void selected() = mac 0x38b80, win 0x198a0;
    void unselected() = mac 0x38c00, win 0x19900;
    void setEnabled(bool enabled) = mac 0x38c40, win 0x19930;

    CCMenuItemSpriteExtra* m_offButton;
    CCMenuItemSpriteExtra* m_onButton;
    bool m_toggled;
    bool m_notClickable;
}

class CCScrollLayerExt : cocos2d::CCLayer {
    inline CCScrollLayerExt() {}

    static CCScrollLayerExt* create(cocos2d::CCRect rect, bool vertical) {
        auto pRet = new CCScrollLayerExt(rect);
        if (pRet) {
            pRet->autorelease();
            pRet->m_disableVertical = !vertical;
            pRet->m_disableHorizontal = vertical;
            pRet->m_cutContent = true;
            return pRet;
        }
        CC_SAFE_DELETE(pRet);
        return nullptr;
    }
    float getMinY() {
        return this->getContentSize().height -
            m_contentLayer->getContentSize().height -
            m_scrollLimitTop;
    }
    float getMaxY() {
        return m_scrollLimitBottom;
    }

    // todo: add this back when CCDestructor works and 
    // this no longer causes crashing
    // virtual ~CCScrollLayerExt() = mac 0x2359b0, win 0x1b520;
    virtual void visit() = mac 0x236550, win 0x1bed0;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x235ef0, win 0x1b9b0;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x236300, win 0x1bce0;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x236020, win 0x1baa0;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x2362a0, win 0x1bcc0;
    virtual void registerWithTouchDispatcher() = mac 0x235eb0, win 0x1b980;
    virtual void preVisitWithClippingRect(cocos2d::CCRect) = mac 0x2366a0, win 0x1c000;
    virtual void postVisit() = mac 0x236720, win 0x1c090;
    void moveToTop() = mac 0x235870, win 0x1b4a0;
    void moveToTopWithOffset(float) = mac 0x2357d0, win 0x1b420;
    CCScrollLayerExt(cocos2d::CCRect rect) = mac 0x235130, win 0x1b020, ios 0x21f05c;
    void scrollLayer(float scroll) = mac 0x236490, win 0x1be20;
    void updateIndicators(float unknown) = win 0x1b710;

    cocos2d::CCTouch* m_touch;
    cocos2d::CCPoint m_touchPosition;
    cocos2d::CCPoint m_touchStartPosition;
    cocos2d::cc_timeval m_timeValue;
    bool m_touchDown;
    bool m_notAtEndOfScroll;
    cocos2d::CCLayerColor* m_verticalScrollbar;
    cocos2d::CCLayerColor* m_horizontalScrollbar;
    CCScrollLayerExtDelegate* m_delegate;
    CCContentLayer* m_contentLayer;
    bool m_cutContent;
    bool m_vScrollbarVisible;
    bool m_hScrollbarVisible;
    bool m_disableHorizontal;
    bool m_disableVertical;
    bool m_disableMovement;
    float m_scrollLimitTop;
    float m_scrollLimitBottom;
    float m_peekLimitTop;
    float m_peekLimitBottom;
}

class CCTextInputNode : cocos2d::CCLayer, cocos2d::CCIMEDelegate, cocos2d::CCTextFieldDelegate {
    inline CCTextInputNode() : cocos2d::CCLayer(), cocos2d::CCIMEDelegate(), cocos2d::CCTextFieldDelegate(), m_caption(), m_allowedChars() {
        m_numberInput = false;
        m_unknown1 = 0;
        m_selected = false;
        m_unknown2 = false;
        m_maxLabelWidth = 0.f;
        m_maxLabelScale = 0.f;
        m_placeholderScale = 0.f;
        m_placeholderColor = cocos2d::ccc3(0,0,0);
        m_textColor = cocos2d::ccc3(0,0,0);
        m_cursor = nullptr;
        m_textField = nullptr;
        m_delegate = nullptr;
        m_maxLabelLength = 0;
        m_placeholderLabel = nullptr;
        m_unknown3 = false;
        m_usePasswordChar = false;
        m_forceOffset = false;
    }
    inline ~CCTextInputNode() {
        if (m_selected) m_textField->detachWithIME();
    }
    void setLabelNormalColor(cocos2d::ccColor3B color) {
        m_textColor = color;
        this->refreshLabel();
    }
    void setLabelPlaceholderColor(cocos2d::ccColor3B color) {
        m_placeholderColor = color;
        this->refreshLabel();
    }
    void setLabelPlaceholderScale(float scale) {
        m_placeholderScale = scale;
        this->refreshLabel();
    }
    void setMaxLabelScale(float scale) {
        m_maxLabelScale = scale;
        this->refreshLabel();
    }
    void setMaxLabelWidth(int length) {
        m_maxLabelLength = length;
        this->refreshLabel();
    }
    void setAllowedChars(gd::string filter) {
        m_allowedChars = filter;
    }
    void forceOffset() {
        m_forceOffset = true;
    }
    void setString(gd::string text) = mac 0x5d3e0, win 0x21070;
    const char* getString() {
        return m_textField->getString();
    }
    cocos2d::CCTextFieldTTF* getTextField() {
        return m_textField;
    }
    cocos2d::CCLabelBMFont* getPlaceholderLabel() {
        return m_placeholderLabel;
    }
    void setDelegate(TextInputDelegate* delegate) {
        m_delegate = delegate;
    }

    inline static CCTextInputNode* create(float width, float height, char const* placeholder, char const* fontPath) {
        return CCTextInputNode::create(width, height, placeholder, 0x18, fontPath);
    }
    inline static CCTextInputNode* create(float width, float height, char const* placeholder, int fontSize, char const* fontPath) {
        auto ret = new CCTextInputNode();
        if (ret && ret->init(width, height, placeholder, "Thonburi", fontSize, fontPath)) {
            ret->autorelease();
            return ret;
        }
        CC_SAFE_DELETE(ret);
        return nullptr;
    }
    bool init(float width, float height, const char* caption, const char* thonburi, int maxCharCount, const char* font) = mac 0x5d180, win 0x20e50, ios 0xe261c;

    void refreshLabel() = mac 0x5d730, win 0x21330, ios 0xe2af4;
    void updateLabel(gd::string) = mac 0x5d4a0, win 0x21190;
    void updateBlinkLabel() = mac 0x5d920;
    virtual void registerWithTouchDispatcher() = mac 0x5eec0, win 0x220e0;
    virtual void visit() = mac 0x5d380, win 0x21000;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x5ec80, win 0x21f20;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) {}
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) {}
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) {}
    virtual void textChanged() = mac 0x5dd70, win 0x216e0;
    virtual void onClickTrackNode(bool) = mac 0x5dd40, win 0x216b0;
    virtual void keyboardWillShow(cocos2d::CCIMEKeyboardNotificationInfo&) = mac 0x5dad0, win 0x21580;
    virtual void keyboardWillHide(cocos2d::CCIMEKeyboardNotificationInfo&) = mac 0x5dc20, win 0x21650;
    virtual bool onTextFieldInsertText(cocos2d::CCTextFieldTTF*, char const*, int) = mac 0x5de50, win 0x21760;
    virtual bool onTextFieldAttachWithIME(cocos2d::CCTextFieldTTF*) = mac 0x5e2c0, win 0x21b10;
    virtual bool onTextFieldDetachWithIME(cocos2d::CCTextFieldTTF*) = mac 0x5e610, win 0x21d60;

    bool m_numberInput;
    gd::string m_caption;
    int m_unknown1;
    bool m_selected;
    bool m_unknown2;
    gd::string m_allowedChars;
    float m_maxLabelWidth;
    float m_maxLabelScale;
    float m_placeholderScale;
    cocos2d::ccColor3B m_placeholderColor;
    cocos2d::ccColor3B m_textColor;
    cocos2d::CCLabelBMFont* m_cursor;
    cocos2d::CCTextFieldTTF* m_textField;
    TextInputDelegate* m_delegate;
    int m_maxLabelLength;
    cocos2d::CCLabelBMFont* m_placeholderLabel;
    bool m_unknown3;
    bool m_usePasswordChar;
    bool m_forceOffset;
}

class FLAlertLayer : cocos2d::CCLayerColor {
    inline virtual ~FLAlertLayer() {
        cocos2d::CCDirector::sharedDirector()->getTouchDispatcher()->decrementForcePrio(2);
    }
    inline FLAlertLayer() {
        m_buttonMenu = nullptr;
        m_controlConnected = -1;
        m_mainLayer = nullptr;
        m_ZOrder = 0;
        m_noElasticity = false;
        m_reverseKeyBack = false;
        m_scene = nullptr;
        m_alertProtocol = nullptr;
        m_scrollingLayer = nullptr;
        m_button2 = nullptr;
        m_button1 = nullptr;
        m_joystickConnected = -1;
        m_containsBorder = 0;
    }

    static FLAlertLayer* create(char const* title, const gd::string& desc, char const* btn) {
        return FLAlertLayer::create(nullptr, title, desc, btn, nullptr, 300.0);
    }

    virtual void onEnter() = mac 0x25f350, win 0x23750;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x25ee40, win 0x233c0;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x25f0a0, win 0x23510;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x25ef60, win 0x23450;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x25f020, win 0x234c0;
    virtual void registerWithTouchDispatcher() = mac 0x25f2e0, win 0x236f0;
    virtual void keyBackClicked() = mac 0x25ed90, win 0x232c0;
    virtual void keyDown(cocos2d::enumKeyCodes) = mac 0x25ece0, win 0x23250;
    virtual void show() = mac 0x25f120, win 0x23560, ios 0x1feff4;

    bool init(
        FLAlertLayerProtocol* protocol,
        char const* title,
        gd::string content,
        char const* btn1,
        char const* btn2,
        float width,
        bool scrollable,
        float height
    ) = mac 0x25e1b0, win 0x228e0;
    static FLAlertLayer* create(FLAlertLayerProtocol* protocol, char const* title, gd::string content, char const* btn1, char const* btn2) = mac 0x25de00, win 0x22680;
    static FLAlertLayer* create(FLAlertLayerProtocol* protocol, char const* title, gd::string content, char const* btn1, char const* btn2, float width) = mac 0x25e0e0, win 0x22730, ios 0x1fe374;
    static FLAlertLayer* create(FLAlertLayerProtocol* protocol, char const* title, gd::string content, char const* btn1, char const* btn2, float width, bool scrollable, float height) = mac 0x25dec0, win 0x227e0;
    void onBtn1(cocos2d::CCObject*) = mac 0x25ec20, win 0x23340;
    void onBtn2(cocos2d::CCObject*) = mac 0x25ec80, win 0x23380;

    cocos2d::CCMenu* m_buttonMenu;
    int m_controlConnected;
    FLAlertLayerProtocol* m_alertProtocol;
    cocos2d::CCNode* m_scene;
    bool m_reverseKeyBack;
    cocos2d::ccColor3B m_color;
    cocos2d::CCLayer* m_mainLayer;
    int m_ZOrder;
    bool m_noElasticity;
    cocos2d::ccColor3B m_color2;
    ButtonSprite* m_button1;
    ButtonSprite* m_button2;
    cocos2d::CCLayerColor* m_scrollingLayer;
    int m_joystickConnected;
    bool m_containsBorder;
    bool m_noAction;
}

class GJDropDownLayer : cocos2d::CCLayerColor {
    virtual void customSetup() {}
    virtual void enterLayer() = mac 0x3525c0, win 0x16970;
    virtual void exitLayer(cocos2d::CCObject*) = mac 0x352670, win 0x113980;
    virtual void showLayer(bool) = mac 0x3526c0, win 0x1139c0, ios 0x29801c;
    virtual void hideLayer(bool) = mac 0x3527b0, win 0x113a90;
    virtual void layerVisible() = mac 0x3528b0, win 0x16a40;
    virtual void layerHidden() = mac 0x3528d0, win 0x113b60;
    virtual void enterAnimFinished() {}
    virtual void disableUI() = mac 0x352580, win 0x113920;
    virtual void enableUI() = mac 0x3525a0, win 0x113940;

    static GJDropDownLayer* create(const char* title, float height) {
        GJDropDownLayer* pRet = new GJDropDownLayer();
        if (pRet && pRet->init(title, height)) {
            pRet->autorelease();
            return pRet;
        }
        CC_SAFE_DELETE(pRet);
        return nullptr;
    }
    
    virtual bool ccTouchBegan(cocos2d::CCTouch* pTouch, cocos2d::CCEvent* pEvent) {
        return true;
    }
    virtual void ccTouchMoved(cocos2d::CCTouch* pTouch, cocos2d::CCEvent* pEvent) {}
    virtual void ccTouchEnded(cocos2d::CCTouch* pTouch, cocos2d::CCEvent* pEvent) {}
    virtual void ccTouchCancelled(cocos2d::CCTouch* pTouch, cocos2d::CCEvent* pEvent) {}

    virtual void draw() = mac 0x352910, win 0x16a80;
    bool init(const char* title, float height) = mac 0x352100, win 0x113530, ios 0x297afc;
    virtual void registerWithTouchDispatcher() = mac 0x3525f0, win 0x16990;
    virtual void keyBackClicked() = mac 0x352630, win 0x113960;
    inline GJDropDownLayer() {
        m_endPosition = cocos2d::CCPointMake(0.f, 0.f);
        m_startPosition = cocos2d::CCPointMake(0.f, 0.f);
        m_buttonMenu = nullptr;
        m_listLayer = nullptr;
        m_controllerEnabled = false;
        m_mainLayer = nullptr;
        m_hidden = false;
        m_delegate = nullptr;
    }

    cocos2d::CCPoint m_endPosition;
    cocos2d::CCPoint m_startPosition;
    cocos2d::CCMenu* m_buttonMenu;
    GJListLayer* m_listLayer;
    bool m_controllerEnabled;
    cocos2d::CCLayer* m_mainLayer;
    bool m_hidden;
    GJDropDownLayerDelegate* m_delegate;
}