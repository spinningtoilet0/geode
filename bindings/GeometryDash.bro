// geode additions to make stl containers easier
// clang-format off
class GDString {
    void winDtor() = win 0xf6e0;
    GDString& winAssign(GDString const&, size_t, size_t) = win 0xf720;
    GDString& winAssign(char const*) = win 0xf680;
    GDString& winAssign(char const*, size_t) = win 0xf840;

    static uintptr_t macEmptyContainer() {
        return geode::base::get() + 0x6030d0;
    }
    void macCtor(char const*) = mac 0x489fc0;
    void macCtor(GDString const&) = mac 0x489fcc;
    GDString& macAssign(char const*) = mac 0x489f96;
    GDString& macAssign(GDString const&) = mac 0x489f9c;
    void macDestroy() = mac 0x489f78;
}

class AchievementBar : cocos2d::CCNodeRGBA {
    static AchievementBar* create(const char* title, const char* desc, const char* icon, bool quest) = mac 0x379f80, win 0x3b120, ios 0x1a4784;

    PAD = win 0x24;
}



class AchievementsLayer : GJDropDownLayer {
    void customSetup() = mac 0x1bdea0, win 0x3c2f0;
    void loadPage(int) = mac 0x1be190, win 0x3c600;
}

class AnimatedGameObject : GameObject, AnimatedSpriteDelegate, SpritePartDelegate {
    void playAnimation(int) = mac 0xc93d0, win 0x2539e0;
    void updateChildSpriteColor(cocos2d::_ccColor3B) = mac 0xc8450, win 0x2531f0;
}

class AnimatedShopKeeper : CCAnimatedSprite {
    void animationFinished(const char*) {}

    static AnimatedShopKeeper* create(ShopType type) = mac 0x1a57d0, win 0x14c4d0;
    void startAnimating() = win 0x14c690;

    float m_unknown1;
    float m_unknown2;
    bool m_unknown;
}





class AudioEffectsLayer {
    void audioStep(float) = mac 0x271f40, win 0x3daa0;
    static AudioEffectsLayer* create(gd::string) = mac 0x271a00, win 0x3d850;
    void resetAudioVars() = mac 0x271ee0;
}



class CCAnimatedSprite : cocos2d::CCSprite {
    void runAnimation(gd::string) = mac 0x1a6430, win 0x14f60;
    void tweenToAnimation(gd::string, float) = mac 0x1a65b0, win 0x15080;
    static CCAnimatedSprite* create(const char* file) = win 0x14540;

    gd::string m_unknown1;
    gd::string m_unknown2;
    PAD = win 0x14;
    gd::string m_unknown3;
    PAD = win 0x4;
}

class CCAnimateFrameCache : cocos2d::CCObject {
    static CCAnimateFrameCache* sharedSpriteFrameCache() = mac 0x2e4df0, win 0x158f0;
    void addSpriteFramesWithFile(const char* file) = win 0x159b0;
}









class CCIndexPath : cocos2d::CCObject {
    static CCIndexPath* create(unsigned int idk1, int idk2) = win 0x30e40;
    inline CCIndexPath() = default;
    int m_unknown1;
    int m_unknown2;
}





class CCMoveCNode : cocos2d::CCNode {
    static CCMoveCNode* create() = mac 0x1842a0;
    ~CCMoveCNode() = mac 0x18b2c0;
}

class CCNodeContainer : cocos2d::CCNode {
    static CCNodeContainer* create() = mac 0xb1090, win 0x112370;
    virtual bool init() = mac 0xba950, win 0x33b40;
    void visit() = mac 0xba960, win 0x112420;
}









class ChallengesPage {
    static ChallengesPage* create() = mac 0x1db350, win 0x3e050;
}

class CheckpointObject : cocos2d::CCNode {
    static CheckpointObject* create() = mac 0x7e7d0, win 0x20DDD0;
    void getObject() = mac 0x7ef50;

    GameObject* m_gameObject;
    PlayerCheckpoint* m_player1;
    PlayerCheckpoint* m_player2;
    bool m_isDual;
    bool m_isFlipped;
    cocos2d::CCPoint m_cameraPos;
    int m_unk104;
    GameObject* m_lastPortal;
    PAD = win 0x4;
    double m_unk110;
    gd::string m_currentStateString;
    gd::string m_objectsStateString;
}









class CommentCell : TableViewCell {
    void loadFromComment(GJComment*) = mac 0x111c70, win 0x5f3d0;

    PAD = win 0x4;
    cocos2d::CCSprite* m_iconSprite;
    cocos2d::CCLabelBMFont* m_likeLabel;
    GJComment* m_comment;
    PAD = win 0x4;
}







class CreateGuidelinesLayer : FLAlertLayer, FLAlertLayerProtocol {
    void onStop(cocos2d::CCObject* sender) = win 0x4d2c0;

    PAD = win 0x24;
    gd::string m_guidelineString;
}

class CreateMenuItem : CCMenuItemSpriteExtra {
    static CreateMenuItem* create(cocos2d::CCNode*, cocos2d::CCNode*, cocos2d::CCObject*, cocos2d::SEL_MenuHandler) = mac 0x1c580, win 0x93db0;

    PAD = win 0x18;
    int m_objectID;
    int m_buildTabPage;
    int m_buildTab;
}



class CurrencyRewardLayer : cocos2d::CCLayer {
    inline CurrencyRewardLayer() {}
    ~CurrencyRewardLayer() = mac 0x447950, win 0x4ffb0;
    virtual void update(float) = mac 0x44a5c0, win 0x52350;
}







class CustomSongLayer : FLAlertLayer, FLAlertLayerProtocol, TextInputDelegate, GJDropDownLayerDelegate {
    bool init(LevelSettingsObject*) = mac 0xf06f0, win 0x65c10;
    void onArtists(cocos2d::CCObject*) = mac 0xf1950;
    void onSongBrowser(cocos2d::CCObject*) = mac 0xf18a0, win 0x67080;

    LevelSettingsObject* m_levelSettings;
    CCTextInputNode* m_songIDInput;
    CustomSongWidget* m_songWidget;
    LevelSettingsLayer* m_levelSettingsLayer;
}





class DailyLevelPage : FLAlertLayer {
    static DailyLevelPage* create(bool weekly) = win 0x6a860;
    bool init(bool weekly) = win 0x6a900;
    void updateTimers(float) = win 0x6bef0;
    virtual void show() = mac 0x10a4b0, win 0x3f360;

    PAD = win 0x21;
    bool m_weekly;
}

class DialogLayer : cocos2d::CCLayerColor {
    static DialogLayer* create(DialogObject* dialog, int color) {
        return DialogLayer::createDialogLayer(dialog, nullptr, color);
    }

    static DialogLayer* createWithObjects(cocos2d::CCArray* dialogs, int color) {
        return DialogLayer::createDialogLayer(nullptr, dialogs, color);
    }

    static DialogLayer* createDialogLayer(DialogObject*, cocos2d::CCArray*, int) = mac 0x2047d0, win 0x6D470, ios 0x459d0;
    bool init(DialogLayer*, DialogObject*, cocos2d::CCArray*, int) = win 0x6D520;
    cocos2d::CCAction* animateIn(int location) = win 0x6E130;

    ~DialogLayer() = mac 0x204720;
    virtual void onEnter() = mac 0x205900, win 0x23750; // same as every other FLAlertLayer
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x205790, win 0x6e000;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) {}
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x2057e0, win 0x6e030;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x205840, win 0x6e050;
    virtual void registerWithTouchDispatcher() = mac 0x205890, win 0x236f0; // same as every other FLAlertLayer
    virtual void keyBackClicked() = mac 0x2056a0, win 0x6df60;
    virtual void keyDown(cocos2d::enumKeyCodes) = mac 0x205ce0, win 0x6e370;
    virtual void fadeInTextFinished(TextArea*) = mac 0x205930, win 0x6e070;
}



class DialogObject : cocos2d::CCObject {
    static DialogObject* create(gd::string title, gd::string text, int portrait, float text_scale, bool is_unskippable, cocos2d::ccColor3B text_color) = win 0x6D160;
    bool init(DialogObject*, gd::string title, gd::string text, int portrait, float text_scale, bool is_unskippable, cocos2d::ccColor3B text_color) = win 0x6D2E0;

    gd::string m_text;
    gd::string m_title;
    int m_dialogType;
    cocos2d::ccColor3B m_colour;
    float m_textWidth;
    bool m_canSkip;
}



class DrawGridLayer : cocos2d::CCLayer {
    static DrawGridLayer* get() {
        auto editorLayer = LevelEditorLayer::get();
        if (!editorLayer) return nullptr;
        return editorLayer->m_drawGridLayer;
    }

    bool init(cocos2d::CCNode* grid, LevelEditorLayer* editor) = win 0x16c4d0;
    void draw() = win 0x16ce90;
    virtual void update(float) = win 0x16cd80;
    void clearPlayerPoints() {
        m_playerNodePoints->removeAllObjects();
        m_player2NodePoints->removeAllObjects();
    }

    void loadTimeMarkers(gd::string guidelines) = mac 0x94010;

    std::array<cocos2d::CCPoint, 400>* m_commonLines;
    std::array<cocos2d::CCPoint, 200>* m_yellowGuidelines;
    std::array<cocos2d::CCPoint, 200>* m_greenGuidelines;
    float m_songOffset1;
    float m_songOffset2;
    float m_lastMusicXPosition;
    bool m_effectSortDirty;
    LevelEditorLayer* m_editor;
    gd::string m_guidelineString;
    cocos2d::CCNode* m_grid;
    cocos2d::CCArray* m_guidelines;
    cocos2d::CCArray* m_effects;
    cocos2d::CCArray* m_guides;
    cocos2d::CCArray* m_speedObjects1;
    cocos2d::CCArray* m_speedObjects2;
    cocos2d::CCArray* m_playerNodePoints;
    cocos2d::CCArray* m_player2NodePoints;
    double m_unkDouble;
    float m_guidelineSpacing;
    float m_slowGuidelineSpacing;
    float m_normalGuidelineSpacing;
    float m_fastGuidelineSpacing;
    float m_fasterGuidelineSpacing;
    float m_fastestGuidelineSpacing;
    bool m_updatingTimeMarkers;
    bool m_timeNeedsUpdate;
    float m_activeGridNodeSize;
    float m_gridSize;
}

class EditButtonBar : cocos2d::CCNode {
    void removeAllItems() {
        m_buttonArray->removeAllObjects();
        this->reloadItemsInNormalSize();
    }
    void reloadItems(int rowCount, int columnCount) {
        if (m_buttonArray)
            this->loadFromItems(m_buttonArray, rowCount, columnCount, m_unknown);
    }
    void reloadItemsInNormalSize() {
        // TODO: fix this
        // this->reloadItems(
        //     GameManager::sharedState()->getIntGameVariable("0049"),
        //     GameManager::sharedState()->getIntGameVariable("0050")
        // );
    }
    void addButton(CCMenuItemSpriteExtra* btn, bool reload) {
        if (m_buttonArray)
            m_buttonArray->addObject(btn);
        if (reload)
            this->reloadItemsInNormalSize();
    }

    void loadFromItems(cocos2d::CCArray* buttons, int rowCount, int columnCount, bool idk) = mac 0x351010, win 0x6e5e0, ios 0x2dd060;

    cocos2d::CCPoint m_position;
    int m_unknown;
    bool m_unknownBool;
    cocos2d::CCArray* m_buttonArray;
    BoomScrollLayer* m_scrollLayer;
    cocos2d::CCArray* m_pagesArray;
}



class EditorOptionsLayer {
    void onButtonsPerRow(cocos2d::CCObject*) = mac 0x147b30;
}

class EditorPauseLayer : CCBlockLayer, FLAlertLayerProtocol {
    static EditorPauseLayer* get() {
        if (!EditorUI::get()) return nullptr;

        auto editor = LevelEditorLayer::get();
        for (auto i = 0; i < editor->getChildrenCount(); ++i) {
            if (auto layer = cast::safe_cast<EditorPauseLayer*>(editor->getChildren()->objectAtIndex(i))) {
                return layer;
            }
        }
        return nullptr;
    }
    static EditorPauseLayer* create(LevelEditorLayer* editor) {
        auto pRet = new EditorPauseLayer();
        if (pRet && pRet->init(editor)) {
            pRet->autorelease();
            return pRet;
        }
        CC_SAFE_DELETE(pRet);
        return nullptr;
    }
    inline EditorPauseLayer() {}
    ~EditorPauseLayer() = mac 0x13c3b0, win 0x73020;
    virtual void keyBackClicked() = mac 0x13f320, win 0x758d0;
    virtual void keyDown(cocos2d::enumKeyCodes) = mac 0x13f3a0, win 0x758d0;
    virtual void customSetup() = mac 0x13cc00, win 0x73550;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = mac 0x13f1b0, win 0x75780;
    void saveLevel() = mac 0x13ebd0, win 0x75010;
    bool init(LevelEditorLayer*) = mac 0x13c7a0, win 0x730e0, ios 0x280cb8;
    void onExitEditor(cocos2d::CCObject* sender) = win 0x75660;
    void playStep2() = mac 0x13f040, win 0x75440;
    void onResume(cocos2d::CCObject* sender) = win 0x74fe0;
    void onSaveAndPlay(cocos2d::CCObject* sender) = mac 0x13e1b0, win 0x753d0;
    void onSaveAndExit(cocos2d::CCObject* sender) = mac 0x13e230, win 0x75620;
    void onSave(cocos2d::CCObject* sender) = mac 0x13e290, win 0x755a0;
    void onExitNoSave(cocos2d::CCObject* sender) = win 0x75700;
    void uncheckAllPortals(cocos2d::CCObject* sender) = win 0x74760;
    void onResetUnusedColors(cocos2d::CCObject* sender) = win 0x74810;
    void doResetUnused() = win 0x165070;

    bool m_saved;
    PAD = mac 0x8, win 0x4;
    CCMenuItemSpriteExtra* m_button0;
    CCMenuItemSpriteExtra* m_button1;
    LevelEditorLayer* m_editorLayer;
}

class EditorUI : cocos2d::CCLayer, FLAlertLayerProtocol, ColorSelectDelegate, GJRotationControlDelegate, GJScaleControlDelegate, MusicDownloadDelegate {
    static EditorUI* get() {
        auto lel = LevelEditorLayer::get();
        if (!lel) return nullptr;
        return lel->m_editorUI;
    }
    inline EditorUI() {}
    bool editButton2Usable() = win 0x8b890;
    inline void constrainGameLayerPosition() {
        this->constrainGameLayerPosition(-3.f, -6.f);
    }

    void create(LevelEditorLayer*) = mac 0x8a80, win 0x76270;
    cocos2d::CCArray* createCustomItems() = mac 0x1ddf0, win 0x7a370;
    void deselectAll() = mac 0x1f300, win 0x86af0;
    void onDeselectAll(cocos2d::CCObject*) = mac 0x19cd0, win 0x86ac0;
    void disableButton(CreateMenuItem*) = mac 0x1c0f0, win 0x78af0;
    void editButtonUsable() = mac 0x28f30, win 0x8b040;
    void editObject(cocos2d::CCObject*) = mac 0x195a0, win 0x8ca50;
    void enableButton(CreateMenuItem*) = mac 0x1bff0, win 0x78990;
    CCMenuItemSpriteExtra* getCreateBtn(int, int) = mac 0x1f6c0, win 0x85120;
    cocos2d::CCPoint getGroupCenter(cocos2d::CCArray*, bool) = mac 0x23470, win 0x8fc30;
    cocos2d::CCArray* getSelectedObjects() = mac 0x23f30, win 0x86900;
    bool init(LevelEditorLayer*) = mac 0x8ae0, win 0x76310;
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x2ed60, win 0x907b0;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x2f3d0, win 0x90cd0;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x2fb00, win 0x911a0;
    virtual void keyDown(cocos2d::enumKeyCodes) = mac 0x30790, win 0x91a30;
    CreateMenuItem* menuItemFromObjectString(gd::string, int) = mac 0x1e130, win 0x84d00;
    void moveObject(GameObject*, cocos2d::CCPoint) = mac 0x24b10, win 0x8ddb0;
    void onDuplicate(cocos2d::CCObject*) = mac 0x18ba0, win 0x87d20;
    bool onCreate() = mac 0x1b960, win 0x85680;
    void onCreateObject(int) = mac 0x200d0, win 0x85750;
    cocos2d::CCArray* pasteObjects(gd::string) = mac 0x232d0, win 0x88240;
    void playerTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x2ebf0, win 0x90680;
    void playtestStopped() = mac 0x24790, win 0x87720;
    void redoLastAction(cocos2d::CCObject*) = mac 0xb8e0, win 0x870f0;
    void replaceGroupID(GameObject*, int, int) = mac 0x27470;
    void scaleChanged(float) = mac 0x25490, win 0x88df0;
    void scaleObjects(cocos2d::CCArray*, float, cocos2d::CCPoint) = mac 0x252e0, win 0x8f150;
    void selectObjects(cocos2d::CCArray*, bool) = mac 0x23940, win 0x864a0;
    void setupCreateMenu() = mac 0xcb50, win 0x7caf0;
    void undoLastAction(cocos2d::CCObject*) = mac 0xb830, win 0x87070;
    void updateButtons() = mac 0x1a300, win 0x78280;
    void updateObjectInfoLabel() = mac 0x1cb10, win 0x793b0;
    void updateSlider() = mac 0x18a90, win 0x78f10;
    void updateZoom(float) = mac 0x248c0, win 0x878a0;
    void selectObject(GameObject* obj, bool filter) = mac 0x1bd60, win 0x86250;
    void deselectObject(GameObject* object) = mac 0x1f220, win 0x86a50;
    void deleteObject(GameObject* object, bool filter) = mac 0x1f130, win 0x7bed0;
    void selectAll() = win 0x86c40;
    void selectAllWithDirection(bool left) = win 0x86d80;
    cocos2d::CCPoint getTouchPoint(cocos2d::CCTouch* touch, cocos2d::CCEvent* event) = win 0x90620;
    void onSelectBuildTab(cocos2d::CCObject* sender) = win 0x887f0;
    void onCreateButton(cocos2d::CCObject* sender) = win 0x854f0;
    CCMenuItemSpriteExtra* getSpriteButton(const char* sprite, cocos2d::SEL_MenuHandler callback, cocos2d::CCMenu* menu, float scale) = mac 0xb500, win 0x78bf0;
    cocos2d::CCPoint offsetForKey(int objID) = win 0x92310;
    void updateDeleteMenu() = win 0x7c5d0;
    void updateCreateMenu(bool updateTab) = mac 0x1e960, win 0x85530;
    void toggleMode(cocos2d::CCObject* sender) = mac 0x187b0, win 0x7ad20;
    void zoomIn(cocos2d::CCObject* sender) = mac 0xc0c0, win 0x877c0;
    void zoomOut(cocos2d::CCObject* sender) = mac 0xc120, win 0x87830;
    void rotateObjects(cocos2d::CCArray* objects, float angle, cocos2d::CCPoint center) = mac 0x236a0, win 0x8ee80;
    void updateGridNodeSize() = mac 0x1c8a0, win 0x78f60;
    void updateSpecialUIElements() = win 0x87030;
    void constrainGameLayerPosition(float x, float y) = mac 0x18890, win 0x8f920;
    void moveGameLayer(cocos2d::CCPoint const& pos) = mac 0x1ca90, win 0x79290;
    void showUI(bool show) = mac 0x245b0, win 0x87180;
    void resetUI() = mac 0x18520, win 0x7ac10;
    void editObject2(cocos2d::CCObject* sender) = win 0x8d1b0;
    void editGroup(cocos2d::CCObject* sender) = win 0x8d720;
    void moveObjectCall(cocos2d::CCObject* sender) = mac 0x29830, win 0x8db30;
    void transformObjectCall(cocos2d::CCObject* sender) = mac 0x29860, win 0x8def0;
    void onDelete(cocos2d::CCObject* sender) = mac 0x1b3d0, win 0x7b8d0;
    void onDeleteSelected(cocos2d::CCObject* sender) = mac 0xb990, win 0x7bf50;
    void onDeleteSelectedType(cocos2d::CCObject* sender) = mac 0x1e7a0, win 0x7c480;
    void onDeleteStartPos(cocos2d::CCObject* sender) = mac 0x1e770, win 0x7c4c0;
    void onCopy(cocos2d::CCObject* sender) = mac 0x18dc0, win 0x87fb0;
    void onPaste(cocos2d::CCObject* sender) = mac 0x18ee0, win 0x880c0;
    void tryUpdateTimeMarkers() = mac 0x1ca50, win 0x88940;
    void toggleEnableRotate(cocos2d::CCObject* sender) = mac 0xb700, win 0x860d0;
    void toggleFreeMove(cocos2d::CCObject* sender) = mac 0xb610, win 0x85eb0;
    void toggleSwipe(cocos2d::CCObject* sender) = mac 0xb490, win 0x85dd0;
    void toggleSnap(cocos2d::CCObject* sender) = mac 0xb680, win 0x85fa0;
    void onPlayback(cocos2d::CCObject* sender) = mac 0xbcb0, win 0x87340;
    void onPlaytest(cocos2d::CCObject* sender) = mac 0xbec0, win 0x87600;
    void onStopPlaytest(cocos2d::CCObject* sender) = mac 0xbfd0, win 0x876e0;
    void onGroupUp(cocos2d::CCObject* sender) = mac 0x1a1a0, win 0x8d780;
    void onGroupDown(cocos2d::CCObject* sender) = mac 0x1a200, win 0x8d7e0;
    void selectBuildTab(int tab) = mac 0x1fb90, win 0x88810;
    void onPause(cocos2d::CCObject* sender) = mac 0x18650, win 0x78020;
    void onSettings(cocos2d::CCObject* sender) = win 0x77fe0;
    void activateRotationControl(cocos2d::CCObject* sender) = win 0x8fe70;
    void activateScaleControl(cocos2d::CCObject* sender) = win 0x889b0;
    void dynamicGroupUpdate(bool idk) = win 0x8ad10;
    void createRockOutline() = win 0x89c10;
    void createRockEdges() = win 0x88ec0;
    void createRockBase() = win 0x8a2c0;
    void onCopyState(cocos2d::CCObject* sender) = win 0x88490;
    void onPasteColor(cocos2d::CCObject* sender) = mac 0x19f40, win 0x88580;
    void onPasteState(cocos2d::CCObject* sender) = mac 0x19ee0, win 0x884c0;
    void onGroupSticky(cocos2d::CCObject* sender) = mac 0xc180, win 0x87a80;
    void onUngroupSticky(cocos2d::CCObject* sender) = mac 0xc1d0, win 0x87ac0;
    void onGoToLayer(cocos2d::CCObject* sender) = win 0x886b0;
    void onGoToBaseLayer(cocos2d::CCObject* sender) = win 0x88790;
    void onToggleGuide(cocos2d::CCObject* sender) = mac 0x19da0, win 0x79160;
    void editColor(cocos2d::CCObject* sender) = mac 0x19190, win 0x8d3c0;
    void alignObjects(cocos2d::CCArray* objs, bool alignY) = mac 0x2cea0, win 0x8f320;
    virtual void scrollWheel(float vertical, float horizontal) = win 0x921d0, mac 0x31370, ios 0x2c4884;
    void createMoveMenu() = mac 0x275e0, win 0x8c0d0;

    bool m_isPlayingMusic;
    EditButtonBar* m_buttonBar;
    PAD = mac 0x8, win 0x4;
    cocos2d::CCArray* m_hideableUIElementArray;
    float m_gridSize;
    PAD = mac 0x18, win 0x14;
    bool m_moveModifier;
    int m_rotationTouchID;
    int m_scaleTouchID;
    int m_touchID;
    cocos2d::CCLabelBMFont* m_objectInfoLabel;
    GJRotationControl* m_rotationControl;
    cocos2d::CCPoint m_scalePos;
    bool m_touchDown;
    GJScaleControl* m_scaleControl;
    cocos2d::CCDictionary* m_editButtonDict;
    EditButtonBar* m_createButtonBar;
    EditButtonBar* m_editButtonBar;
    Slider* m_positionSlider;
    float m_unknown0;
    float m_minYLimit;
    float m_unknown2;
    bool m_swipeEnabled;
    PAD = mac 0x3, win 0x3, android 0x3;
    bool m_freeMoveEnabled;
    PAD = mac 0xb, win 0xb, android 0xa;
    bool m_updateTimeMarkers;
    cocos2d::CCArray* m_unknownArray2;
    PAD = mac 0x8, win 0x8, android 0x8;
    cocos2d::CCArray* m_selectedObjects;
    cocos2d::CCMenu* m_deleteMenu;
    cocos2d::CCArray* m_unknownArray4;
    CCMenuItemSpriteExtra* m_deleteModeBtn;
    CCMenuItemSpriteExtra* m_buildModeBtn;
    CCMenuItemSpriteExtra* m_editModeBtn;
    CCMenuItemSpriteExtra* m_swipeBtn;
    CCMenuItemSpriteExtra* m_freeMoveBtn;
    CCMenuItemSpriteExtra* m_deselectBtn;
    CCMenuItemSpriteExtra* m_snapBtn;
    CCMenuItemSpriteExtra* m_rotateBtn;
    CCMenuItemSpriteExtra* m_playbackBtn;
    CCMenuItemSpriteExtra* m_playtestBtn;
    CCMenuItemSpriteExtra* m_playtestStopBtn;
    CCMenuItemSpriteExtra* m_trashBtn;
    CCMenuItemSpriteExtra* m_linkBtn;
    CCMenuItemSpriteExtra* m_unlinkBtn;
    CCMenuItemSpriteExtra* m_undoBtn;
    CCMenuItemSpriteExtra* m_redoBtn;
    CCMenuItemSpriteExtra* m_editObjectBtn;
    CCMenuItemSpriteExtra* m_editGroupBtn;
    CCMenuItemSpriteExtra* m_editHSVBtn;
    CCMenuItemSpriteExtra* m_editSpecialBtn;
    CCMenuItemSpriteExtra* m_copyPasteBtn;
    CCMenuItemSpriteExtra* m_copyBtn;
    CCMenuItemSpriteExtra* m_pasteBtn;
    CCMenuItemSpriteExtra* m_copyValuesBtn;
    CCMenuItemSpriteExtra* m_pasteStateBtn;
    CCMenuItemSpriteExtra* m_pasteColorBtn;
    CCMenuItemSpriteExtra* m_goToLayerBtn;
    CCMenuItemToggler* m_guideToggle;
    cocos2d::CCArray* m_createButtonBars;
    cocos2d::CCMenu* m_tabsMenu;
    cocos2d::CCArray* m_tabsArray;
    cocos2d::CCSprite* m_idkSprite0;
    cocos2d::CCSprite* m_idkSprite1;
    CCMenuItemSpriteExtra* m_button27;
    CCMenuItemSpriteExtra* m_button28;
    CCMenuItemSpriteExtra* m_deleteFilterNone;
    CCMenuItemSpriteExtra* m_deleteFilterStatic;
    CCMenuItemSpriteExtra* m_deleteFilterDetails;
    CCMenuItemSpriteExtra* m_deleteFilterCustom;
    cocos2d::CCLabelBMFont* m_currentLayerLabel;
    CCMenuItemSpriteExtra* m_layerNextBtn;
    CCMenuItemSpriteExtra* m_layerPrevBtn;
    CCMenuItemSpriteExtra* m_goToBaseBtn;
    PAD = mac 0x10, win 0x8;
    int m_selectedCreateObjectID;
    cocos2d::CCArray* m_createButtonArray;
    cocos2d::CCArray* m_customObjectButtonArray;
    cocos2d::CCArray* m_unknownArray9;
    int m_selectedMode;
    LevelEditorLayer* m_editorLayer;
    cocos2d::CCPoint m_swipeStart;
    cocos2d::CCPoint m_swipeEnd;
    PAD = mac 0x10, win 0x10;
    cocos2d::CCPoint m_caremaTest;
    PAD = mac 0x8, win 0x8;
    GameObject* m_selectedObject;
    PAD = mac 0x10, win 0x8;
    gd::string m_clipboard;
    PAD = mac 0x10, win 0x8;
    int m_selectedTab;
    int m_timesSelected;
    PAD = win 0x20;
    bool m_spaceKeyPressed;
}



class EndLevelLayer {
    static EndLevelLayer* create() = mac 0x2787d0, win 0x94b50;

    void onMenu(cocos2d::CCObject* sender) = mac 0x27a500, win 0x96c10;
    void onEdit(cocos2d::CCObject* sender) = mac 0x27a640, win 0x96d30;
}



class ExtendedLayer {}



class FLAlertLayerProtocol {
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) {}
}



class FMODSound : cocos2d::CCNode {
    static FMODSound* create(FMOD::Sound* sound) = win 0x246b0;

    FMOD::Sound* m_sound;
}



class GJAccountManager : cocos2d::CCNode {
    static GJAccountManager* sharedState() = mac 0x85070, win 0x107d50;

    PAD = mac 0x8, win 0x4;
    gd::string m_password;
    gd::string m_username;
    int m_accountID;
}





class GJChallengeItem : cocos2d::CCObject {

    GJChallengeType m_challengeType;
    geode::SeedValueSRV m_count;
    geode::SeedValueSRV m_reward;
    geode::SeedValueSRV m_goal;
    int m_timeLeft;
    bool m_canClaim;
    int m_position;
    gd::string m_name;
}

class GJColorSetupLayer {}

class GJComment : cocos2d::CCNode {
    ~GJComment() = mac 0x2dfd70, win 0xc3640;
    virtual bool init() = mac 0x2dfec0, win 0xc3ef0;
    static GJComment* create(cocos2d::CCDictionary* dict) = win 0xc3740;

    gd::string m_commentString;
    gd::string m_userName;
    int m_commentID;
    int m_userID;
    int m_likeCount;
    int m_levelID;
    bool m_isSpam;
    int m_accountID;
    gd::string m_uploadDate;
    bool m_commentDeleted;
    int m_percentage;
    int m_modBadge;
    cocos2d::ccColor3B m_color;
    bool m_hasLevelID;
    GJUserScore* m_userScore;
}

class GJCommentListLayer : cocos2d::CCLayerColor {
    ~GJCommentListLayer() = mac 0x1482a0;
    static GJCommentListLayer* create(BoomListView*, char const*, cocos2d::_ccColor4B, float, float, bool) = mac 0x147d00, win 0x13a880;

    BoomListView* m_list;
}









class GJGameLevel : cocos2d::CCNode {
    static GJGameLevel* createWithCoder(DS_Dictionary* dict) {
        auto ret = GJGameLevel::create();
        ret->dataLoaded(dict);
        return ret;
    }

    inline GJGameLevel() {}
    virtual ~GJGameLevel() = mac 0x2db2d0, win 0xbbdb0;
    virtual void encodeWithCoder(DS_Dictionary*) = mac 0x2dd1c0, win 0xbecb0;
    virtual bool canEncode() = mac 0x2ddae0, win 0x11070; // shared with lots of stuff
    virtual bool init() = mac 0x2db310, win 0xbd350;
    static GJGameLevel* create() = mac 0x2b83e0, win 0xbd2b0, ios 0x51fe8;
    gd::string getAudioFileName() = mac 0x2dbe70, win 0xbdc70;
    const char* getCoinKey(int) = mac 0x2ce360, win 0xbda50;
    void getLengthKey(int) = mac 0x2dbba0;
    void getNormalPercent() = mac 0x2b8b20;
    void levelWasAltered() = mac 0x2db530, win 0xbd550;
    void savePercentage(int, bool, int, int, bool) = mac 0x2db700;
    void dataLoaded(DS_Dictionary* dict) = mac 0x2922f0, win 0xbded0, ios 0x6fca4;
    GJDifficulty getAverageDifficulty() = win 0xbd9b0;
    gd::string getUnpackedLevelDescription() = win 0xbf890;

    static GJGameLevel* getCurrent() {
        auto playLayer = PlayLayer::get();
        if (playLayer) return playLayer->m_level;
        auto editorLayer = LevelEditorLayer::get();
        if (editorLayer) return editorLayer->m_level;
        return nullptr;
    }

    cocos2d::CCDictionary* m_lastBuildSave;
    geode::SeedValueRSV m_levelID;
    gd::string m_levelName;
    gd::string m_levelDesc;
    gd::string m_levelString;
    gd::string m_creatorName;
    gd::string m_recordString;
    gd::string m_uploadDate;
    gd::string m_updateDate;
    geode::SeedValueRSV m_userID;
    geode::SeedValueRSV m_accountID;
    GJDifficulty m_difficulty;
    int m_audioTrack;
    int m_songID;
    int m_levelRev;
    bool m_unlisted;
    geode::SeedValueRSV m_objectCount;
    int m_levelIndex;
    int m_ratings;
    int m_ratingsSum;
    int m_downloads;
    bool m_isEditable;
    bool m_gauntletLevel;
    bool m_gauntletLevel2;
    int m_workingTime;
    int m_workingTime2;
    bool m_lowDetailMode;
    bool m_lowDetailModeToggled;
    geode::SeedValueRS m_isVerified;
    bool m_isVerifiedRaw; // honestly i dont think this is need to be used
    bool m_isUploaded;
    bool m_hasBeenModified;
    int m_levelVersion;
    int m_gameVersion;
    geode::SeedValueRSV m_attempts;
    geode::SeedValueRSV m_jumps;
    geode::SeedValueRSV m_clicks;
    geode::SeedValueRSV m_attemptTime;
    int m_chk;
    bool m_isChkValid;
    bool m_isCompletionLegitimate;
    geode::SeedValueVSR m_normalPercent;
    geode::SeedValueRSV m_orbCompletion;
    geode::SeedValueRSV m_newNormalPercent2;
    int m_practicePercent;
    int m_likes;
    int m_dislikes;
    int m_levelLength;
    int m_featured;
    bool m_isEpic;
    bool m_levelFavorited;
    int m_levelFolder;
    geode::SeedValueRSV m_dailyID;
    geode::SeedValueRSV m_demon;
    int m_demonDifficulty;
    geode::SeedValueRSV m_stars;
    bool m_autoLevel;
    int m_coins;
    geode::SeedValueRSV m_coinsVerified;
    geode::SeedValueRS m_password;
    geode::SeedValueRSV m_originalLevel;
    bool m_twoPlayerMode;
    int m_failedPasswordAttempts;
    geode::SeedValueRSV m_firstCoinVerified;
    geode::SeedValueRSV m_secondCoinVerified;
    geode::SeedValueRSV m_thirdCoinVerified;
    int m_starsRequested;
    bool m_showedSongWarning;
    int m_starRatings;
    int m_starRatingsSum;
    int m_maxStarRatings;
    int m_minStarRatings;
    int m_demonVotes;
    int m_rateStars;
    int m_rateFeature;
    gd::string m_rateUser;
    bool m_dontSave;
    bool m_levelNotDownloaded;
    int m_requiredCoins;
    bool m_isUnlocked;
    cocos2d::CCPoint m_lastCameraPos;
    float m_fastEditorZoom;
    int m_lastBuildTab;
    int m_lastBuildPage;
    int m_lastBuildGroupID;
    GJLevelType m_levelType;
    int m_M_ID;
    gd::string m_tempName;
    gd::string m_capacityString;
    bool m_highObjectsEnabled;
    gd::string m_personalBests;
}





class GJItemIcon {
    GJItemIcon* createBrowserIcon(UnlockType _type, int _id) {
        return GJItemIcon::create(_type, _id,
            { 0xaf, 0xaf, 0xaf }, { 0xff, 0xff, 0xff },
            false, true, true,
            { 0xff, 0xff, 0xff }
        );
    }

    static GJItemIcon* create(UnlockType _type, int _id, cocos2d::ccColor3B _col1, cocos2d::ccColor3B _col2, bool _un0, bool _un1, bool _un2, cocos2d::ccColor3B _col3) = mac 0x1bb330, win 0x12cbf0, ios 0x227188;
}

class GJLevelScoreCell : TableViewCell {
    void updateBGColor(unsigned int index) = win 0x5c6b0;
}



class GJMapPack : cocos2d::CCNode {
    cocos2d::CCArray* m_levels;
    int m_packID;
    GJDifficulty m_difficulty;
    int m_stars;
    int m_coins;
    gd::string m_packName;
    gd::string m_levelStrings;
    cocos2d::ccColor3B m_textColour;
    cocos2d::ccColor3B m_barColour;
    int m_MId;
    bool m_isGauntlet;

    virtual bool init() = win 0xc0080;
    static GJMapPack *create() = win 0xbffe0;
}

class GJMessageCell : TableViewCell {
    void updateBGColor(unsigned int index) = win 0x5c6b0;
    void loadFromMessage(GJUserMessage *) = win 0x64b60;
}

class GJOptionsLayer : FLAlertLayer {
    static GJOptionsLayer* create() = mac 0x145ae0, win 0x0, ios 0x0;
    void addToggle(char const*, char const*, char const*) = mac 0x1464e0, win 0x0, ios 0x0;
}

class GJRequestCell : TableViewCell {
    void updateBGColor(unsigned int index) = win 0x5c6b0;
}



class GJRewardObject : cocos2d::CCObject {
    SpecialRewardItem m_specialRewardItem;
    UnlockType m_unlockType;
    int m_itemID;
    int m_total;
}







class GJScoreCell : TableViewCell {
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = win 0x624a0;
    void loadFromScore(GJUserScore* score) = win 0x61440;
    void onViewProfile(cocos2d::CCObject* sender) = win 0x62380;
    void updateBGColor(unsigned int index) = win 0x5c6b0;
}

class GJSearchObject : cocos2d::CCNode {
    SearchType getType() {
        return m_searchType;
    }

    static GJSearchObject* create(SearchType nID) = win 0xc2b90;
    static GJSearchObject* create(SearchType nID, gd::string str) = win 0xc2c80;

    SearchType m_searchType;
    gd::string m_searchQuery;
    gd::string m_difficulty;
    gd::string m_length;
    int m_page;
    bool m_starFilter;
    bool m_noStarFilter;
    int m_unknownMember;
    bool m_uncompletedFilter;
    bool m_completedFilter;
    bool m_featuredFilter;
    bool m_originalFilter;
    bool m_twoPlayerFilter;
    bool m_coinsFilter;
    bool m_epicFilter;
    GJDifficulty m_demonFilter;
    int m_unk;
    int m_songID;
    bool m_customSongFilter;
    bool m_songFilter;
}

class GJSpecialColorSelect {
    static const char* textForColorIdx(int id) = mac 0x383a50, win 0x14e1d0, ios 0x113f6c;
}

class GJSpriteColor : cocos2d::CCNode {
    int m_colorID;
    int m_defaultColorID;
    float m_unk_0F4;
    cocos2d::ccHSVValue m_hsv;
    bool m_usesHSV;
    float unk_10C;
    bool unk_110;

    void resetCustomColorMode() = mac 0x342f10;
}

class GJUserCell : TableViewCell {
    void updateBGColor(unsigned int index) = win 0x5c6b0;
}

class GJUserMessage : cocos2d::CCNode {
    virtual bool init() = win 0x33b40;
}

class GJUserScore : cocos2d::CCNode {
    IconType getIconType() const { 
        return m_iconType; 
    }
    int getPlayerCube() const { 
        return m_playerCube; 
    }
    int getPlayerShip() const { 
        return m_playerShip;
    }
    int getPlayerBall() const {
        return m_playerBall;
    }
    int getPlayerUfo() const {
        return m_playerUfo;
    }
    int getPlayerWave() const { 
        return m_playerWave; 
    }
    int getPlayerRobot() const { 
        return m_playerRobot; 
    }
    int getPlayerSpider() const { 
        return m_playerSpider; 
    }
    int getPlayerStreak() const { 
        return m_playerStreak; 
    }
    bool getGlowEnabled() const { 
        return m_glowEnabled; 
    }
    int getPlayerExplosion() const { 
        return m_playerExplosion; 
    }
    int getPlayerColor1() const { 
        return m_color1;
    }
    int getPlayerColor2() const { 
        return m_color2; 
    }
    gd::string getPlayerName() const { 
        return m_userName; 
    }
    static GJUserScore* create() = win 0xc1660;
    static GJUserScore* create(cocos2d::CCDictionary*) = win 0xc0750;

    gd::string m_userName;
    gd::string m_userUDID;
    int m_scoreType;
    int m_userID;
    int m_accountID;
    int m_stars;
    int m_diamonds;
    int m_demons;
    int m_playerRank;
    int m_creatorPoints;
    int m_secretCoins;
    int m_userCoins;
    int m_iconID;
    int m_color1;
    int m_color2;
    int m_special;
    IconType m_iconType;
    int m_messageState;
    int m_friendStatus;
    int m_commentHistoryStatus;
    gd::string m_youtubeURL;
    gd::string m_twitterURL;
    gd::string m_twitchURL;
    int m_playerCube;
    int m_playerShip;
    int m_playerBall;
    int m_playerUfo;
    int m_playerWave;
    int m_playerRobot;
    int m_playerSpider;
    int m_playerStreak;
    bool m_glowEnabled;
    int m_playerExplosion;
    int m_modBadge;
    int m_globalRank;
    int m_friendReqStatus;
    int m_newMsgCount;
    int m_friendReqCount;
    bool m_isBlocked;
    gd::string m_lastScoreAge;
}

class GManager : cocos2d::CCNode {
    virtual void setup() {}
    void encodeDataTo(DS_Dictionary* data) {}
    void dataLoaded(DS_Dictionary* data) {}
    void firstLoad() {}

    void save() = mac 0x26f300, win 0x29250;
    void saveData(DS_Dictionary*, gd::string) = mac 0x26f4b0;
    void saveGMTo(gd::string) = mac 0x26f3b0, win 0x29250;

    gd::string m_fileName;
    bool m_setup;
    bool m_saved;
    bool m_quickSave;
}



class GooglePlayManager : cocos2d::CCNode {
    virtual bool init() = win 0x11070;

    static GooglePlayManager *sharedState() = win 0x4295a0;
}

class GameLevelManager : cocos2d::CCNode {
    cocos2d::CCArray* createAndGetScores(gd::string, GJScoreType) = win 0xa2780;
    GJGameLevel* createNewLevel() = mac 0x2b8180, win 0xa0db0;
    static GameLevelManager* sharedState() = mac 0x2a8340, win 0x9f860;
    void getCompletedLevels(bool newFilter) = win 0xa2d20;
    void getGJUserInfo(int) = win 0xb00b0;
    void getOnlineLevels(GJSearchObject*) = win 0xa7bc0;
    void getPageInfo(char const*) = mac 0x2c0050;
    cocos2d::CCArray* getSavedLevels(bool favorite, int levelFolder) = win 0xa2960;
    cocos2d::CCArray* getStoredOnlineLevels(char const*) = mac 0x2bfe80, win 0xa3a90;
    void getTopArtists(int, int) = mac 0x2ce3d0;
    void getTopArtistsKey(int) = mac 0x2ce7a0;
    void makeTimeStamp(char const*) = mac 0x2bfd90, win 0xa3f00;
    GJGameLevel* getMainLevel(int id, bool unk) = win 0xa0940;
    bool hasLikedItemFullCheck(LikeItemType type, int itemID, int commentSourceID) = mac 0x2d83d0;
    bool hasRatedLevelStars(int levelID) = mac 0x2ca3a0;
    void ProcessHttpRequest(gd::string, gd::string, gd::string, int) = mac 0x2a8670, win 0x9f8e0;
    cocos2d::CCDictionary* responseToDict(gd::string response, bool comment) = win 0xbba50;
    void storeUserNames(gd::string) = win 0xa1840;
    gd::string userNameForUserID(int id) = win 0xa1c20;
    void updateUserScore() = win 0xada60;

    inline static GameLevelManager* get() {
        return GameLevelManager::sharedState();
    }


    //cocos2d::CCDictionary* timerDict = mac 0x1e8;
    cocos2d::CCDictionary* m_mainLevels;
    cocos2d::CCDictionary* m_searchFilters;
    cocos2d::CCDictionary* m_onlineLevels;
    PAD = win 0x4;
    cocos2d::CCDictionary* m_followedCreators;
    cocos2d::CCDictionary* m_downloadedLevels;
    cocos2d::CCDictionary* m_likedLevels;
    cocos2d::CCDictionary* m_ratedLevels;
    cocos2d::CCDictionary* m_ratedDemons;
    cocos2d::CCDictionary* m_reportedLevels;
    cocos2d::CCDictionary* m_onlineFolders;
    cocos2d::CCDictionary* m_localLevelsFolders;
    cocos2d::CCDictionary* m_dailyLevels;
    int m_dailyTimeLeft;
    int m_dailyID;
    int m_dailyIDUnk;
    PAD = win 0x4;
    int m_weeklyTimeLeft;
    int m_weeklyID;
    int m_weeklyIDUnk;
    cocos2d::CCDictionary* m_gauntletLevels;
    cocos2d::CCDictionary* m_unkDict13;
    PAD = win 0x4;
    cocos2d::CCDictionary* m_timerDict;
    cocos2d::CCDictionary* m_knownUsers;
    cocos2d::CCDictionary* m_accountIDtoUserIDDict;
    cocos2d::CCDictionary* m_userIDtoAccountIDDict;
    cocos2d::CCDictionary* m_storedLevels;
    cocos2d::CCDictionary* m_pageInfo;
    cocos2d::CCDictionary* m_unkDict20;
    cocos2d::CCDictionary* m_savedPacks;
    cocos2d::CCDictionary* m_savedGauntlets;
    cocos2d::CCDictionary* m_downloadObjects;
    cocos2d::CCDictionary* m_unkDict24;
    cocos2d::CCDictionary* m_storedUserInfo;
    cocos2d::CCDictionary* m_friendRequests;
    cocos2d::CCDictionary* m_userMessages;
    cocos2d::CCDictionary* m_userReplies;
    gd::string m_unkStr1;
    gd::string m_unkStr2;
    LeaderboardState m_leaderboardState;
    bool m_unkEditLevelLayerOnBack;
    OnlineListDelegate* m_onlineListDelegate;
    LevelDownloadDelegate* m_levelDownloadDelegate;
    LevelCommentDelegate* m_levelCommentDelegate;
    CommentUploadDelegate* m_commentUploadDelegate;
    LevelUploadDelegate* m_levelUploadDelegate;
    LevelUpdateDelegate* m_levelUpdateDelegate;
    LeaderboardManagerDelegate* m_leaderboardManagerDelegate;
    LevelDeleteDelegate* m_levelDeleteDelegate;
    UserInfoDelegate* m_userInfoDelegate;
    LevelManagerDelegate* m_levelManagerDelegate;
    void* m_unkDelegate;
    FriendRequestDelegate* m_friendRequestDelegate;
    MessageListDelegate* m_messageListDelegate;
    DownloadMessageDelegate* m_downloadMessageDelegate;
    UploadMessageDelegate* m_uploadMessageDelegate;
    GJRewardDelegate* m_GJRewardDelegate;
    GJChallengeDelegate* m_GJChallengeDelegate;
    GJDailyLevelDelegate* m_GJDailyLevelDelegate;
    MusicDownloadDelegate* m_musicDownloadDelegate;
    int m_unkDownload;
    PAD = win 0x4;
    gd::string m_unkStr3;
    cocos2d::CCString* m_unkStr4;
}

class GameManager : GManager {
    int getPlayerFrame() {
        return m_playerFrame;
    }
    int getPlayerShip() {
        return m_playerShip;
    }
    int getPlayerBall() {
        return m_playerBall;
    }
    int getPlayerBird() {
        return m_playerBird;
    }
    int getPlayerDart() {
        return m_playerDart;
    }
    int getPlayerRobot() { 
        return m_playerRobot; 
    }
    int getPlayerSpider() { 
        return m_playerSpider; 
    }
    int getPlayerStreak() { 
        return m_playerStreak; 
    }
    int getPlayerDeathEffect() {
        return m_playerDeathEffect; 
    }
    int getPlayerColor() {
        return m_playerColor;
    }
    int getPlayerColor2() {
        return m_playerColor2;
    }
    bool getPlayerGlow() {
        return m_playerGlow; 
    }
    IconType getPlayerIconType() {
        return m_playerIconType; 
    }
    void setPlayerFrame(int id) {
        m_playerFrame = id;
    }
    void setPlayerShip(int id) {
        m_playerShip = id;
    }
    void setPlayerBall(int id) {
        m_playerBall = id;
    }
    void setPlayerBird(int id) {
        m_playerBird = id;
    }
    void setPlayerDart(int id) {
        m_playerDart = id;
    }
    void setPlayerRobot(int id) {
        m_playerRobot = id;
    }
    void setPlayerSpider(int id) {
        m_playerSpider = id;
    }
    void setPlayerStreak(int id) {
        m_playerStreak = id;
    }
    void setPlayerDeathEffect(int id) {
        m_playerDeathEffect = id;
    }
    void setPlayerColor(int id) {
        m_playerColor = id;
    }
    void setPlayerColor2(int id) {
        m_playerColor2 = id;
    }
    void setPlayerGlow(bool v) {
        m_playerGlow = v;
    }
    void setPlayerIconType(IconType v) {
        m_playerIconType = v;
    }
    void setQuality(cocos2d::TextureQuality quality) {
        m_quality = quality;
    }
    PlayLayer* getPlayLayer() { 
        return m_playLayer;
    }
    LevelEditorLayer* getEditorLayer() { 
        return m_levelEditorLayer;
    }
    bool getGameVariableDefault(const char* key, bool defaultValue) {
        auto object = static_cast<cocos2d::CCString*>(m_valueKeeper->objectForKey(std::string("gv_") + key));
        if (object == nullptr)
            return defaultValue;
        return object->boolValue();
    }
    int getIntGameVariableDefault(const char* key, int defaultValue) {
        auto object = static_cast<cocos2d::CCString*>(m_valueKeeper->objectForKey(std::string("gv_") + key));
        if (object == nullptr)
            return defaultValue;
        return object->intValue();
    }
    static GameManager* get() {
        return GameManager::sharedState();
    }

    void accountStatusChanged() = mac 0x1cdad0;
    cocos2d::_ccColor3B colorForIdx(int) = mac 0x1cbc80, win 0xc8d10, ios 0x237488;
    void didExitPlayscene() = mac 0x1d0230;
    void doQuickSave() = mac 0x1d0200;
    void fadeInMusic(const char*) = mac 0x1c2ff0, win 0xc4bd0;
    void getBGTexture(int) = mac 0x1cca00;
    void getFontFile(int) = mac 0x1cc5f0;
    bool getGameVariable(const char*) = mac 0x1cccd0, win 0xc9d30;
    int getIntGameVariable(const char*) = mac 0x1cd1d0, win 0xca330;
    bool getUGV(const char*) = mac 0x1ccfa0, win 0xca0d0;
    void loadBackground(int) = mac 0x1cc820, win 0xc9990;
    void loadDeathEffect(int) = mac 0x1cc690, win 0xc9850;
    void loadFont(int) = mac 0x1cc550, win 0xc9770;
    void loadGround(int) = mac 0x1cc8e0, win 0xc9a50;
    void reloadAll(bool, bool, bool) = mac 0x1d08a0, win 0xce950;
    void reloadAllStep2() = mac 0x1d0940, win 0xce9e0, ios 0x23b1f4;
    void reloadAllStep5() = mac 0x1d0b00;
    void reportPercentageForLevel(int, int, bool) = mac 0x1c5b00;
    void setGameVariable(const char*, bool) = mac 0x1cca80, win 0xc9b50;
    void setIntGameVariable(const char*, int) = mac 0x1cd0e0, win 0xca230;
    void setUGV(char const*, bool) = mac 0x1cce50, win 0xc9f90;
    static GameManager* sharedState() = mac 0x1c2b30, win 0xc4a50, ios 0x2321b8;
    ~GameManager() = mac 0x1d0e00, win 0xcf100;
    void getGTexture(int) = mac 0x1cca40, win 0xc9a50;
    virtual bool init() = mac 0x1c2ec0, win 0xc4ad0;
    void reportAchievementWithID(char const*, int, bool) = mac 0x1c6460, win 0xc64c0;
    cocos2d::CCSize* resolutionForKey(cocos2d::CCSize*, int) = mac 0x1d0b40, win 0xceca0;
    virtual void update(float) = mac 0x1d0270, win 0xce440;
    bool isColorUnlocked(int _id, bool _type) = mac 0x1c3b90, win 0xc53f0;
    bool isIconUnlocked(int _id, IconType _type) = mac 0x1c35b0, win 0xc4fc0;
    void toggleGameVariable(const char* key) = win 0xc9e90;
    void returnToLastScene(GJGameLevel* level) = mac 0x1d0500, win 0xce6a0;

    bool m_switchModes;
    bool m_toFullscreen;
    bool m_reloading;
    bool m_unknown0;
    PAD = mac 0x4, win 0x4;
    cocos2d::CCDictionary* m_valueKeeper;
    cocos2d::CCDictionary* m_unlockValueKeeper;
    cocos2d::CCDictionary* m_customObjectDict;
    double m_adTimer;
    double m_adCache;
    PAD = mac 0x8, win 0x8;
    double m_unknownDouble;
    // TODO: according to wylie's decomp this pad was 0x4, gd.h has it as 0x8 (and its correct)
    // i have a feeling android gm and windows gm are different structs
    // so the extra member could be here (for windows)
    PAD = mac 0x4, win 0x8;
    bool m_loaded;
    gd::string m_unknownString;
    PlayLayer* m_playLayer;
    LevelEditorLayer* m_levelEditorLayer;
    int m_unknown1;
    MenuLayer* m_menuLayer;
    bool m_unknownBool2;
    int m_unknownInt2;
    bool m_unknownBool3;
    bool m_unknownPlayLayerBool;
    bool m_unknownBool4;
    bool m_unknownBool5;
    gd::string m_playerUDID;
    gd::string m_playerName;
    bool m_commentsEnabled;
    geode::SeedValueRSV m_playerUserID;
    float m_backgroundMusicVolume;
    float m_effectsVolume;
    float m_timeOffset;
    bool m_ratedGame;
    bool m_likedFacebook;
    bool m_followedTwitter;
    bool m_subbedYoutube;
    // there are 4 bytes too many between m_timeOffset and m_playerFrameRand1
    // and i'm guessing it's this one
    // int m_unknownInt;
    double m_socialsDuration;
    bool m_showedAd;
    bool m_unknownBool;
    bool m_editorEnabled;
    int m_sceneEnum;
    int m_searchObjectType;
    bool m_unknownBool6;
    geode::SeedValueRSV m_playerFrame;
    geode::SeedValueRSV m_playerShip;
    geode::SeedValueRSV m_playerBall;
    geode::SeedValueRSV m_playerBird;
    geode::SeedValueRSV m_playerDart;
    geode::SeedValueRSV m_playerRobot;
    geode::SeedValueRSV m_playerSpider;
    geode::SeedValueRSV m_playerColor;
    geode::SeedValueRSV m_playerColor2;
    geode::SeedValueRSV m_playerStreak;
    geode::SeedValueRSV m_playerDeathEffect;
    geode::SeedValueSR m_chk;
    geode::SeedValueSR m_secretNumber;
    bool m_playerGlow;
    IconType m_playerIconType;
    bool m_everyPlaySetup;
    bool m_showSongMarkers; 
    bool m_showBPMMarkers;
    bool m_recordGameplay;
    bool m_showProgressBar;
    bool m_performanceMode;
    bool m_clickedGarage; // this should be 0x2a2 on macos and 0x28a on windows
    bool m_clickedEditor;
    bool m_clickedName;
    bool m_clickedPractice;
    bool m_showedEditorGuide;
    bool m_showedRateDiffDialog;
    bool m_showedRateStarDialog;
    bool m_showedLowDetailDialog;
    PAD = mac 0x30, win 0x30;
    int m_bootups;
    bool m_hasRatedGame;
    bool m_unk0;
    bool m_unk1;
    bool m_unk2;
    bool m_gameCenterEnabled;
    bool m_smoothFix;
    geode::SeedValueSRV m_ratePower;
    bool m_canGetLevelSaveData;
    int m_resolution;
    cocos2d::TextureQuality m_quality;
}

class GameObject : CCSpritePlus {
    cocos2d::CCPoint getStartPosition() { 
        return m_startPosition;
    }
    void setStartPosition(cocos2d::CCPoint const& p) {
        m_startPosition = p;
    }
    unsigned int getUniqueID() {
        return m_uniqueID;
    }
    short getGroupID(int ix) {
        return m_groups->at(ix);
    }
    short getGroupIDCount() {
        return m_groupCount; 
    }
    gd::vector<short> getGroupIDs() {
        std::vector<short> res;
    
        if (m_groups && m_groups->at(0))
            for (auto i = 0; i < m_groupCount; i++)
                res.push_back(m_groups->at(i));
    
        return res;
    }
    int getGameZOrder() {
        return m_gameZOrder;
    }
    void setGameZOrder(int z) {
        m_gameZOrder = z;
    }
    void setGameObjType(GameObjectType t) {
        m_objectType = t;
    }
    GJSpriteColor* getBaseColor() {
        return m_baseColor;
    }
    GJSpriteColor* getDetailColor() {
        return m_detailColor;
    }

    GameObject() = mac 0xdc4c0, win 0x983e0; // yeah why is this here wtf, seems life ego ctor created this
    ~GameObject() = mac 0x2f4ca0, win 0xcf340;
    virtual void update(float) = mac 0x2fbb90, win 0xce440;
    virtual void setScaleX(float) = mac 0x335b00, win 0xe5050;
    virtual void setScaleY(float) = mac 0x335b90, win 0xe50e0;
    virtual void setScale(float) = mac 0x335c20, win 0xe5170;
    virtual void setPosition(const cocos2d::CCPoint&) = mac 0x335850, win 0xe4de0;
    virtual void setVisible(bool) = mac 0x336280, win 0xe57c0;
    virtual void setRotation(float) = mac 0x335970, win 0xe4ed0;
    virtual void setOpacity(GLubyte) = mac 0x335f10, win 0xe53c0;
    virtual bool initWithTexture(cocos2d::CCTexture2D*) = mac 0x2f56a0, win 0xcfa80;
    virtual void setChildColor(const cocos2d::ccColor3B&) = mac 0x341f20, win 0xee900;
    virtual void setFlipX(bool) = mac 0x335a60, win 0xe4fd0;
    virtual void setFlipY(bool) = mac 0x335ab0, win 0xe5010;
    virtual void customSetup() = mac 0x2fbba0, win 0xd1c10;
    virtual void setupCustomSprites() = mac 0x307f60, win 0xd7d50;
    virtual void addMainSpriteToParent(bool) = mac 0x33a5b0, win 0xeb250;
    virtual void resetObject() = mac 0x2fa620, win 0xd1470, ios 0xd1470;
    virtual void triggerObject(GJBaseGameLayer*) = mac 0x2fa8f0, win 0xd1790;
    virtual void activateObject() = mac 0x2faf60, win 0xd1870;
    void activateObject(PlayerObject*) = win 0xef0e0;
    virtual void deactivateObject(bool) = mac 0x2fb8f0, win 0xd19b0;
    virtual cocos2d::CCRect const& getObjectRect() = mac 0x3352b0, win 0xe4a40;
    virtual cocos2d::CCRect getObjectRect(float, float) = mac 0x3352d0, win 0xe4a70;
    virtual cocos2d::CCRect getObjectRect2(float, float) = mac 0x3354e0, win 0xe4b90;
    virtual cocos2d::CCRect const& getObjectTextureRect() = mac 0x3355b0, win 0xe4c40;
    virtual cocos2d::CCPoint getRealPosition() = mac 0x335750, win 0xe4d90;
    virtual void setStartPos(cocos2d::CCPoint) = mac 0x2fa520, win 0xd1390;
    virtual void updateStartValues() = mac 0x2fa800, win 0xd1610;
    virtual void customObjectSetup(gd::map<gd::string, gd::string>&) {}
    virtual gd::string getSaveString() = mac 0x33d3d0, win 0xed0c0;
    virtual bool isFlipX() = mac 0x335a40, win 0xe4fb0;
    virtual bool isFlipY() = mac 0x335a50, win 0xe4fc0;
    virtual void setRScaleX(float) = mac 0x335cb0, win 0xe5200;
    virtual void setRScaleY(float) = mac 0x335d60, win 0xe5240;
    virtual void setRScale(float) = mac 0x335e10, win 0xe5280;
    virtual void getRScaleX() = mac 0x335e50, win 0xe52c0;
    virtual void getRScaleY() = mac 0x335e80, win 0xe5300;
    virtual void calculateSpawnXPos() = mac 0x336970, win 0xe5d20;
    virtual void triggerActivated(float) = mac 0x336990, win 0xe5d30;
    virtual void powerOnObject() = mac 0x3369a0, win 0xe5d40;
    virtual void powerOffObject() = mac 0x3369c0, win 0xe5d60;
    virtual void setObjectColor(const cocos2d::ccColor3B&) = mac 0x341c90, win 0xee620;
    virtual void setGlowColor(cocos2d::_ccColor3B const&) = mac 0x341ed0, win 0xee8c0;
    virtual void getOrientedBox() = mac 0x342ad0, win 0xef160;
    virtual void addToGroup(int) = mac 0x33ad00, win 0xeb8d0;
    virtual void removeFromGroup(int) = mac 0x33ada0, win 0xeb930;
    virtual void spawnXPosition() = mac 0xdc1b0, win 0x98990;
    virtual void getObjectRectDirty() const = mac 0xdc1d0, win 0x989a0;
    virtual void setObjectRectDirty(bool) = mac 0xdc1e0, win 0x989b0;
    virtual void getOrientedRectDirty() const = mac 0xdc1f0, win 0x989c0;
    virtual void setOrientedRectDirty(bool) = mac 0xdc200, win 0x989d0;
    virtual GameObjectType getType() const = mac 0xdc210, win 0x989e0;
    virtual void setType(GameObjectType) = mac 0xdc220, win 0x989f0;
    virtual cocos2d::CCPoint const& getStartPos() const = mac 0xdc230, win 0x98a00;
    void activatedByPlayer(GameObject*) = mac 0x342a20;
    void addColorSprite() = mac 0x2f7fe0, win 0xd0670;
    void addColorSpriteToParent(bool) = mac 0x2fb470, win 0xeb3f0;
    void addGlow() = mac 0x2f5c10;
    void addToTempOffset(float, float) = mac 0x335700;
    void calculateOrientedBox() = mac 0x342b20, win 0xef1a0;
    void canChangeCustomColor() = mac 0x342db0;
    void colorForMode(int, bool) = mac 0x343460;
    void commonSetup() = mac 0x2f5570, win 0xcfac0;
    void copyGroups(GameObject*) = mac 0x33ae30, win 0xeb9d0;
    static GameObject* createWithFrame(const char*) = mac 0x2f5490, win 0xcf8f0;
    static GameObject* createWithKey(int) = mac 0x2f4ce0, win 0xcf4f0;
    void destroyObject() = mac 0x336a00;
    void determineSlopeDirection() = mac 0x33a9e0, win 0xeb670;
    void getActiveColorForMode(int, bool) = mac 0x343860, win 0xefb10;
    void getBallFrame(int) = mac 0x341bf0;
    cocos2d::CCPoint getBoxOffset() = mac 0x3353d0, win 0xef350;
    const cocos2d::_ccColor3B& getColorIndex() = mac 0x343b90;
    void getDidUpdateLastPosition() = mac 0x343a20;
    void getLastPosition() = mac 0x3439d0;
    void getMainColorMode() = mac 0x334c30;
    void getObjectZOrder() = mac 0x337d70;
    // inlined on windows
    float getObjectRadius() {
        float radius = m_objectRadius;
        if (m_scale != 1.0f)
            radius *= m_scale;
        return radius;
    }
    void getSecondaryColorMode() = mac 0x341c20;
    void getSectionIdx() = mac 0x343a00;
    void groupWasDisabled() = mac 0x33b110;
    void groupWasEnabled() = mac 0x33b0f0;
    void hasBeenActivated() = mac 0x342a80;
    void hasBeenActivatedByPlayer(GameObject*) = mac 0x342a50;
    void hasSecondaryColor() = mac 0x342f80;
    void ignoreEnter() = mac 0x3352a0;
    void ignoreFade() = mac 0x335290;
    void isBasicTrigger() = mac 0x343d10;
    void isColorTrigger() = mac 0x343b40;
    void isSpawnableTrigger() = mac 0x343a60, win 0xeff20;
    void isSpecialObject() = mac 0x343c40;
    void loadGroupsFromString(gd::string str) = mac 0x33b380, win 0xebcb0;
    static GameObject* objectFromString(gd::string, bool) = mac 0x33b720, win 0xebe50;
    void playShineEffect() = mac 0x2fa9d0, win 0xeab20;
    void quickUpdatePosition() = mac 0x335790;
    void removeGlow() = mac 0x2f7f70;
    void resetGroupDisabled() = mac 0x2fa7e0;
    void saveActiveColors() = mac 0x33d250, win 0xee3e0;
    void selectObject(cocos2d::ccColor3B) = mac 0x341f90, win 0xee960;
    void setDefaultMainColorMode(int) = mac 0x304fc0;
    void setDidUpdateLastPosition(bool const&) = mac 0x343a30;
    void setGlowOpacity(unsigned char) = mac 0x336200;
    void setLastPosition(cocos2d::CCPoint const&) = mac 0x3439e0;
    void setMainColorMode(int) = mac 0x342e70;
    void setSectionIdx(int const&) = mac 0x343a10;
    void setupCoinArt() = mac 0x337dd0, win 0xe7050;
    void slopeFloorTop() = mac 0x342800;
    void slopeWallLeft() = mac 0x3427e0;
    void updateCustomScale(float) = mac 0x335eb0, win 0xe5340;
    void updateMainColor() = mac 0x343340;
    void updateObjectEditorColor() = mac 0x3423c0, win 0xeee50;
    void updateOrientedBox() = mac 0x342b50, win 0xef1c0;
    void updateSecondaryColor() = mac 0x343740;
    void updateStartPos() = mac 0x2fa590, win 0xd13f0;
    void updateState() = mac 0x3369e0;
    void updateSyncedAnimation(float) = mac 0x337f00, win 0xe7320;
    void updateTextObject(gd::string, bool) = mac 0x2f58d0, win 0xcfc60;
    void deselectObject() = mac 0x3423a0, win 0xeee50;
    cocos2d::CCRepeatForever* createRotateAction(float f, int n) = win 0xe49b0;
    void setMyAction(cocos2d::CCAction* pAction) = win 0xd1b90;
    bool canAllowMultiActivate() = win 0xf06b0;
    void createGroupContainer(int size) = mac 0x33aca0, win 0xeb870;

    bool m_unk3;
    bool m_isBlueMaybe;
    float m_unk2;
    float m_unk;
    float m_unk3f;
    float m_unk4;
    bool m_unkidk;
    float m_animSpeed2;
    bool m_isEffectObject;
    bool m_randomisedAnimStart;
    float m_animSpeed;
    bool m_blackChild;
    bool m_unkOutlineMaybe;
    float m_blackChildOpacity;
    bool field_21C;
    bool m_editor;
    bool m_groupDisabled;
    bool m_colourOnTop;
    //GJSpriteColor* m_mainColourMode;
    //GJSpriteColor* m_secondaryColourMode;
    //bool m_col1;
    //bool m_col2;
    int m_baseColorID; //0x27c on macos
    int m_detailColorID;
    bool m_baseColorHSVModified;
    bool m_detailColorHSVModified;
    cocos2d::CCPoint m_startPosOffset;
    float m_rotateOffset;
    bool m_tintTrigger;
    bool m_isFlippedX;
    bool m_isFlippedY;
    cocos2d::CCPoint m_boxOffset;
    bool m_isOriented;
    cocos2d::CCPoint m_boxOffset2;
    OBB2D* m_objectOBB2D;
    bool m_oriented;
    cocos2d::CCSprite* m_glowSprite;
    bool m_notEditor;
    cocos2d::CCAction* m_myAction;
    bool m_unk1;
    bool m_runActionWithTag;
    bool m_objectPoweredOn;
    cocos2d::CCSize m_objectSize;
    bool m_modifier;
    // bool unknown2e5; m_active is 0x2e5 on macos
    bool m_active;
    bool m_animationFinished;
    cocos2d::CCParticleSystemQuad* m_particleSystem;
    gd::string m_effectPlistName;
    bool m_particleAdded;
    bool m_hasParticles;
    bool m_unkCustomRing;
    cocos2d::CCPoint m_portalPosition;
    bool m_unkParticleSystem;
    cocos2d::CCRect m_objectTextureRect;
    bool m_textureRectDirty;
    float m_rectXCenterMaybe;
    cocos2d::CCRect m_objectRect2;
    bool m_isObjectRectDirty;
    bool m_isOrientedRectDirty;
    bool m_hasBeenActivated;
    bool m_hasBeenActivatedP2;
    bool m_hasDetailColor;
    bool m_isPulseStick;
    int m_linkedGroup;
    bool m_isSaw;
    int m_customRotateSpeed;
    bool m_sawIsDisabled;
    bool m_unknownVisibility345;
    bool m_unknown346;
    bool m_unknownVisibility347;
    cocos2d::CCSprite* m_baseSprite;
    cocos2d::CCSprite* m_detailSprite;
    PAD = mac 0x4, win 0x4;
    float m_objectRadius;
    bool m_isRotatedSide;
    float m_unk2F4;
    float m_unk2F8;
    int m_uniqueID;
    GameObjectType m_objectType;
    int m_section;
    bool m_touchTriggered;
    bool m_spawnTriggered;
    cocos2d::CCPoint m_startPosition;
    gd::string m_textureName;
    bool m_useAudioScale;
    bool m_sleeping;
    float m_rotation;
    cocos2d::CCSize m_obStartScale;
    bool m_startFlipX;
    bool m_startFlipY;
    bool m_shouldHide;
    float m_spawnXPosition;
    bool m_invisible;
    float m_enterAngle;
    int m_activeEnterEffect;
    int m_parentMode;
    bool m_isGlowDisabled;
    int m_targetColorID;
    float m_scale;
    int m_objectID;
    int m_unknown3c8;
    bool m_unk368;
    bool m_unk369;
    bool m_unk36A;
    bool m_isDontEnter;
    bool m_isDontFade;
    int m_defaultZOrder;
    bool m_useSecondSheet;
    bool m_isPortal;
    bool m_lockColourAsChild;
    bool m_customAudioScale;
    int m_minAudioScale;
    int m_maxAudioScale;
    bool m_unkParticleSystem2;
    int m_secretCoinID;
    int m_unkUnusedSaveStringKey53;
    bool m_invisibleMode;
    bool m_glowUserBackgroundColour;
    bool m_useSpecialLight;
    bool m_orbOrPad;
    float m_glowOpacityMod;
    bool m_upSlope;
    int m_slopeType;
    float m_slopeAngle;
    bool m_hazardousSlope;
    float m_realOpacity;
    GJSpriteColor* m_baseColor;
    GJSpriteColor* m_detailColor;
    int m_unknown420;                                                                                                                                                                                                               
    ZLayer m_defaultZLayer;
    ZLayer m_zLayer;
    int m_gameZOrder;
    gd::string m_textObjectString;
    bool m_showGamemodeBorders;
    bool m_unk3D9;
    bool m_isSelected;
    int m_globalClickCounter;
    PAD = mac 0x8, win 0x8;
    bool m_shouldUpdateColorSprite;
    float m_multiScaleMultiplier;
    bool m_isGroupParent;
    std::array<short, 10>* m_groups;
    short m_groupCount;
    std::array<short, 10>* m_pulseGroups;
    short m_pulseGroupCount; // mac 0x470
    std::array<short, 10>* m_alphaGroups;
    short m_alphaGroupCount; // mac 0x480
    int m_editorLayer;
    int m_editorLayer2;
    int m_unk414;
    PAD = mac 0xc, win 0xc;
    cocos2d::CCPoint m_firstPosition;
    PAD = mac 0x15, win 0x15;
    bool m_isTriggerable;
    PAD = mac 0x6, win 0x6;
    bool m_highDetail;
    ColorActionSprite* m_colorActionSpriteBase;
    ColorActionSprite* m_colorActionSpriteDetail;
    GJEffectManager* m_effectManager;
    PAD = mac 0xc, win 0xc;
    bool m_orbMultiActivate;
}

class GameObjectCopy : cocos2d::CCObject {
    virtual ~GameObjectCopy() = mac 0xa3290;
    static GameObjectCopy* create(GameObject*) = mac 0x975a0, win 0x16c020;
    void resetObject() = mac 0x976a0;
}

class GameRateDelegate {}

class GameSoundManager : cocos2d::CCNode {
    void disableMetering() = mac 0x362d80, win 0x257D0;
    void enableMetering() = mac 0x362d00, win 0x256F0;
    void getMeteringValue() = mac 0x362db0, win 0x258f0;
    void playBackgroundMusic(gd::string, bool, bool) = mac 0x362070, win 0x252B0;
    void playEffect(gd::string, float, float, float) = mac 0x3623d0, win 0x25450;
    void stopBackgroundMusic() = mac 0x362130, win 0x253A0;
    void asynchronousSetup() = win 0x25520;
    ~GameSoundManager() = mac 0x362c00, win 0x25640;
    static GameSoundManager* sharedManager() = mac 0x3610f0, win 0x24800;

    cocos2d::CCDictionary* m_dictionary1;
    cocos2d::CCDictionary* m_dictionary2;
    PAD = win 0xc;
    bool m_preloaded;
    PAD = win 0x4;
    gd::string m_filePath;
}

class GameStatsManager : cocos2d::CCNode {
    void awardCurrencyForLevel(GJGameLevel*) = mac 0x43600;
    void awardDiamondsForLevel(GJGameLevel*) = mac 0x43c60;
    void awardSecretKey() = mac 0x4b1e0;
    int getAwardedCurrencyForLevel(GJGameLevel*) = win 0xf83e0;
    int getBaseCurrencyForLevel(GJGameLevel*) = win 0xf8530;
    const char* getCoinKey(int) = win 0xbda50;
    GJChallengeItem* getChallenge(int id) = win 0xa2fb0;
    void getSecretCoinKey(char const*) = mac 0x429f0;
    int getStat(char const*) = mac 0x3d310, win 0xf3580;
    void hasPendingUserCoin(char const*) = mac 0x42730, win 0xf7c50;
    void hasSecretCoin(char const*) = mac 0x40730, win 0xf7dc0;
    void hasUserCoin(char const*) = mac 0x427e0, win 0xf7ae0;
    void incrementChallenge(GJChallengeType type, int count) = win 0xf9ae0;
    void incrementStat(char const*) = mac 0x3d6d0;
    void incrementStat(char const*, int) = mac 0x3d6e0, win 0xf3460;
    static GameStatsManager* sharedState() = mac 0x38f20, win 0xf1e50;
    void storePendingUserCoin(char const*) = mac 0x42940;
    void storeSecretCoin(char const*) = mac 0x42a10;
    void storeUserCoin(char const*) = mac 0x42890;

    PAD = win 0x28;
    cocos2d::CCDictionary* m_dailyChests;
    cocos2d::CCDictionary* m_worldAdvertChests;
    cocos2d::CCDictionary* m_activeChallenges;
    cocos2d::CCDictionary* m_upcomingChallenges;
    PAD = win 0xc;
    cocos2d::CCDictionary* m_playerStats;
    PAD = win 0x10;
    cocos2d::CCDictionary* m_completedLevels;
    cocos2d::CCDictionary* m_verifiedUserCoins;
    cocos2d::CCDictionary* m_pendingUserCoins;
    cocos2d::CCDictionary* m_purchasedItems;
    cocos2d::CCDictionary* m_onlineCurrencyScores;
    cocos2d::CCDictionary* m_mainCurrencyScores;
    cocos2d::CCDictionary* m_gauntletCurrencyScores;
    cocos2d::CCDictionary* m_timelyCurrencyScores;
    cocos2d::CCDictionary* m_onlineStars;
    cocos2d::CCDictionary* m_timelyStars;
    cocos2d::CCDictionary* m_gauntletDiamondScores;
    cocos2d::CCDictionary* m_timelyDiamondScores;
    cocos2d::CCDictionary* m_unusedCurrencyAwardDict;
    cocos2d::CCDictionary* m_challengeDiamonds;
    cocos2d::CCDictionary* m_completedMappacks;
    cocos2d::CCDictionary* m_weeklyChest;
    cocos2d::CCDictionary* m_treasureRoomChests;
    geode::SeedValueSRV m_bonusKey;
    cocos2d::CCDictionary* m_miscChests;
}

class GameToolbox {
    static gd::string stringFromHSV(cocos2d::ccHSVValue hsv) = mac 0x28cf90;
    static cocos2d::ccHSVValue hsvFromString(gd::string str) = mac 0x28cc30;
    static cocos2d::CCDictionary* stringSetupToDict(gd::string text, char const* delimeter) = mac 0x28d700, win 0x272a0;
    static CCMenuItemToggler* createToggleButton(gd::string text, cocos2d::SEL_MenuHandler onToggled, bool isToggled, cocos2d::CCMenu* toggleMenu, cocos2d::CCPoint position, cocos2d::CCNode* callbackTarget, cocos2d::CCNode* labelParent, cocos2d::CCArray* toggleArray) = , win 0x25fe0;
    static CCMenuItemToggler* createToggleButton(gd::string text, cocos2d::SEL_MenuHandler onToggled, bool isToggled, cocos2d::CCMenu* toggleMenu, cocos2d::CCPoint position, cocos2d::CCNode* callbackTarget, cocos2d::CCNode* labelParent, float checkboxScale, float labelSize, float maxWidth, cocos2d::CCPoint labelOffset, const char* unknown, bool anchorHorizontally, int toggleTag, cocos2d::CCArray* toggleArray) = mac 0x28bdd0, win 0x25fe0;
    static void transformColor(cocos2d::ccColor3B* src, cocos2d::ccColor3B* dest, cocos2d::ccHSVValue hsv) = win 0x26a60;
    static void alignItemsHorisontally(cocos2d::CCArray* array, bool idk, cocos2d::CCPoint start, float pad) = win 0x25b20;
    static cocos2d::_ccHSVValue hsvFromString(gd::string, char const*) = mac 0x28cc30, win 0x26da0;
    static gd::map<gd::string, gd::string> stringSetupToMap(gd::string, char const*) = mac 0x28d4c0;
}

class GaragePage : cocos2d::CCLayer, ListButtonBarDelegate {
    static GaragePage* create(IconType type, GJGarageLayer* pGarage, cocos2d::SEL_MenuHandler pSelectCallback) {
        auto pRet = new GaragePage();
    
        if (pRet && pRet->init(type, pGarage, pSelectCallback)) {
            pRet->autorelease();
            return pRet;
        }
    
        CC_SAFE_DELETE(pRet);
        return nullptr;
    }

    void listButtonBarSwitchedPage(ListButtonBar* bar, int idk) = win 0x12bb40;
    inline GaragePage() {}
    bool init(IconType type, GJGarageLayer* pGarage, cocos2d::SEL_MenuHandler pSelectCallback) = mac 0x1bb710, win 0x12af70, ios 0x225d5c;

    GJGarageLayer* m_garage;
    cocos2d::SEL_MenuHandler m_handler;
    cocos2d::CCSprite* m_selectSprite;
    CCMenuItemSpriteExtra* m_unkNode0x12c;
    IconType m_type;
    int m_unknown;
    PAD = win 0x4;
}

class GauntletSelectLayer {
    static GauntletSelectLayer* create() = win 0x105120;
}

class GhostTrailEffect {}

class HSVWidgetPopup : FLAlertLayer {
    ConfigureHSVWidget* m_configureWidget;
    HSVWidgetPopupDelegate* m_delegate;
}

class HSVWidgetPopupDelegate {}

class HardStreak : cocos2d::CCDrawNode {
    // ~HardStreak() = mac 0x5bf00; inlined on windows
    virtual bool init() = mac 0x5c090, win 0x14e430;
    void addPoint(cocos2d::CCPoint) = mac 0x5c950, win 0x14ebc0;
    void clearBehindXPos(float) = mac 0x5cb40;
    static HardStreak* create() = mac 0x5bfd0, win 0x14e390;
    void firstSetup() = mac 0x5c160, win 0x14e490;
    double normalizeAngle(double) = mac 0x5cbe0;
    cocos2d::CCPoint quadCornerOffset(cocos2d::CCPoint, cocos2d::CCPoint, float) = mac 0x5c990;
    void reset() = mac 0x5c930;
    void resumeStroke() = mac 0x5c210;
    void stopStroke() = mac 0x5c8f0, win 0x14e460;
    void updateStroke(float) = mac 0x5c240, win 0x14e530;

    cocos2d::CCArray* m_pointsArr;
    cocos2d::CCPoint m_currentPoint;
    float m_waveSize;
    float m_pulseSize;
    bool m_isSolid;
}

class InfoAlertButton {
    bool init(gd::string const& title, gd::string const& text, float scale) = win 0x14ef50;
    void activate() = win 0x14f050;
    inline InfoAlertButton() {}
    static InfoAlertButton* create(gd::string const& title, gd::string const& text, float scale) = win 0x14ed20;
}

class InfoLayer : FLAlertLayer, LevelCommentDelegate, CommentUploadDelegate, FLAlertLayerProtocol {
    bool init(GJGameLevel* level, GJUserScore* score) = win 0x14f5a0;
    void setupCommentsBrowser(cocos2d::CCArray* comments) = win 0x152270;
    void onMore(cocos2d::CCObject* sender) = win 0x151500;
    void onLevelInfo(cocos2d::CCObject* sender) = win 0x151850;
    void loadPage(int page) = win 0x151e70;
    static InfoLayer* create(GJGameLevel* level, GJUserScore* score) = win 0x14f4f0;

    GJGameLevel* m_level;
    GJUserScore* m_score;
    gd::string m_commentKey;
    LoadingCircle* m_loadingCircle;
    cocos2d::CCLabelBMFont* m_pageLabel;
    cocos2d::CCLabelBMFont* m_commentsGoldLabel;
    GJCommentListLayer* m_list;
    CCMenuItemSpriteExtra* m_leftArrow;
    CCMenuItemSpriteExtra* m_rightArrow;
    CCMenuItemSpriteExtra* m_likeBtn;
    CCMenuItemSpriteExtra* m_timeBtn;
    CCMenuItemSpriteExtra* m_reportBtn;
    CCMenuItemSpriteExtra* m_commentsBtn;
    CCMenuItemSpriteExtra* m_refreshCommentsBtn;
    int m_itemCount;
    int m_pageStartIdx;
    int m_pageEndIdx;
    int m_page;
    bool m_canUpdateUserScore;
    bool m_commentHistory;
}

class InheritanceNode : cocos2d::CCObject {}

class KeybindingsLayer : FLAlertLayer {
    void onClose(cocos2d::CCObject* sender) = win 0x49c60;
    void onPrevPage(cocos2d::CCObject* sender) = win 0x153cd0;
    void onNextPage(cocos2d::CCObject* sender) = win 0x153cc0;
    void goToPage(int page) = win 0x153ce0;

    int m_currentPage;
    int m_itemCount;
    int m_pageCount;
    cocos2d::CCDictionary* m_pages;
    cocos2d::CCDictionary* m_unused;
    cocos2d::CCNode* m_leftArrow;
    cocos2d::CCNode* m_rightArrow;
}

class LabelGameObject : GameObject {
    virtual bool init() = mac 0x2f5520, win 0x25b7c0;
    void setObjectColor(cocos2d::_ccColor3B const&) = mac 0xdbca0;
}

class LeaderboardManagerDelegate {}

class LeaderboardsLayer : cocos2d::CCLayer {
    static LeaderboardsLayer* create(LeaderboardState state) = win 0x158710;
    bool init(LeaderboardState state) = win 0x1587b0;
}

class LevelBrowserLayer : cocos2d::CCLayer {
    static cocos2d::CCScene* scene(GJSearchObject* search) {
        auto scene = cocos2d::CCScene::create();
        scene->addChild(LevelBrowserLayer::create(search));

        AppDelegate::get()->m_runningScene = scene;
        return scene;
    }

    bool init(GJSearchObject* search) = mac 0x2513f0, win 0x15a040;
    void loadPage(GJSearchObject* search) = win 0x15b160;
    void setupLevelBrowser(cocos2d::CCArray* levels) = win 0x15bb40;
    void updateLevelsLabel() = win 0x15c350;
    static LevelBrowserLayer* create(GJSearchObject* search) = mac 0x251210, win 0x159fa0, ios 0x2d0a00;

    PAD = win 0x18;
    GJListLayer* m_list;
    CCMenuItemSpriteExtra* m_leftArrow;
    CCMenuItemSpriteExtra* m_rightArrow;
    PAD = win 0x10;
    GJSearchObject* m_searchObject;
    PAD = win 0x14;
    int m_itemCount;
    int m_pageStartIdx;
    int m_pageEndIdx;
}

class LevelCell : TableViewCell {
    CCMenuItemSpriteExtra* m_button;
    GJGameLevel* m_level;
    bool m_cellDrawn;

    void onViewProfile(cocos2d::CCObject*) = win 0x5c790;
    void loadCustomLevelCell() = mac 0x1183b0, win 0x5a020;
    void updateBGColor(unsigned int index) = win 0x5c6b0;
}

class LevelCommentDelegate {
    virtual void loadCommentsFinished(cocos2d::CCArray*, char const*)  {}
    virtual void loadCommentsFailed(char const*)  {}
    virtual void updateUserScoreFinished()  {}
    virtual void setupPageInfo(gd::string, char const*)  {}
}

class LevelDeleteDelegate {
    virtual void levelDeleteFinished(int) {}
    virtual void levelDeleteFailed(int) {}
}

class LevelDownloadDelegate {
    virtual void levelDownloadFinished(GJGameLevel*) {}
    virtual void levelDownloadFailed(int) {}
}

class LevelEditorLayer : GJBaseGameLayer, LevelSettingsDelegate {
    static LevelEditorLayer* get() {
        return GameManager::sharedState()->m_levelEditorLayer;
    }
    static cocos2d::CCScene* scene(GJGameLevel* level) {
        auto scene = cocos2d::CCScene::create();
        scene->addChild(LevelEditorLayer::create(level));
        scene->setObjType(cocos2d::CCObjectType::LevelEditorLayer);

        AppDelegate::get()->m_runningScene = scene;
        return scene;
    }

    inline LevelEditorLayer() {}

    ~LevelEditorLayer() = mac 0x90a00, win 0x15e8d0;
    virtual void update(float) = mac 0xa1b70, win 0x16a660;
    virtual void draw() = mac 0xa2a70, win 0x16b7c0;
    virtual void updateColor(cocos2d::_ccColor3B, float, int, bool, float, cocos2d::_ccHSVValue, int, bool, int, EffectGameObject*) = mac 0x9c200, win 0x1664a0;
    virtual void flipGravity(PlayerObject*, bool, bool) = mac 0xa04e0, win 0x1691d0;
    virtual void calculateColorValues(EffectGameObject*, EffectGameObject*, int, float, ColorActionSprite*, GJEffectManager*) = mac 0x9c590, win 0x166f90;
    virtual void addToGroup(GameObject*, int, bool) = mac 0x9dab0, win 0x167310;
    virtual void removeFromGroup(GameObject*, int) = mac 0x9db60, win 0x1673a0;
    virtual void timeForXPos(float) = mac 0x9c7d0, win 0x167210;
    virtual void xPosForTime(float) = mac 0x9c800, win 0x167250;
    virtual void levelSettingsUpdated() = mac 0x93f30, win 0x1606c0;
    static LevelEditorLayer* create(GJGameLevel* level) = mac 0x90fb0, win 0x15ed60, ios 0x261628;
    void activateTriggerEffect(EffectGameObject*, float, float, float) = mac 0x9b520, win 0x165ec0;
    GameObject* addObjectFromString(gd::string) = mac 0x94640, win 0x160c80;
    void addSpecial(GameObject*) = mac 0x94f30, win 0x162650;
    void addToRedoList(UndoObject*) = mac 0x96f80;
    void addToUndoList(UndoObject*, bool) = mac 0x94e20, win 0x162410;
    void animateInDualGround(GameObject*, float, bool) = mac 0xa2780, win 0x16b4b0;
    void assignNewStickyGroups(cocos2d::CCArray*) = mac 0x99fa0, win 0x1649f0;
    bool checkCollisions(PlayerObject*, float) = mac 0x9e620, win 0x167F10;
    void createBackground() = mac 0x929f0, win 0x160510;
    void createGroundLayer() = mac 0x92840, win 0x160260;
    GameObject* createObject(int, cocos2d::CCPoint, bool) = mac 0x957c0, win 0x160d70;
    void createObjectsFromSetup(gd::string) = mac 0x92230, win 0x160720;
    cocos2d::CCArray* createObjectsFromString(gd::string, bool) = mac 0x94730, win 0x160980;
    void getLastObjectX() = mac 0x9c860, win 0x167290;
    gd::string getLevelString() = mac 0x97790, win 0x162480;
    void getNextColorChannel() = mac 0x9a610;
    void getNextFreeBlockID(cocos2d::CCArray*) = mac 0x9a4e0;
    int getNextFreeGroupID(cocos2d::CCArray*) = mac 0x9a1b0, win 0x164ae0;
    void getNextFreeItemID(cocos2d::CCArray*) = mac 0x9a390;
    void getObjectRect(GameObject*, bool) = mac 0x96240, win 0x1616b0;
    void getRelativeOffset(GameObject*) = mac 0x96840;
    bool hasAction(bool) = mac 0x96ff0;
    void handleAction(bool, cocos2d::CCArray*) = mac 0x97020, win 0x162010;
    bool init(GJGameLevel*) = mac 0x91010, win 0x15EE00;
    void objectAtPosition(cocos2d::CCPoint) = mac 0x960c0, win 0x161300;
    void objectMoved(GameObject*) = mac 0x999f0, win 0x162d40;
    void objectsInRect(cocos2d::CCRect, bool) = mac 0x95e60, win 0x161ad0;
    void onPlaytest() = mac 0xa06b0, win 0x1695A0;
    void onResumePlaytest() = mac 0xa15e0, win 0x169D90;
    void onPausePlaytest() = mac 0xa1570, win 0x169CC0;
    void onStopPlaytest() = mac 0xa1780, win 0x169F10;
    void pasteAttributeState(GameObject* obj, cocos2d::CCArray* objs) = win 0x16b740;
    void playMusic() = mac 0xa13c0, win 0x169b00;
    void recreateGroups() = mac 0x9dbf0, win 0x167450;
    void redoLastAction() = mac 0x97750;
    void removeAllObjects() = mac 0x93d80, win 0x161d60;
    void removeAllObjectsOfType(int) = mac 0x96d40;
    void removeObject(GameObject*, bool) = mac 0x96890, win 0x161cb0;
    void removeSpecial(GameObject*) = mac 0x969c0, win 0x162ff0;
    void resetMovingObjects() = mac 0x9ddc0, win 0x167690;
    void resetObjectVector() = mac 0x9c4b0;
    void resetToggledGroups() = mac 0x9aa70;
    void resetToggledGroupsAndObjects() = mac 0x9c3c0, win 0x166b80;
    void resetUnusedColorChannels() = mac 0x9a870;
    void rotationForSlopeNearObject(GameObject*) = mac 0x95cd0, win 0x161130;
    void runColorEffect(EffectGameObject*, int, float, float, bool) = mac 0x9bd30;
    void setupLevelStart(LevelSettingsObject*) = mac 0xa0ca0, win 0x16a1d0;
    void sortStickyGroups() = mac 0x92b10;
    void stopTriggersInGroup(int, float) = mac 0x9c030;
    void toggleDualMode(GameObject*, bool, PlayerObject*, bool) = mac 0xa0200, win 0x16b170;
    void toggleGroupPreview(int, bool) = mac 0x9bea0, win 0x166950;
    void transferDefaultColors(GJEffectManager*, GJEffectManager*) = mac 0x9ab50, win 0x165570;
    void undoLastAction() = mac 0x97770;
    void updateBGAndGColors() = mac 0x9b9b0, win 0x166d10;
    void updateBlendValues() = mac 0x9bc60, win 0x166c10;
    void updateDualGround(PlayerObject*, int, bool) = mac 0xa1a60, win 0x16b390;
    void updateEditorMode() = mac 0x93b50, win 0x1652b0;
    void updateGameObjectsNew() = mac 0x9adc0, win 0x1659a0;
    void updateGround(float) = mac 0x93a60;
    void updateGroundWidth() {
        m_groundLayer->updateGroundWidth();
        if (m_previewMode) {
            this->updateLevelColors();
        }
    }
    void updateLevelFont(int) = mac 0x9df00, win 0x1677a0;
    void updateLevelColors() {
        // literally empty
    }
    void updateOptions() = mac 0x91ed0, win 0x15fcc0;
    void updateToggledGroups() = mac 0x9bb10;
    void updateVisibility(float) = mac 0x92c70, win 0x1632b0;

    void groupStickyObjects(cocos2d::CCArray* objects) = mac 0x99dd0, win 0x164860;
    void ungroupStickyObjects(cocos2d::CCArray* objects) = mac 0x99ee0, win 0x164950;

    void setStartPosObject(StartPosObject* obj) {
        CC_SAFE_RETAIN(obj);
        CC_SAFE_RELEASE(m_currentStartPos);
        m_currentStartPos = obj;
    }

     bool m_ignoreDamage;
    bool m_followPlayer;
    bool m_drawTriggerBoxes;
    bool m_debugDraw;
    bool m_gridEnabled;
    bool m_hideGridOnPlay;
    bool m_effectLines;
    bool m_showGround;
    bool m_durationLines;
    bool m_moreUndo;
    bool m_hideBackground;
    bool m_smoothFixInEditor; // not entirely sure. used in onPlaytest
    bool m_highDetail;
    cocos2d::CCArray* m_touchTriggeredGroups;
    cocos2d::CCArray* m_triggeredGroups;
    cocos2d::CCDictionary* m_stickyGroups;
    int m_stickyGroupID;
    cocos2d::CCArray* m_unkObjectArr;
    cocos2d::CCArray* m_pulseTriggers;
    cocos2d::CCArray* m_colourObjects;
    cocos2d::CCArray* m_alphaTriggers;
    cocos2d::CCArray* m_spawnTriggers;
    cocos2d::CCArray* m_moveTriggers;
    cocos2d::CCDictionary* m_unkDict5;
    cocos2d::CCArray* m_enabledGroups;
    GameObject* m_copyStateObject;
    cocos2d::CCDictionary* m_unkDict6;
    cocos2d::CCArray* m_unkArray12;
    bool field_14;
    bool field_31D;
    geode::SeedValueRSV m_coinCount;
    bool m_moveTrigger;
    bool m_colorTrigger;
    bool m_pulseTrigger;
    bool m_alphaTrigger;
    bool m_spawnTrigger;
    cocos2d::CCArray* m_toggleTriggersMaybe;
    bool m_unkArr2Obj;
    cocos2d::CCArray* m_delayedSpawnArray2;
    bool m_delaySpawnNode;
    cocos2d::CCDictionary* m_unkDict3;
    cocos2d::CCDictionary* m_unkDict4;
    bool m_editorInitialising;
    bool field_34D;
    float m_timeMod;
    int m_currentLayer;
    StartPosObject* m_currentStartPos;
    float m_prevObjLayerScale;
    OBB2D* m_OBB2D;
    cocos2d::CCSprite* m_crossSprite;
    cocos2d::CCPoint m_unkPoint2;
    float m_unkFloat1;
    bool m_isDualMode;
    bool m_unkRectBool;
    GameObject* m_currentPortal;
    GameObject* m_portal;
    EditorUI* m_editorUI; // 0x5d8 on macos!! 
    cocos2d::CCSprite* m_backgroundLayer;
    cocos2d::CCArray* m_undoObjects;
    cocos2d::CCArray* m_redoObjects;
    cocos2d::CCPoint m_unkPoint1;
    geode::SeedValueRSV m_objectCount;
    DrawGridLayer* m_drawGridLayer;
    GJGameLevel* m_level;
    PlaybackMode m_playbackMode;
    cocos2d::CCPoint m_groundTopMaybe;
    float m_time;
    cocos2d::CCDictionary* m_enabledGroupsDict;
    bool m_3d;
    bool m_previewMode;
    GJGroundLayer* m_groundLayer;
    std::string m_rawLevelString;
    void* m_triggerHitbox; // why are these std vector bruh
    std::vector<GameObject*> m_objectVector;
    std::vector<GameObject*> m_groupVector;
    std::vector<cocos2d::CCArray*> m_nestedObjects;
    cocos2d::CCDictionary* m_triggerGroupsDict;
    std::vector<cocos2d::CCArray*> m_triggerGroupsVector;
    bool m_toggleGroupsMaybe;
    std::vector<bool> m_unkVector3; // everything set to false in playback mode
    std::vector<bool> m_disabledGroupVector;
    std::vector<bool> m_blendObjectsVector;
    std::vector<bool> m_blendColorVector;
    std::vector<uint8_t> m_toggledGroupsVector;
    std::vector<float> m_previewGroupsVector;
    double m_unkDouble1;
    cocos2d::CCArray* m_delayedSpawnArray1;
    bool m_removingObjects;
}

class LevelInfoLayer : cocos2d::CCLayer, LevelDownloadDelegate, LevelUpdateDelegate, RateLevelDelegate, LikeItemDelegate, FLAlertLayerProtocol, LevelDeleteDelegate, NumberInputDelegate, SetIDPopupDelegate {
    static LevelInfoLayer* create(GJGameLevel* level) = mac 0x15f290, win 0x175d50;
    bool init(GJGameLevel* level) = win 0x175df0, mac 0x15f520;
    void onGarage(cocos2d::CCObject* sender) = win 0x177c10;
    void onViewProfile(cocos2d::CCObject* sender) = win 0x17ac90;
    void onLevelInfo(cocos2d::CCObject* sender) = win 0x17acf0;
    void setupProgressBars() = win 0x177fc0;

    PAD = win 0x4;
    cocos2d::CCMenu* m_playBtnMenu;
    GJGameLevel* m_level;
    cocos2d::CCArray* m_unknown;
    CCMenuItemSpriteExtra* m_likeBtn;
    CCMenuItemSpriteExtra* m_starRateBtn;
    CCMenuItemSpriteExtra* m_demonRateBtn;
    PAD = win 0x4;
    CCMenuItemToggler* m_toggler;
    cocos2d::CCLabelBMFont* m_label0;
    cocos2d::CCLabelBMFont* m_label1;
    cocos2d::CCLabelBMFont* m_label2;
    cocos2d::CCLabelBMFont* m_label3;
    cocos2d::CCLabelBMFont* m_label4;
    cocos2d::CCLabelBMFont* m_label5;
    CCMenuItemSpriteExtra* m_cloneBtn;
    PAD = win 0x4;
}

class LevelLeaderboard : FLAlertLayer {
    void onChangeType(cocos2d::CCObject* sender) = win 0x17d090;
    void onGarage(cocos2d::CCObject* sender) = win 0x17d1b0;
    bool init(GJGameLevel* level, int type) = win 0x17c4f0;
    static LevelLeaderboard* create(GJGameLevel* level, LevelLeaderboardType leaderboardType) = win 0x17c440;
}

class LevelManagerDelegate {}

class LevelPage {
    PAD = win 0x124;
    GJGameLevel* m_level;
}

class LevelSearchLayer : cocos2d::CCLayer {
    static LevelSearchLayer* create() = win 0x17d9c0;
    bool init() = mac 0x384770, win 0x17da60;
    GJSearchObject* getSearchObject(SearchType, gd::string) = mac 0x388a50, win 0x1805f0;
    void onMoreOptions(cocos2d::CCObject*) = win 0x17f500;
    void onSearch(cocos2d::CCObject*) = win 0x180fc0;

    PAD = mac 0x18, win 0xC;
    CCTextInputNode* m_searchInput;

}

class LevelSelectLayer : cocos2d::CCLayer {
    static LevelSelectLayer* create(int lvl) = win 0x185500;

    PAD = win 0x10;
    BoomScrollLayer* m_scrollLayer;
}

class LevelSettingsDelegate {
    virtual void levelSettingsUpdated() {}
}

class SelectArtDelegate {
    virtual void selectArtClosed(SelectArtLayer*) {}
}

class CustomSongLayerDelegate {
    virtual void customSongLayerClosed() {}
}

class LevelSettingsLayer : FLAlertLayer, ColorSelectDelegate, SelectArtDelegate, FLAlertLayerProtocol, CustomSongLayerDelegate {
    static LevelSettingsLayer* create(LevelSettingsObject* levelSettings, LevelEditorLayer* editor) = win 0x170d90;
    bool init(LevelSettingsObject* levelSettings, LevelEditorLayer* editor) = mac 0xa7e00, win 0x170e50;
    PAD = mac 0x50;
    LevelSettingsObject* m_settingsObject;
}

class LevelSettingsObject : cocos2d::CCNode {
    virtual ~LevelSettingsObject() = mac 0xa5650, win 0x16e800;
    virtual bool init() = mac 0xa5690, win 0x16e940;
    static LevelSettingsObject* create() = mac 0x92760, win 0x16e8a0;
    static LevelSettingsObject* objectFromDict(cocos2d::CCDictionary*) = mac 0xa5810, win 0x16f4d0;
    static LevelSettingsObject* objectFromString(gd::string) = mac 0x945a0, win 0x16f440;
    void setupColorsFromLegacyMode(cocos2d::CCDictionary*) = mac 0xa6a30, win 0x170050;

    static LevelSettingsObject* get() {
        auto baseLayer = GJBaseGameLayer::get();
        if (baseLayer) return baseLayer->m_levelSettings;
        return nullptr;
    }

    gd::string getSaveString() = mac 0x979c0, win 0x16ebf0;

    GJEffectManager* m_effectManager;
    // TODO: make enums for these
    int m_startMode;
    int m_startSpeed;
    bool m_startMini;
    bool m_startDual;
    bool m_twoPlayerMode;
    float m_songOffset;
    bool m_fadeIn;
    bool m_fadeOut;
    int m_backgroundIndex;
    int m_groundIndex;
    int m_fontIndex;
    bool m_startsWithStartPos;
    bool m_isFlipped;
    GJGameLevel* m_level;
    gd::string m_guidelineString;
    int m_unknown;
    int m_colorPage;
    int m_groundLineIndex;
}

class LevelUploadDelegate {}

class LevelUpdateDelegate {
    virtual void levelUpdateFinished(GJGameLevel*, UpdateResponse) {}
    virtual void levelUpdateFailed(int) {}
}

class LikeItemDelegate {
    virtual void likedItem(LikeItemType, int, bool) {}
}

class LikeItemLayer : FLAlertLayer {
    LikeItemType m_itemType;
    int m_itemID;
    int m_commentSourceID;
    LikeItemDelegate* m_likeDelegate;

    static LikeItemLayer* create(LikeItemType type, int itemID, int commentSourceID) = mac 0x35f760;
    bool init(LikeItemType type, int itemID, int commentSourceID) = mac 0x35f900;
}

class ListButtonBar : cocos2d::CCNode {
    BoomScrollLayer* m_scrollLayer;
}

class ListButtonBarDelegate {}

class LoadingCircle : cocos2d::CCLayerColor {
    void setParentLayer(cocos2d::CCLayer* layer) {
        m_parentLayer = layer;
    }
    void setFade(bool fade) {
        m_fade = fade;
    }

    static LoadingCircle* create() = mac 0x277d50, win 0x2a0d0;
    void show() = mac 0x277fd0, win 0x2a290;
    void fadeAndRemove() = mac 0x2780d0, win 0x2a370;

    cocos2d::CCSprite* m_sprite;
    cocos2d::CCLayer* m_parentLayer;
    bool m_fade;
}

class LoadingLayer : cocos2d::CCLayer {
    void setFromRefresh(bool value) {
        m_fromRefresh = value;
    }

    LoadingLayer() {}
    static LoadingLayer* create(bool fromReload) = mac 0x1df1f0, win 0x18bfe0, ios 0x130278;
    bool init(bool fromReload) = mac 0x1df2f0, win 0x18c080;
    const char* getLoadingString() = win 0x18cf40;
    void loadAssets() = mac 0x1dfb20, win 0x18c8e0, ios 0x130278;
    void loadingFinished() = win 0x18c790;

    static cocos2d::CCScene* scene(bool fromReload) {
        auto scene = cocos2d::CCScene::create();
        scene->addChild(LoadingLayer::create(fromReload));

        return scene;
    }

    bool m_unknown;
    bool m_unknown2;
    int m_loadStep;
    cocos2d::CCLabelBMFont* m_caption;
    TextArea* m_textArea;
    cocos2d::CCSprite* m_sliderBar;
    float m_sliderGrooveXPos;
    float m_sliderGrooveHeight;
    bool m_fromRefresh;
}

class LocalLevelManager : cocos2d::CCNode {
    static LocalLevelManager* sharedState() = mac 0x35dd60, win 0x18d260;
    inline static LocalLevelManager* get() {
        return LocalLevelManager::sharedState();
    }

    PAD = mac 0x10, win 0x1C;
    cocos2d::CCDictionary* m_loadData;
    cocos2d::CCDictionary* m_levelData;
    cocos2d::CCArray* m_localLevels;
}

class MapPackCell : TableViewCell {
    void updateBGColor(unsigned int index) = win 0x5c6b0;
    void loadFromMapPack(GJMapPack *) = win 0x5cac0;
}

class MenuGameLayer {
    void resetPlayer() = mac 0x28fdc0, win 0x18f4b0;
    void destroyPlayer() = win 0x190100;
    void update(float) = mac 0x28fa70, win 0x18f190;
    virtual bool init() = win 0x18e770;
    void updateColors() = win 0x18edd0;
}

class MenuLayer : cocos2d::CCLayer, FLAlertLayerProtocol, GooglePlayDelegate {
    inline MenuLayer() {}
    virtual ~MenuLayer() = mac 0x1d1230, win 0x190620;
    virtual bool init() = mac 0x1d14b0, win 0x1907b0;
    virtual void keyBackClicked() = mac 0x1d3160, win 0x191f90;
    virtual void keyDown(cocos2d::enumKeyCodes) = mac 0x1d33d0, win 0x1922c0;
    virtual void googlePlaySignedIn() = mac 0x1d2f30, win 0x191b20;
    virtual void FLAlert_Clicked(FLAlertLayer*, bool) = mac 0x1d3190, win 0x192150;
    void onMoreGames(cocos2d::CCObject*) = mac 0x1d2ad0, win 0x1919c0, ios 0x19fbb4;
    void onGarage(cocos2d::CCObject*) = win 0x191dc0;
    void onQuit(cocos2d::CCObject*) = mac 0x1d2b40, win 0x191fa0;
    void onMyProfile(cocos2d::CCObject*) = mac 0x1d2c20, win 0x1e0950;
    void onPlay(cocos2d::CCObject*) = win 0x191b50;
    void onCreator(cocos2d::CCObject*) = win 0x191cd0;
    void onRobTop(cocos2d::CCObject*) = win 0x191940;
    void onNewgrounds(cocos2d::CCObject*) = win 0x191e90;
    void onDaily(cocos2d::CCObject*) = win 0x1916e0;
    void onOptions(cocos2d::CCObject*) = win 0x191c30;
    void onAchievements(cocos2d::CCObject*) = win 0x191af0;
    void onStats(cocos2d::CCObject*) = win 0x191ca0;
    void onFacebook(cocos2d::CCObject*) = win 0x191960;
    void onTwitter(cocos2d::CCObject*) = win 0x191980;
    void onYouTube(cocos2d::CCObject*) = win 0x1919A0;
    static cocos2d::CCScene* scene(bool) = mac 0x1d12d0, win 0x190720, ios 0x19e57c;
    static MenuLayer* node() = win 0x190550;

    cocos2d::CCSprite* m_googlePlaySprite;
    cocos2d::CCSprite* m_viewProfileInfoText;
    cocos2d::CCLabelBMFont* m_playerNameLabel;
    CCMenuItemSpriteExtra* m_profileBtn;
}

class MessageListDelegate {}

class MoreSearchLayer : FLAlertLayer {
    static MoreSearchLayer* create() = win 0x182520;
    bool init() = win 0x1825c0;
}

class MoreOptionsLayer {
    static MoreOptionsLayer* create() = win 0x1de850;
    bool init() = mac 0x43f470, win 0x1DE8F0;
    void addToggle(const char* name, const char* key, const char* info) = mac 0x440430, win 0x1df6b0;
    void onKeybindings(cocos2d::CCObject* sender) = win 0x749d0;
    void onToggle(cocos2d::CCObject* sender) = mac 0x441370;
}

class MoreVideoOptionsLayer : FLAlertLayer {
    static MoreVideoOptionsLayer* create() = mac 0x443c10, win 0x1e24f0;
    virtual bool init() = mac 0x444150, win 0x1e2590;
    void onClose(cocos2d::CCObject*) = mac 0x444aa0;
}

class MultilineBitmapFont : cocos2d::CCSprite {}

class MusicDownloadDelegate {
    virtual void downloadSongFailed(int, GJSongError) {}
    virtual void downloadSongFinished(SongInfoObject*) {}
    virtual void loadSongInfoFailed(int, GJSongError) {}
    virtual void loadSongInfoFinished(SongInfoObject*) {}
    virtual void songStateChanged() {}
}

class MusicDownloadManager : cocos2d::CCNode, PlatformDownloadDelegate {
    void incrementPriorityForSong(int) = mac 0x2ef750;
    static MusicDownloadManager* sharedState() = mac 0x2ee4c0, win 0x1945b0;
    gd::string pathForSong(int id) = mac 0x2f1140, win 0x1960e0;
    cocos2d::CCArray* getDownloadedSongs() = win 0x195640;
    void songStateChanged() = win 0x194d90;

    cocos2d::CCDictionary* m_unknownDict;
    cocos2d::CCArray* m_handlers;
    cocos2d::CCDictionary* m_songsDict;
    int m_priority;
}

class NumberInputDelegate {
    virtual void numberInputClosed(NumberInputLayer*) {}
}

class NumberInputLayer {}

class OBB2D : cocos2d::CCNode {
    void calculateWithCenter(cocos2d::CCPoint, float, float, float) = mac 0x35a9c0, win 0x2bc10;
    static OBB2D* create(cocos2d::CCPoint, float, float, float) = mac 0x35a890, win 0x2ba80;
    cocos2d::CCRect getBoundingRect() = mac 0x35b2b0, win 0x2c140;
    void overlaps(OBB2D*) = mac 0x35b0a0;
    void overlaps1Way(OBB2D*) = mac 0x35b0d0, win 0x2c020;

    cocos2d::CCPoint m_p1_1;
    cocos2d::CCPoint m_p1_2;
    cocos2d::CCPoint m_p1_3;
    cocos2d::CCPoint m_p1_4;
    cocos2d::CCPoint m_p2_1;
    cocos2d::CCPoint m_p2_2;
    cocos2d::CCPoint m_p2_3;
    cocos2d::CCPoint m_p2_4;
    cocos2d::CCPoint m_p3_1;
    cocos2d::CCPoint m_p3_2;
    cocos2d::CCPoint m_p3_3;
    cocos2d::CCPoint m_p3_4;
    double m_rot1;
    double m_rot2;
    cocos2d::CCPoint m_center;
}

class ObjectManager : cocos2d::CCNode {
    static ObjectManager* instance() = win 0x2c2c0;
    void setup() = win 0x2c3b0;
}

class KeysLayer : cocos2d::CCLayer {
    virtual bool init() = win 0x154560;
}

class ObjectToolbox : cocos2d::CCNode {
    cocos2d::CCArray* allKeys() {
        return m_frameToKeyDict->allKeys();
    }
    const char* frameToKey(const char* frame) {
        return static_cast<cocos2d::CCString*>(m_frameToKeyDict->objectForKey(frame))->getCString();
    }
    const char* intKeyToFrame(int key) {
        return static_cast<cocos2d::CCString*>(m_keyToFrameDict->objectForKey(key))->getCString();
    }
    const char* keyToFrame(const char* key) {
        return intKeyToFrame(atoi(key));
    }
    void addObject(int id, const char* frame) {
        m_frameToKeyDict->setObject(cocos2d::CCString::createWithFormat("%i", id), frame);
        m_keyToFrameDict->setObject(cocos2d::CCString::create(frame), id);
    }

    virtual bool init() = mac 0x3b2d80, win 0x198b20;
    static ObjectToolbox* sharedState() = mac 0x3b2bc0, win 0x198a80;
    float gridNodeSizeForKey(int key) = win 0x1dc920;
    const char* perspectiveBlockFrame(int key) = win 0x1dcd00;

    cocos2d::CCDictionary* m_frameToKeyDict;
    cocos2d::CCDictionary* m_keyToFrameDict;
}

class OpacityEffectAction : cocos2d::CCNode {
    static OpacityEffectAction* create(float, float, float, int) = mac 0x1789f0;
    static OpacityEffectAction* createFromString(gd::string) = mac 0x178c10;
    bool init(float, float, float, int) = mac 0x178b00;
    void step(float) = mac 0x178b90;

    float m_time;
    float m_beginOpacity;
    float m_endOpacity;
    bool m_finished;
    float m_elapsed;
    int m_group;
    float m_opacity;
    int m_uuid;
    float m_delta;
}

class OnlineListDelegate {
    virtual void loadListFinished(cocos2d::CCArray*, const char*) {}
    virtual void loadListFailed(const char*) {}
    virtual void setupPageInfo(gd::string, const char*) {}
}

class OptionsLayer : GJDropDownLayer, FLAlertLayerProtocol {
    static OptionsLayer* addToCurrentScene(bool noTransition) {
        auto layer = OptionsLayer::create();
        cocos2d::CCDirector::sharedDirector()->getRunningScene()->addChild(layer);
        layer->showLayer(noTransition);
        return layer;
    }

    static OptionsLayer* create() = mac 0x43db60, win 0x1dd310, ios 0x86314;

    virtual void customSetup() = mac 0x43dc70, win 0x1dd420;
    virtual void layerHidden() = mac 0x43f200, win 0x1de6d0;

    cocos2d::CCMenu* m_optionsMenu;
}

class PauseLayer : CCBlockLayer {
    static PauseLayer* create(bool) = mac 0x20b1e0, win 0x1e4570;
    void onEdit(cocos2d::CCObject*) = mac 0x20c630, win 0x1e60e0;
    void goEdit() = mac 0x20cc10, win 0x1e62f0;

    void onQuit(cocos2d::CCObject*) = mac 0x20c790, win 0x1e63d0;
    void createToggleButton(gd::string caption, cocos2d::SEL_MenuHandler callback, bool on, cocos2d::CCMenu* menu, cocos2d::CCPoint pos) = mac 0x20c890, win 0x1e5570;
    virtual void customSetup() = mac 0x20b300, win 0x1e4620;

    void onRestart(cocos2d::CCObject* sender) = win 0x1e6040;
    void keyDown(cocos2d::enumKeyCodes) = mac 0x20cc80, win 0x1E6580;
    
    bool m_unknown;
    bool m_unknown2;
}

class PlatformDownloadDelegate {
    virtual void downloadFinished(char const*) {}
    virtual void downloadFailed(char const*) {}
}

class PlatformToolbox {
    static void hideCursor() = mac 0x27c340;
    static void showCursor() = mac 0x27c360;
    static bool isControllerConnected() {
        #ifdef GEODE_IS_WINDOWS
            return cocos2d::CCApplication::sharedApplication()->getControllerConnected();
        #elif defined(GEODE_IS_MACOS)
            // this is just gd.h
            return reinterpret_cast<bool(*)()>(geode::base::get() + 0x27d1b0)();
        #else
            return false;
        #endif
    }
}

class PlayLayer : GJBaseGameLayer, CCCircleWaveDelegate, CurrencyRewardDelegate, DialogDelegate {
    static PlayLayer* get() {
        return GameManager::sharedState()->getPlayLayer();
    }

    PlayLayer() = mac 0x80e20, win 0x1faa90;

    void addCircle(CCCircleWave*) = mac 0x7e0f0;
    void addObject(GameObject*) = mac 0x70e50, win 0x2017e0;
    void addToGroupOld(GameObject*) = mac 0x77680;
    void addToSpeedObjects(GameObject*) = mac 0x7cfc0, win 0x208730;
    void animateInDualGround(GameObject*, float, bool) = mac 0x7d710, win 0x208b10;
    void animateInGround(bool) = mac 0x7d9d0, win 0x209b20;
    void animateOutGround(bool) = mac 0x6f350, win 0x209e60;
    void animateOutGroundFinished() = mac 0x7de80;
    void applyEnterEffect(GameObject*) = mac 0x7c310, win 0x206880;
    virtual void calculateColorValues(EffectGameObject*, EffectGameObject*, int, float, ColorActionSprite*, GJEffectManager*) = mac 0x7aa10, win 0x203940;
    void cameraMoveX(float, float, float) = mac 0x7cbe0;
    void cameraMoveY(float, float, float) = mac 0x7cc60, win 0x207c80;
    void checkCollisions(PlayerObject*, float) = mac 0x78c90, win 0x203CD0;
    void circleWaveWillBeRemoved(CCCircleWave*) = mac 0x7e110, win 0x20aa90;
    void claimParticle(gd::string) = mac 0x76ba0, win 0x200fb0;
    void clearPickedUpItems() = mac 0x7cfa0;
    void colorObject(int, cocos2d::_ccColor3B) = mac 0x77810;
    void commitJumps() = mac 0x737e0;
    static PlayLayer* create(GJGameLevel*) = mac 0x6b590, win 0x1fb6d0;
    CheckpointObject* createCheckpoint() = mac 0x7e470, win 0x20b050;
    void createObjectsFromSetup(gd::string) = mac 0x6d130, win 0x201310;
    void createParticle(int, char const*, int, cocos2d::tCCPositionType) = mac 0x76800;
    void currencyWillExit(CurrencyRewardLayer*) = mac 0x7e070, win 0x20a8d0;
    void delayedResetLevel() = mac 0x7e050;
    void destroyPlayer(PlayerObject*, GameObject*) = mac 0x7ab80, win 0x20a1a0;
    void dialogClosed(DialogLayer*) = mac 0x7e0b0, win 0x20a8f0;
    virtual void draw() = mac 0x7d160, win 0x208870;
    void enterDualMode(GameObject*, bool) = mac 0x7d6a0;
    void exitAirMode() = mac 0x7dd40;
    void exitBirdMode(PlayerObject*) = mac 0x7dd80;
    void exitDartMode(PlayerObject*) = mac 0x7ddd0;
    void exitFlyMode(PlayerObject*) = mac 0x7dcf0;
    void exitRobotMode(PlayerObject*) = mac 0x7de20;
    void exitRollMode(PlayerObject*) = mac 0x7de60;
    void exitSpiderMode(PlayerObject*) = mac 0x7de40;
    void flipFinished() = mac 0x7e150, win 0x20ad10;
    virtual void flipGravity(PlayerObject*, bool, bool) = mac 0x7cd10, win 0x207d30;
    void flipObjects() = mac 0x76130, win 0x2000c0;
    void fullReset() = mac 0x7f8e0, win 0x20bdf0;
    void getLastCheckpoint() = mac 0x7f840, win 0x20b800;
    void getMaxPortalY() = mac 0x7b4e0;
    void getMinPortalY() = mac 0x7b550;
    void getObjectsState() = mac 0x7e9d0, win 0x20b8b0;
    void getOtherPlayer(PlayerObject*) = mac 0x7dcc0;
    void getParticleKey(int, char const*, int, cocos2d::tCCPositionType) = mac 0x764d0;
    void getParticleKey2(gd::string) = mac 0x767b0, win 0x200a30;
    void getRelativeMod(cocos2d::CCPoint, float, float, float) = mac 0x7c2a0;
    void getTempMilliTime() = mac 0x778e0;
    void gravityEffectFinished() = mac 0x7cec0;
    void hasItem(int) = mac 0x7cee0;
    void hasUniqueCoin(GameObject*) = mac 0x77510, win 0x202250;
    void incrementJumps() = mac 0x7ff40;
    bool init(GJGameLevel*) = mac 0x6b5f0, win 0x1fb780;
    void isFlipping() = mac 0x76100;
    void levelComplete() = mac 0x72b80, win 0x1fd3d0;
    void lightningFlash(cocos2d::CCPoint, cocos2d::CCPoint, cocos2d::_ccColor3B, float, float, int, bool, float) = mac 0x75cc0, win 0x1ffe70;
    void lightningFlash(cocos2d::CCPoint, cocos2d::_ccColor3B) = mac 0x75bf0, win 0x1ffd80;
    void loadDefaultColors() = mac 0x6ef30, win 0x206e10;
    void loadFromCheckpoint(CheckpointObject*) = mac 0x7f000, win 0x20b4a0;
    void loadLastCheckpoint() = mac 0x7efc0;
    void loadSavedObjectsState(gd::string) = mac 0x7f3d0;
    void markCheckpoint() = mac 0x7ef60, win 0x20b450;
    void moveCameraToPos(cocos2d::CCPoint) = mac 0x7c980, win 0x207bf0;
    virtual void onEnterTransitionDidFinish() = mac 0x806e0, win 0x20dbd0;
    virtual void onExit() = mac 0x80710, win 0x20D810;
    void onQuit() = mac 0x72710, win 0x20d810;
    void optimizeColorGroups() = mac 0x6dad0, win 0x202370;
    void optimizeOpacityGroups() = mac 0x6dc20, win 0x202530;
    void optimizeSaveRequiredGroups() = mac 0x6dd70, win 0x2026f0;
    void pauseGame(bool) = mac 0x802d0, win 0x20d3c0;
    void pickupItem(GameObject*) = mac 0x7c1d0;
    void playAnimationCommand(int, int) = mac 0x75930, win 0x1ff2f0;
    void playEndAnimationToPos(cocos2d::CCPoint) = mac 0x759a0;
    void playExitDualEffect(PlayerObject*) = mac 0x7d1d0, win 0x208e20;
    void playFlashEffect(float, int, float) = mac 0x75e50;
    void playGravityEffect(bool) = mac 0x7b5a0, win 0x207e00;
    void playSpeedParticle(float) = mac 0x77030, win 0x201130;
    void playerWillSwitchMode(PlayerObject*, GameObject*) = mac 0x7b820, win 0x16b290;
    void prepareSpawnObjects() = mac 0x7fc00, win 0x20c850;
    void processItems() = mac 0x735c0;
    void processLoadedMoveActions() = mac 0x7a7c0;
    void recordAction(bool, PlayerObject*) = mac 0x7e190;
    void registerActiveObject(GameObject*) = mac 0x77620;
    void registerStateObject(GameObject*) = mac 0x777b0;
    void removeAllObjects() = mac 0x727b0, win 0x20da00;
    void removeFromGroupOld(GameObject*) = mac 0x77750;
    void removeLastCheckpoint() = mac 0x7f870, win 0x20b830;
    void removePlayer2() = mac 0x7d630;
    void resetLevel() = mac 0x71c50, win 0x20bf00;
    void resume() = mac 0x80480, win 0x20d5c0;
    void resumeAndRestart() = mac 0x80400, win 0x20d4c0;
    void saveRecordAction(bool, PlayerObject*) = mac 0x78750, win 0x20ad40;

    static cocos2d::CCScene* scene(GJGameLevel* level) {
        auto scene = cocos2d::CCScene::create();
        scene->addChild(PlayLayer::create(level));
        scene->setObjType(cocos2d::CCObjectType::PlayLayer);

        AppDelegate::get()->m_runningScene = scene;
        return scene;
    }

    void setupLevelStart(LevelSettingsObject*) = mac 0x6f560, win 0x1fb780;
    void setupReplay(gd::string) = mac 0x7e1e0;
    void shakeCamera(float, float, float) = mac 0x744a0, win 0x1ff210;
    void shouldBlend(int) = mac 0x771b0;
    void showCompleteEffect() = mac 0x738e0, win 0x1fe060;
    void showCompleteText() = mac 0x73be0, win 0x1fda90;
    void showEndLayer() = mac 0x74450;
    void showHint() = mac 0x7deb0;
    void showNewBest(bool, int, int, bool, bool, bool) = mac 0x74580, win 0x1fe3a0;
    void showRetryLayer() = mac 0x75ba0;
    void showTwoPlayerGuide() = mac 0x6df00, win 0x2003b0;
    void sortGroups() = mac 0x6d9e0, win 0x202890;
    void spawnCircle() = mac 0x73820;
    void spawnFirework() = mac 0x74200;
    void spawnParticle(char const*, int, cocos2d::tCCPositionType, cocos2d::CCPoint) = mac 0x76330;
    void spawnPlayer2() = mac 0x7d170, win 0x2089e0;
    void startGame() = mac 0x726b0;
    void startMusic() = mac 0x72910, win 0x20C8F0;
    void startRecording() = mac 0x7fec0;
    void startRecordingDelayed() = mac 0x7fed0;
    void stopCameraShake() = mac 0x75900, win 0x1ff2d0;
    void stopRecording() = mac 0x6d090;
    void storeCheckpoint(CheckpointObject*) = mac 0x7ef10, win 0x20b420;
    void switchToFlyMode(PlayerObject*, GameObject*, bool, int) = mac 0x7baf0;
    void switchToRobotMode(PlayerObject*, GameObject*, bool) = mac 0x7bc80;
    void switchToRollMode(PlayerObject*, GameObject*, bool) = mac 0x7bbe0;
    void switchToSpiderMode(PlayerObject*, GameObject*, bool) = mac 0x7bd20;
    void timeForXPos(float) = mac 0x7d120, win 0x2087d0;
    void timeForXPos2(float, bool) = mac 0x293eb0, win 0x1fd3d0;
    void toggleBGEffectVisibility(bool) = mac 0x7fe80;
    void toggleDualMode(GameObject*, bool, PlayerObject*, bool) = mac 0x7bf90, win 0x208880;
    void toggleFlipped(bool, bool) = mac 0x7bdc0, win 0x20ab20;
    void toggleGhostEffect(int) = mac 0x7fe40;
    void toggleGlitter(bool) = mac 0x70e00, win 0x20a0d0;
    void togglePracticeMode(bool) = mac 0x7f9e0, win 0x20d0d0;
    void toggleProgressbar() = mac 0x6eeb0, win 0x208160;
    void tryStartRecord() = mac 0x7fe00;
    void unclaimParticle(char const*, cocos2d::CCParticleSystemQuad*) = mac 0x76e00, win 0x200dd0;
    void unregisterActiveObject(GameObject*) = mac 0x77660;
    void unregisterStateObject(GameObject*) = mac 0x777f0;
    virtual void update(float) = mac 0x77900, win 0x2029C0, ios 0xb2f08;
    void updateAttempts() = mac 0x7fcd0, win 0x20ced0;
    void updateCamera(float) = mac 0x6e2b0, win 0x2071d0;
    virtual void updateColor(cocos2d::_ccColor3B, float, int, bool, float, cocos2d::_ccHSVValue, int, bool, int, EffectGameObject*) = mac 0x7c7f0, win 0x207070;
    void updateDualGround(PlayerObject*, int, bool) = mac 0x7caa0, win 0x209680;
    void updateEffectPositions() = mac 0x7a6d0, win 0x20aab0;
    void updateLevelColors() = mac 0x6f1e0, win 0x203a90;
    void updateMoveObjectsLastPosition() = mac 0x7a720;
    void updateProgressbar() = mac 0x6ed70, win 0x69b40;
    void updateReplay(float) = mac 0x78b60, win 0x20af40;
    void updateTimeMod(float, bool) = mac 0x786f0;
    virtual void updateTweenAction(float, char const*) = mac 0x7ffb0, win 0x20d1f0;
    void updateVisibility() = mac 0x6fb90, win 0x205460;
    void vfDChk() = mac 0x7fcb0, win 0x20d3a0;
    virtual void visit() = mac 0x75ef0, win 0x200020;
    void visitWithColorFlash() = mac 0x761f0, win 0x200190;
    void willSwitchToMode(int, PlayerObject*) = mac 0x7b9e0;
    void xPosForTime(float) = mac 0x7d140, win 0x208840;
    ~PlayLayer() = mac 0x6b090, win 0x1fafc0;

    float unused4c8;
    bool unused4cc;
    bool m_hasCheated;
    geode::SeedValueRS m_dontSave;
    int unknown4d8;
    bool m_debugPauseOff;
    bool m_shouldSmoothCamera;
    float unused_4e0;
    PAD = mac 0x4, win 0x4;
    cocos2d::CCDrawNode* unknown4e8;
    float m_camera4f0;
    int unused4f4;
    float m_somegroup4f8;
    float m_groundRestriction;
    float m_ceilRestriction;
    bool m_fullReset;
    bool unknown505;
    float unknown508;
    float unknown50c;
    float unknown510;
    float unknown514;
    float unknown518;
    PAD = mac 0x4, win 0x4;
    StartPosObject* m_startPos;
    CheckpointObject* m_startPosCheckpoint;
    EndPortalObject* m_endPortal;
    cocos2d::CCArray* m_checkpoints;
    cocos2d::CCArray* m_speedObjects;
    cocos2d::CCArray* unk340;
    cocos2d::CCArray* unk344;
    cocos2d::CCSprite* unk348;
    float m_backgroundRepeat;
    bool unk350;
    cocos2d::CCArray* unk354;
    cocos2d::CCArray* unk358;
    cocos2d::CCArray* unk35C;
    cocos2d::CCArray* unk360;
    bool m_isMute;
    bool unk365;
    bool unk366;
    bool unk367;
    bool unk368;
    bool unk369;
    bool unk36A;
    bool unk36B;
    cocos2d::CCArray* m_screenRingObjects;
    cocos2d::CCParticleSystemQuad* m_particleSystem;
    cocos2d::CCDictionary* m_pickedUpItems;
    cocos2d::CCArray* m_circleWaves;
    cocos2d::CCArray* unk37C;
    AudioEffectsLayer* m_audioEffectsLayer;
    float unknown5c0;
    float unknown5c4;
    GJGroundLayer* m_bottomGround;
    GJGroundLayer* m_topGround;
    PAD = mac 0x8, win 0x8;
    bool m_isDead;
    bool m_startCameraAtCorner;
    bool m_cameraYLocked;
    bool m_cameraXLocked;
    bool unknown5e4;
    int m_ballFrameSeed;
    float unknown5ec;
    float m_lockGroundToCamera;
    float unknown5f4;
    float m_levelLength;
    float m_realLevelLength;
    cocos2d::CCLabelBMFont* m_attemptLabel;
    cocos2d::CCLabelBMFont* m_percentLabel;
    bool m_isCameraShaking;
    float m_currentShakeStrength;
    float m_currentShakeInterval;
    double m_lastShakeTime;
    cocos2d::CCPoint m_cameraShakeOffset;
    bool unk3E0;
    float m_backgroundScrollOffset;
    float m_cameraFlip;
    bool unk3EC;
    int unk3F0;
    cocos2d::CCDictionary* m_particleSystemsPlist;
    cocos2d::CCDictionary* unk3F8;
    cocos2d::CCArray* m_particleSystems;
    cocos2d::CCNode* unk400;
    cocos2d::CCSprite* m_sliderGrooveSprite;
    cocos2d::CCSprite* m_sliderBarSprite;
    cocos2d::CCSize m_sliderSize;
    int unknown680;
    int m_activeGravityEffects;
    int m_gravityEffectStatus; // ??
    PAD = mac 0x4, win 0x4;
    cocos2d::CCArray* m_gravitySprites;
    bool unk428;
    bool m_shouldRecordActions;
    bool unk42A;
    bool m_isPaused;
    bool unk42C;
    bool m_isPlayer2Frozen;
    gd::string m_previousRecords;
    void* unknown6a8;
    double m_time;
    int unknown6b8;
    int unknown6bc;
    bool unk460;
    bool m_isAudioMeteringSupported;
    cocos2d::CCDictionary* unk464;
    gd::map<short, bool> unk468;
    bool m_collisionDisabled;
    bool unknown701;
    GameObject* m_latestVehicle;
    GameObject* m_dualObject;
    bool m_isFlipped;
    float m_mirrorTransition;
    UILayer* m_UILayer;
    GJGameLevel* m_level;
    cocos2d::CCPoint m_cameraPosition;
    bool m_isTestMode;
    bool m_isPracticeMode;
    bool unk496;
    bool unk497;
    cocos2d::CCArray* unk498;
    bool unk49C;
    cocos2d::CCPoint m_playerStartPosition;
    int m_currentAttempt;
    int m_jumpCount;
    bool unk4B0;
    float m_totalTime;
    int m_attemptJumpCount;
    bool unk4BC;
    bool m_hasLevelCompleteMenu;
    bool m_hasCompletedLevel;
    bool m_delayedResetLevel;
    int m_lastDeathPercent;
    bool unk4C4;
    PAD = mac 0xb, win 0xb;
    bool unk4D0;
    bool unk4D1;
    cocos2d::CCArray* unk4D4;
    cocos2d::CCDictionary* unk4D8;
    double m_inlineCalculatedKickTime;
    double m_accumulatedKickDeltaTime;
    double m_unusedKickDouble;
    bool m_shouldTryToKick;
    float m_kickCheckDeltaSnapshot;
    int m_accumulatedKickCounter;
    PAD = mac 0x4, win 0x4;
    double unk508;
    PAD = mac 0x8, win 0x8;
    double unk518;
    double unk520;
    PAD = mac 0x4, win 0x4;
    bool m_hasGlitter;
    bool m_isBgEffectOff;
    bool unk52F;
    GameObject* m_antiCheatObject;
    bool m_antiCheatPassed;
    bool unk535;
    bool m_disableGravityEffect;
}

class PlayerCheckpoint : cocos2d::CCNode {
    // virtual ~PlayerCheckpoint() = mac 0x80760; inlined on windows
    static PlayerCheckpoint* create() = mac 0x7e8c0, win 0x20dc40;

    cocos2d::CCPoint m_position;
    float m_yAccel;
    bool m_isUpsideDown;
    bool m_isShip;
    bool m_isBall;
    bool m_isUFO;
    bool m_isWave;
    bool m_isRobot;
    bool m_isSpider;
    bool m_isOnGround;
    int m_hasGhostTrail;
    bool m_small;
    float m_speed;
    bool m_hidden;
}

class PlayerObject : GameObject, AnimatedSpriteDelegate {
    virtual ~PlayerObject() = mac 0x217220, win 0x1e6be0;
    virtual void update(float) = mac 0x218bf0, win 0x1e8200;
    virtual void setScaleX(float) = mac 0x22e7f0, win 0x1fa7a0;
    virtual void setScaleY(float) = mac 0x22e830, win 0x1fa7e0;
    virtual void setScale(float) = mac 0x22e870, win 0x1fa820;
    virtual void setPosition(cocos2d::CCPoint const&) = mac 0x22c8b0, win 0x1f7370;
    virtual void setVisible(bool) = mac 0x22e8b0, win 0x1fa860;
    virtual void setRotation(float) = mac 0x22e6e0, win 0x1fa650;
    virtual void setOpacity(unsigned char) = mac 0x22d400, win 0x1f7d40;
    virtual void setColor(cocos2d::_ccColor3B const&) = mac 0x22cdf0, win 0x1f77f0;
    virtual void setFlipX(bool) = mac 0x22e720, win 0x1fa690;
    virtual void setFlipY(bool) = mac 0x22e7b0, win 0x1fa740;
    virtual void resetObject() = mac 0x223170, win 0x1eecd0;
    virtual cocos2d::CCPoint getRealPosition() = mac 0x22d5f0, win 0x1f7e20;
    virtual void getOrientedBox() = mac 0x22dee0, win 0x1f95d0;
    virtual void animationFinished(char const*) = mac 0x22e9d0, win 0x1fa8a0;
    void activateStreak() = mac 0x21aef0, win 0x1f9080;
    void addAllParticles() = mac 0x2189b0, win 0x1e7d60;
    void addToTouchedRings(GameObject*) = mac 0x22b800;
    void boostPlayer(float) = mac 0x21d6b0, win 0x1f8f30;
    void bumpPlayer(float, int) = mac 0x22d890;
    void buttonDown(PlayerButton) = mac 0x22b7e0;
    void checkSnapJumpToObject(GameObject*) = mac 0x2217f0;
    bool collidedWithObject(float, GameObject*) = mac 0x21d880;
    bool collidedWithObject(float, GameObject*, cocos2d::CCRect) = mac 0x21f0b0;
    bool collidedWithSlope(float, GameObject*, bool) = mac 0x21d8d0;
    void convertToClosestRotation(float) = mac 0x21c860, win 0x1e9ac0;
    void copyAttributes(PlayerObject*) = mac 0x22dc70, win 0x1f93f0;
    static PlayerObject* create(int, int, cocos2d::CCLayer*) = mac 0x217260, win 0x1e6cf0;
    void deactivateParticle() = mac 0x21a540;
    void deactivateStreak(bool) = mac 0x218b30;
    void fadeOutStreak2(float) = mac 0x225890, win 0x1f9110;
    void flashPlayer(float, float, cocos2d::_ccColor3B, cocos2d::_ccColor3B) = mac 0x221c80;
    void flipGravity(bool, bool) = mac 0x21c090, win 0x1f59d0;
    void flipMod() = mac 0x21a4c0;
    void getActiveMode() = mac 0x22b950, win 0x1f5df0;
    void getModifiedSlopeYVel() = mac 0x21bff0, win 0x1ea870;
    void getOldPosition(float) = mac 0x21a830;
    void getSecondColor() = mac 0x22cee0;
    void gravityDown() = mac 0x22e930;
    void gravityUp() = mac 0x22e900;
    void hardFlipGravity() = mac 0x22b860;
    void hitGround(bool) = mac 0x220a30;
    void incrementJumps() = mac 0x21c050, win 0x1e9a20;
    bool init(int, int, cocos2d::CCLayer*) = mac 0x2172e0, win 0x1e6da0;
    void isBoostValid(float) = mac 0x21d650, win 0x1ea810;
    void isFlying() = mac 0x21a4e0, win 0x1f5dc0;
    void isSafeFlip(float) = mac 0x2209f0;
    void isSafeMode(float) = mac 0x2209b0;
    void isSafeSpiderFlip(float) = mac 0x221be0;
    void levelFlipFinished() = mac 0x21b060, win 0x1e8e70;
    void levelFlipping() = mac 0x21a510, win 0x1f6820;
    void levelWillFlip() = mac 0x21b020;
    void loadFromCheckpoint(PlayerCheckpoint*) = mac 0x22e420, win 0x1fa080;
    void lockPlayer() = mac 0x22d680;
    void logValues() = mac 0x221220;
    void modeDidChange() = mac 0x22bfd0;
    void placeStreakPoint() = mac 0x21af90, win 0x1f95e0;
    void playBurstEffect() = mac 0x21c780, win 0x1f6790;
    void playDeathEffect() = mac 0x225930, win 0x2efbe0;
    void playDynamicSpiderRun() = mac 0x222ec0, win 0x1f9d80;
    void playerDestroyed(bool) = mac 0x2256d0, win 0x1efaa0;
    bool playerIsFalling() = mac 0x21c730, win 0x1f5d60;
    void playerTeleported() = mac 0x22b840;
    void playingEndEffect() = mac 0x22d7e0;
    void postCollision(float) = mac 0x21cd10, win 0x1e9f50;
    void preCollision() = mac 0x21ccc0;
    void preSlopeCollision(float, GameObject*) = mac 0x21ec80;
    void propellPlayer(float) = mac 0x22d8e0, win 0x1f8b50;
    void pushButton(int) = mac 0x22aa00, win 0x1f4e40;
    void pushDown() = mac 0x22dbd0;
    void pushPlayer(float) = mac 0x22dbb0;
    void releaseButton(int) = mac 0x22b6f0, win 0x1f4f70;
    void removeAllParticles() = mac 0x218ac0;
    void removePendingCheckpoint() = mac 0x2237b0, win 0x1fa260;
    void resetAllParticles() = mac 0x21adb0, win 0x1e8ef0;
    void resetCollisionLog() = mac 0x21cc20;
    void resetPlayerIcon() = mac 0x22be00, win 0x1f65e0;
    void resetStateVariables() = mac 0x223760;
    void resetStreak() = mac 0x21ae10, win 0x1e8d50;
    void ringJump(GameObject*) = mac 0x22abf0, win 0x1f4ff0;
    void runBallRotation(float) = mac 0x21ca10, win 0x1e9d10;
    void runBallRotation2() = mac 0x21cb10;
    void runNormalRotation() = mac 0x21c960, win 0x1e9c50;
    void runRotateAction(bool) = mac 0x21c570, win 0x1e9bf0;
    void saveToCheckpoint(PlayerCheckpoint*) = mac 0x22e2f0, win 0x1f9ee0;
    void setSecondColor(cocos2d::_ccColor3B const&) = mac 0x219610, win 0x1f7870;
    void setupStreak() = mac 0x218720, win 0x1e7e90;
    void spawnCircle() = mac 0x225480;
    void spawnCircle2() = mac 0x2252a0;
    void spawnDualCircle() = mac 0x2255c0;
    void spawnFromPlayer(PlayerObject*) = mac 0x22dde0, win 0x1f9540;
    void spawnPortalCircle(cocos2d::_ccColor3B, float) = mac 0x225350, win 0x1ef680;
    void spawnScaleCircle() = mac 0x2251b0, win 0x1ef810;
    void specialGroundHit() = mac 0x22dbf0;
    void speedDown() = mac 0x22e970;
    void speedUp() = mac 0x22e950;
    void spiderTestJump(bool) = mac 0x21b160, win 0x1ed360;
    void startDashing(GameObject*) = mac 0x221d70;
    void stopBurstEffect() = mac 0x22c680, win 0x1f6810;
    void stopDashing() = mac 0x222990, win 0x1ee6e0;
    void stopRotation(bool) = mac 0x21c830, win 0x1e9aa0;
    void storeCollision(bool, int) = mac 0x21cc60;
    void switchedToMode(GameObjectType) = mac 0x22b9a0, win 0x1f6f70;
    void testForMoving(float, GameObject*) = mac 0x21eb70;
    void toggleBirdMode(bool) = mac 0x224070, win 0x1f6050;
    void toggleDartMode(bool) = mac 0x2243f0, win 0x1f62c0;
    void toggleFlyMode(bool) = mac 0x223820, win 0x1f5e40;
    void toggleGhostEffect(GhostType) = mac 0x225000, win 0x1f8930;
    void togglePlayerScale(bool) = mac 0x224bd0, win 0x1f9640;
    void toggleRobotMode(bool) = mac 0x223c70, win 0x1f6a10;
    void toggleRollMode(bool) = mac 0x223b20, win 0x1f68e0;
    void toggleSpiderMode(bool) = mac 0x224830, win 0x1f94d1;
    void toggleVisibility(bool) = mac 0x21abf0, win 0x1e8c30;
    void touchedObject(GameObject*) = mac 0x22e660;
    void tryPlaceCheckpoint() = mac 0x21a950, win 0x1fa2d0;
    void updateCheckpointMode(bool) = mac 0x218980;
    void updateCheckpointTest() = mac 0x21a890, win 0x1e8b50;
    void updateCollide(bool, int) = mac 0x220f10;
    void updateCollideBottom(float, int) = mac 0x221790;
    void updateCollideTop(float, int) = mac 0x221c20;
    void updateDashAnimation() = mac 0x21a570;
    void updateDashArt() = mac 0x222520, win 0x1ee3c0;
    void updateGlowColor() = mac 0x22cf10;
    void updateJump(float) = mac 0x219680, win 0x1e8f80;
    void updateJumpVariables() = mac 0x21a740;
    void updatePlayerBirdFrame(int) = mac 0x22bfe0, win 0x1f81a0;
    void updatePlayerDartFrame(int) = mac 0x22c260, win 0x1f8580;
    void updatePlayerFrame(int) = mac 0x22c470, win 0x1f7e40;
    void updatePlayerGlow() = mac 0x22bc50, win 0x1f9290;
    void updatePlayerRobotFrame(int) = mac 0x22d620, win 0x1f8550;
    void updatePlayerRollFrame(int) = mac 0x22c6a0, win 0x1f83a0;
    void updatePlayerScale() = mac 0x22b8b0, win 0x1f9200;
    void updatePlayerShipFrame(int) = mac 0x22ba40, win 0x1f7ff0;
    void updatePlayerSpiderFrame(int) = mac 0x22d650;
    void updatePlayerSpriteExtra(gd::string) = mac 0x218440, win 0x1f8730;
    void updateRobotAnimationSpeed() = mac 0x22df40, win 0x1f9b80;
    void updateRotation(float) = mac 0x2214b0, win 0x1ebc00;
    void updateRotation(float, float) = mac 0x221230, win 0x1ebce0;
    void updateShipRotation(float) = mac 0x221310, win 0x1eba60;
    void updateShipSpriteExtra(gd::string) = mac 0x218510, win 0x1f8830;
    void updateSlopeRotation(float) = mac 0x221030;
    void updateSlopeYVelocity(float) = mac 0x22e920;
    void updateSpecial(float) = mac 0x21a790, win 0x1e8ab0;
    void updateStateVariables() = mac 0x21a770;
    void updateTimeMod(float) = mac 0x2185e0, win 0x1f94e0;
    void usingWallLimitedMode() = mac 0x22df00;
    void yStartDown() = mac 0x22e9b0;
    void yStartUp() = mac 0x22e990;
    void runRotateAction() = win 0x1e9bf0;
    void runBallRotation() = win 0x1e9d10;

    PAD = mac 0x14, win 0x14;
    bool m_unk480;
    cocos2d::CCNode* m_unk484;
    cocos2d::CCDictionary* m_collisionLog;
    cocos2d::CCDictionary* m_collisionLog1;
    PAD = mac 0x38, win 0x20;
    bool m_unk4B0;
    cocos2d::CCSprite* m_unk4B4;
    PAD = mac 0x1c, win 0x1c;
    bool m_unk4D4;
    cocos2d::CCArray* m_particleSystems;
    bool m_unk4DC;
    bool m_isHidden;
    int m_hasGhostTrail;
    GhostTrailEffect* m_ghostTrail;
    cocos2d::CCSprite* m_unknownSprite;
    cocos2d::CCSprite* m_iconSprite;
    cocos2d::CCSprite* m_iconSpriteSecondary;
    cocos2d::CCSprite* m_iconSpriteWhitener;
    cocos2d::CCSprite* m_iconGlow;
    cocos2d::CCSprite* m_vehicleSprite;
    cocos2d::CCSprite* m_vehicleSpriteSecondary;
    cocos2d::CCSprite* m_unk500;
    cocos2d::CCSprite* m_vehicleSpriteWhitener;
    cocos2d::CCSprite* m_vehicleGlow;
    cocos2d::CCMotionStreak* m_regularTrail;
    HardStreak* m_waveTrail;
    double m_xAccel;
    double m_jumpAccel;
    double m_gravity;
    double m_unknown20;
    bool m_unk538;
    bool m_unk539;
    bool m_unk53A;
    bool m_unk53B;
    bool m_isInPlayLayer;
    bool m_unk53D;
    bool m_unk53E;
    bool m_unk53F;
    PAD = mac 0x10, win 0x10;
    double m_lastJumpTime;
    double m_unk558;
    PAD = mac 0x24, win 0x24;
    float m_decelerationRate;
    PAD = mac 0x14, win 0x14;
    GameObject* m_lastCollidedSolid;
    PAD = mac 0x10, win 0x8;
    GJRobotSprite* m_robotSprite;
    GJSpiderSprite* m_spiderSprite;
    bool m_unk5B0;
    cocos2d::CCParticleSystemQuad* m_unk5B4;
    cocos2d::CCParticleSystemQuad* m_unk5B8;
    cocos2d::CCParticleSystemQuad* m_unk5BC;
    cocos2d::CCParticleSystemQuad* m_unk5C0;
    cocos2d::CCParticleSystemQuad* m_unk5C4;
    cocos2d::CCParticleSystemQuad* m_unk5C8;
    cocos2d::CCParticleSystemQuad* m_unk5CC;
    PAD = mac 0x8, win 0x4;
    cocos2d::CCParticleSystemQuad* m_unk5D4;
    cocos2d::CCParticleSystemQuad* m_unk5D8;
    PAD = mac 0x20, win 0x20;
    // int m_streakID;
    // float m_wellIdk;
    // PAD = win 0x10;
    bool m_unk5FC;
    bool m_unk5FD;
    bool m_unk5FE;
    PAD = mac 0x11, win 0x11;
    bool m_unk610;
    bool m_isHolding;
    bool m_hasJustHeld;
    bool m_isHolding2;
    bool m_hasJustHeld2;
    int m_unk618;
    float m_unk61C;
    int m_unk620;
    bool m_canRobotJump;
    double m_yAccel;
    bool m_unk630;
    bool m_unk631;
    float m_unk634;
    bool m_isShip;
    bool m_isBird;
    bool m_isBall;
    bool m_isDart;
    bool m_isRobot;
    bool m_isSpider;
    bool m_isUpsideDown;
    bool m_isOnGround;
    bool m_isDashing;
    float m_vehicleSize;
    float m_playerSpeed;
    cocos2d::CCPoint m_unk64C;
    cocos2d::CCPoint m_lastPortalPos;
    cocos2d::CCLayer* m_unk65C;
    bool m_isSliding;
    bool m_isRising;
    bool m_isLocked;
    cocos2d::CCPoint m_lastGroundedPos;
    cocos2d::CCArray* m_touchingRings;
    GameObject* m_lastActivatedPortal;
    bool m_unk674;
    bool m_unk675;
    cocos2d::ccColor3B m_playerColor1;
    cocos2d::ccColor3B m_playerColor2;
    cocos2d::CCPoint m_position;
    bool m_unk684;
    bool m_unk685;
    double m_unk688;
    PAD = win 0x8;
    float m_groundHeight;
    float m_unk69C;
    PAD = win 0x4;
    std::array<float, 200> m_unk6A4;
    PAD = win 0x1c;
}

class PointNode : cocos2d::CCObject {
    static PointNode* create(cocos2d::CCPoint point) = win 0x14ec80;

    cocos2d::CCPoint m_point;
}

class ProfilePage : FLAlertLayer, FLAlertLayerProtocol, LevelCommentDelegate, CommentUploadDelegate, UserInfoDelegate, UploadActionDelegate, UploadPopupDelegate, LeaderboardManagerDelegate {
    static ProfilePage* create(int accountID, bool idk) = mac 0x45eed0, win 0x20ee50;
    void getUserInfoFailed(int) = win 0x2133e0;
    bool init(int accountID, bool idk) = mac 0x45f170, win 0x20ef00;
    void onMyLevels(cocos2d::CCObject*) = win 0x211bb0;
    void onUpdate(cocos2d::CCObject*) = win 0x20fa20;
    void loadPageFromUserInfo(GJUserScore* score) = win 0x210040;

    GJUserScore* m_score;
    int m_accountID;
    PAD = win 0x38, android 0x24;
    cocos2d::CCArray* m_buttons;
}

class PulseEffectAction : cocos2d::CCNode {
    static PulseEffectAction* createFromString(gd::string) = mac 0x179e90, win 0x1198a0;
    gd::string getSaveString() = mac 0x17a850, win 0x119e70;
}

class RateLevelDelegate {
    virtual void rateLevelClosed() {}
}

class RateStarsLayer : FLAlertLayer, UploadPopupDelegate, UploadActionDelegate {
    bool m_uploadFinished;
    bool m_isModSuggest;
    bool m_selectedFeature;
    CCMenuItemSpriteExtra* m_confirmBtn;
    cocos2d::CCArray* m_starBtns;
    cocos2d::CCSprite* m_difficultySprite;
    int m_levelID;
    int m_selectedRating;
    bool m_selectedCoin;
    cocos2d::CCSprite* m_featureSprite;
    UploadActionPopup* m_rateAction;
    RateLevelDelegate* m_rateDelegate;

    static RateStarsLayer* create(int levelID, bool isModSuggest) = mac 0x135e50;
    bool init(int levelID, bool isModSuggest) = mac 0x136050;
}

class RetryLevelLayer {
    static RetryLevelLayer* create() = mac 0x28dd60, win 0x216390;
}

class RingObject : EffectGameObject {
    bool create(char const*) = win 0x252220;
    bool init(char const*) = win 0x2522E0;
    void spawnCircle() = win 0x2523A0;
    virtual void setRotation(float) = win 0x252640;
    virtual void setScale(float) = win 0x252580;
    virtual void resetObject() = win 0x252560;
    virtual void customObjectSetup(gd::map<gd::string, gd::string>&) = win 0x2526A0;
    virtual gd::string getSaveString() = win 0x2527F0;
    virtual void powerOnObject() = win 0x252360;
    virtual void powerOffObject() = win 0xe5d60; // same as GameObject
    virtual void setRScale(float) = win 0x2525D0;
    virtual void triggerActivated(float) = win 0x252350;
}

class ScrollingLayer : cocos2d::CCLayerColor {
    static ScrollingLayer* create(cocos2d::CCSize, cocos2d::CCPoint, float) = mac 0x41a900, win 0x2d8e0;
}

class SelectArtLayer {
    static SelectArtLayer* create(SelectArtType type) = win 0x174b00;
}

class SetGroupIDLayer : FLAlertLayer, TextInputDelegate {
    bool init(GameObject* object, cocos2d::CCArray* objects) = mac 0x1947c0, win 0x22b670; 
    void onNextGroupID1(cocos2d::CCObject*) = mac 0x1967a0, win 0x22d790;
    void textChanged(CCTextInputNode*) = mac 0x197af0, win 0x22d610;
    void updateGroupIDLabel() = mac 0x197260, win 0x22e450;
    ~SetGroupIDLayer() = mac 0x194410, win 0x22b4d0;
    void updateEditorLayerID() = win 0x22e0b0;
    void updateEditorLayerID2() = win 0x22e110;
    void updateZOrder() = win 0x22e3d0;

    GameObject* m_obj;
    cocos2d::CCArray* m_objs;
    cocos2d::CCArray* m_array0;
    cocos2d::CCArray* m_array1;
    cocos2d::CCLabelBMFont* m_editorLayerText;
    cocos2d::CCLabelBMFont* m_editorLayer2Text;
    cocos2d::CCLabelBMFont* m_zOrderText;
    CCTextInputNode* m_groupIDInput;
    int m_groupIDValue;
    int m_editorLayerValue;
    int m_editorLayer2Value;
    int m_zOrderValue;
    ZLayer m_zLayerValue;
    bool m_unk204;
    bool m_unk205;
    bool m_highDetail;
    bool m_dontFade;
    bool m_dontEnter;
    void* m_somePointerProlly;
    bool m_groupParent;
    bool m_hasEditedGroups;
    int m_unknown;
}

class SetIDLayer {
    static SetIDLayer* create(GameObject*) = mac 0x168f20, win 0x22eb90;
}

class SetIDPopup : FLAlertLayer, TextInputDelegate {
    void valueChanged() = win 0x10a60;

    bool init(int, int, int, gd::string, gd::string, bool, int) = win 0x143270;

    static SetIDPopup *create(int, int, int, gd::string, gd::string, bool, int) = win 0x143130;
}

class SetIDPopupDelegate {
    virtual void setIDPopupClosed(SetIDPopup*, int) {}
}

class SetItemIDLayer {
    static SetItemIDLayer* create(EffectGameObject*, cocos2d::CCArray*) = mac 0x5a830;
}

class SetTargetIDLayer {
    static SetTargetIDLayer* create(EffectGameObject*, cocos2d::CCArray*, gd::string) = mac 0x159d20;
    void onTargetIDArrow(cocos2d::CCObject*) = mac 0x15aed0;
    void textChanged(CCTextInputNode*) = mac 0x15b6c0;
    void updateTargetID() = mac 0x15b4a0;
}

class SetupAnimationPopup : FLAlertLayer {
    static SetupAnimationPopup* create(EffectGameObject*, cocos2d::CCArray*) = mac 0x208b70;
    void onTargetIDArrow(cocos2d::CCObject*) = mac 0x209fc0;
    void textChanged(CCTextInputNode*) = mac 0x20ab30;
    void updateTargetID() = mac 0x20a910;
}

class SetupCollisionTriggerPopup : FLAlertLayer {
    static SetupCollisionTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*) = mac 0x1d6120;
    void onTargetIDArrow(cocos2d::CCObject*) = mac 0x1d77b0;
    void textChanged(CCTextInputNode*) = mac 0x1d84d0;
    void updateTargetID() = mac 0x1d82b0;
}

class SetupCountTriggerPopup : FLAlertLayer {
    static SetupCountTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*) = mac 0x15c6c0;
    void onTargetIDArrow(cocos2d::CCObject*) = mac 0x15dd40;
    void textChanged(CCTextInputNode*) = mac 0x15e9a0;
    void updateTargetID() = mac 0x15e8a0;
}

class SetupInstantCountPopup : FLAlertLayer {
    static SetupInstantCountPopup* create(EffectGameObject*, cocos2d::CCArray*) = mac 0x352c10;
    void onTargetIDArrow(cocos2d::CCObject*) = mac 0x354520;
    void textChanged(CCTextInputNode*) = mac 0x355270;
    void updateTargetID() = mac 0x355170;
}

class SetupInteractObjectPopup : FLAlertLayer {
    static SetupInteractObjectPopup* create(EffectGameObject*, cocos2d::CCArray*) = mac 0x29a400;
    void onTargetIDArrow(cocos2d::CCObject*) = mac 0x29bbc0;
    void textChanged(CCTextInputNode*) = mac 0x29c2b0;
    void updateTargetID() = mac 0x29c120;
}

class SetupObjectTogglePopup : FLAlertLayer {
    static SetupObjectTogglePopup* create(EffectGameObject*, cocos2d::CCArray*) = mac 0x1c0860;
    bool init(EffectGameObject*, cocos2d::CCArray*) = mac 0x1c0a40;
    void onTargetIDArrow(cocos2d::CCObject*) = mac 0x1c1c40;
    void textChanged(CCTextInputNode*) = mac 0x1c2660;
    void updateTargetID() = mac 0x1c2440;
}

class SetupOpacityPopup : FLAlertLayer {
    static SetupOpacityPopup* create(EffectGameObject*, cocos2d::CCArray*) = mac 0x32b70, win 0x23ba30;
    void onTargetIDArrow(cocos2d::CCObject*) = mac 0x340a0;
    void textChanged(CCTextInputNode*) = mac 0x34a60;
    void updateTargetID() = mac 0x34760;
}

class SetupPickupTriggerPopup : FLAlertLayer {
    static SetupPickupTriggerPopup* create(EffectGameObject*, cocos2d::CCArray*) = mac 0x35e70, win 0x23d4a0;
    void onItemIDArrow(cocos2d::CCObject*) = mac 0x37100;
    void onNextItemID(cocos2d::CCObject*) = mac 0x37260;
    void textChanged(CCTextInputNode*) = mac 0x37ca0;
    void updateItemID() = mac 0x37ab0, win 0x23e4f0;

    PAD = win 0xc;
    CCTextInputNode* m_countInput;
}

class SetupPulsePopup : FLAlertLayer, cocos2d::extension::ColorPickerDelegate, TextInputDelegate, GJSpecialColorSelectDelegate {
    virtual void colorValueChanged(cocos2d::ccColor3B color) = win 0x242660, mac 0x1ec680;
    SetupPulsePopup() {}

    bool init(EffectGameObject* triggerObj, cocos2d::CCArray* triggerObjs) = win 0x23e980, mac 0x1e7010;
    void updateColorValue() = win 0x2426b0;
    void onSelectPulseMode(cocos2d::CCObject*) = win 0x241420, mac 0x1eb020;
    void updatePulseMode() = win 0x242cf0;


    cocos2d::extension::CCControlColourPicker* m_colorPicker;
    PAD = win 0x30;
    cocos2d::CCSprite* m_currentColorSpr;
    cocos2d::CCSprite* m_prevColorSpr;
    PAD = win 0x64;
    int m_pulseMode;
}

class SetupShakePopup : FLAlertLayer {
    static SetupShakePopup* create(EffectGameObject*, cocos2d::CCArray*) = mac 0x3adc00;
}

class SetupSpawnPopup : FLAlertLayer {
    static SetupSpawnPopup* create(EffectGameObject*, cocos2d::CCArray*) = mac 0x139790;
    void createToggleButton(gd::string, cocos2d::SEL_MenuHandler, bool, cocos2d::CCMenu*, cocos2d::CCPoint, cocos2d::CCArray*) = mac 0x13b0e0;
    void onTargetIDArrow(cocos2d::CCObject*) = mac 0x13ad80;
    void textChanged(CCTextInputNode*) = mac 0x13b990;
    void updateTargetID() = mac 0x13b770;

    EffectGameObject* m_selectedObject;
    cocos2d::CCArray* m_selectedArray;
    CCTextInputNode* m_delayTextNode;
    Slider* m_delaySlider;
    float m_delay;
    bool m_touchTriggered;
    bool m_spawnTriggered;
    CCMenuItemToggler* m_touchTriggeredToggle;
    CCMenuItemToggler* m_spawnTriggeredToggle;
    CCTextInputNode* m_targetIDTextNode;
    int m_targetIDValue;
    bool m_textUpdateLock;
    // the toggle is inside the array for some obscure reason
    cocos2d::CCArray* m_multiTriggerToggle;
    bool m_multiTrigger;
    bool m_editorDisable;
}

class SetupTouchTogglePopup : FLAlertLayer {
    static SetupTouchTogglePopup* create(EffectGameObject*, cocos2d::CCArray*) = mac 0x1576a0;
    void onTargetIDArrow(cocos2d::CCObject*) = mac 0x158b60;
    void textChanged(CCTextInputNode*) = mac 0x1596a0;
    void updateTargetID() = mac 0x159480;
}

class SimplePlayer : cocos2d::CCSprite {
    SimplePlayer() {}
    void setSecondColor(const cocos2d::ccColor3B& color) {
        
        m_secondLayer->setColor(color);
        updateColors();
    }
    bool hasGlowOutline() {
        return m_hasGlowOutline;
    }
    void setGlowOutline(bool value) {
        m_hasGlowOutline = value;
        updateColors();
    }

    bool init(int iconID) = mac 0x1bc570, win 0x12be20;
    static SimplePlayer* create(int iconID) = mac 0x1b6140, win 0x12bd80;
    void updatePlayerFrame(int iconID, IconType iconType) = mac 0x1b62f0, win 0x12c650;
    void updateColors() = mac 0x1ba1f0, win 0x12c440, ios 0x224f2c;
    void setFrames(const char* firstLayer, const char* secondLayer, const char* birdDome, const char* outlineSprite, const char* detailSprite) = win 0x12c9e0;
    void setColor(const cocos2d::ccColor3B& color) = mac 0x1bc9b0, win 0x12c410;
    void setOpacity(unsigned char opacity) = win 0x12cb90;

    cocos2d::CCSprite* m_firstLayer;
    cocos2d::CCSprite* m_secondLayer;
    cocos2d::CCSprite* m_birdDome;
    cocos2d::CCSprite* m_outlineSprite;
    cocos2d::CCSprite* m_detailSprite;
    GJRobotSprite* m_robotSprite;
    GJSpiderSprite* m_spiderSprite;
    PAD = win 0x4;
    bool m_hasGlowOutline;
}

class Slider : cocos2d::CCLayer {
    void setValue(float val) {
        m_touchLogic->getThumb()->setValue(val);
    }
    void setBarVisibility(bool v) {
        m_sliderBar->setVisible(v);
    }
    static Slider* create(cocos2d::CCNode* target, cocos2d::SEL_MenuHandler click, float scale) {
        return create(target, click, "sliderBar.png", "slidergroove.png", "sliderthumb.png", "sliderthumbsel.png", scale);
    }

    float getValue() = mac 0x18e0c0, win 0x2e970;
    void updateBar() = mac 0x18d970, win 0x2ea10;
    static Slider* create(cocos2d::CCNode* target, cocos2d::SEL_MenuHandler click, const char* unused, const char* grooveSpr, const char* thumbSpr, const char* thumbSprSel, float scale) = mac 0x18dd80, win 0x2e6e0, ios 0x2113f4;

    SliderTouchLogic* m_touchLogic;
    cocos2d::CCSprite* m_sliderBar;
    cocos2d::CCSprite* m_groove;
    float m_unknown;
    float m_height;
}

class SliderThumb : cocos2d::CCMenuItemImage {
    void setValue(float val) = mac 0x18ce80, win 0x2e1b0, ios 0x210db4;
    float getValue() {
        return (m_fScaleX * m_length * .5f +
                (m_vertical ?
                    this->getPositionY() : 
                    this->getPositionX())
            ) / (m_fScaleX * m_length);
    }

    float m_length;
    bool m_vertical;
}

class SliderTouchLogic : cocos2d::CCMenu {
    SliderThumb* getThumb() const { return m_thumb; }

    float m_unknownUnused;
    float m_length;
    SliderThumb* m_thumb;
    Slider* m_slider;
    bool m_activateThumb;
    cocos2d::CCPoint m_position;
    bool m_rotated;
}

class SongCell : TableViewCell {
    void updateBGColor(unsigned int index) = win 0x5c6b0;
}

class SongInfoLayer : FLAlertLayer {
    static SongInfoLayer* create(int songID) = win 0x250520;
    static SongInfoLayer* create(gd::string songName, gd::string artistName, gd::string downloadLink, gd::string artistNG, gd::string artistYT, gd::string artistFB) = win 0x250830;

    gd::string m_downloadLink;
    gd::string m_artistNewgrounds;
    gd::string m_artistYoutube;
    gd::string m_artistFacebook;
}

class SongInfoObject : cocos2d::CCNode {
    virtual ~SongInfoObject() = mac 0x2f2040, win 0x196600;
    virtual void encodeWithCoder(DS_Dictionary*) = mac 0x2f2c70, win 0x1975c0;
    virtual bool canEncode() = mac 0x2f2da0, win 0x11070; // shared with tons

    int m_songID;
    gd::string m_songName;
    gd::string m_artistName;
    gd::string m_youtubeVideo;
    gd::string m_youtubeChannel;
    gd::string m_songURL;
    int m_artistID;
    float m_fileSize;
    bool m_isUnknownSong;
    int m_priority;
    LevelSettingsObject* m_levelSettings;
}

class SpawnTriggerAction : cocos2d::CCNode {
    static SpawnTriggerAction* createFromString(gd::string) = mac 0x17bf50;

    bool m_timerEnded;
    float m_delay;
    float m_timer;
    int m_group;
    int m_uuid;
}

class SpeedObject : cocos2d::CCNode {
    float m_unknown;
    float m_somethingToCompare;
    float m_idk3;
    float m_idk4;
}

class SpritePartDelegate {}

class StartPosObject : EffectGameObject {
    static StartPosObject* create() = mac 0xda7c0, win 0x25aa40;
    void setSettings(LevelSettingsObject*) = mac 0xda910;

    LevelSettingsObject* m_levelSettings;
}

class StatsCell : TableViewCell {
    inline StatsCell() {}
    inline StatsCell(char const* identifier, float parentHeight, float height) : TableViewCell(identifier, parentHeight, height) {}
    void updateBGColor(unsigned int index) = win 0x59cf0;
    virtual void draw() = mac 0x11bf80, win 0x59d40;
}

class StatsLayer : GJDropDownLayer {
    static StatsLayer* create() = win 0x25BCF0;
}

class TableView : CCScrollLayerExt, CCScrollLayerExtDelegate {
    inline TableView() {}
    inline TableView(cocos2d::CCRect rect) : CCScrollLayerExt(rect) {}

    static TableView* create(TableViewDelegate*, TableViewDataSource*, cocos2d::CCRect) = mac 0x37eb30, win 0x30ed0;
    void reloadData() = mac 0x37f970, win 0x317e0;

    virtual void onEnter() {
        CCLayer::onEnter();
    }
    virtual void onExit() {
        CCLayer::onExit();
    }
    virtual bool ccTouchBegan(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x380120, ios 0x21de24, win 0x31de0;
    virtual void ccTouchMoved(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x380be0, ios 0x21e5e8, win 0x31f30;
    virtual void ccTouchEnded(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x3809a0, ios 0x21e46c, win 0x31e80;
    virtual void ccTouchCancelled(cocos2d::CCTouch*, cocos2d::CCEvent*) = mac 0x380b20, ios 0x21e580, win 0x31ed0;
    virtual void registerWithTouchDispatcher() = mac 0x37ff50, ios 0x21dcb4, win 0x12aa0;
    virtual void scrollWheel(float, float) = mac 0x380cd0, ios 0x21e6b4, win 0x320a0;
    virtual void scrllViewWillBeginDecelerating(CCScrollLayerExt*) {}
    virtual void scrollViewDidEndDecelerating(CCScrollLayerExt*) {}
    virtual void scrollViewTouchMoving(CCScrollLayerExt*) {}
    virtual void scrollViewDidEndMoving(CCScrollLayerExt*) {}

    bool m_touchOutOfBoundary;
    cocos2d::CCTouch* m_touchStart;
    cocos2d::CCPoint m_touchStartPosition2;
    cocos2d::CCPoint m_unknown2;
    cocos2d::CCPoint m_touchPosition2;
    void* m_idk;
    bool m_touchMoved;
    cocos2d::CCArray* m_cellArray;
    cocos2d::CCArray* m_array2;
    cocos2d::CCArray* m_array3;
    TableViewDelegate* m_tableDelegate;
    TableViewDataSource* m_dataSource;
    int m_unused1;
    int m_unused2;
    void* m_unused3;
    int m_unused4;
    float m_touchLastY;
    bool m_cancellingTouches;
}

[[depends(CCIndexPath)]]
class TableViewCell : cocos2d::CCLayer {
    inline TableViewCell() {}
    inline ~TableViewCell() {
        removeAllChildrenWithCleanup(true);
    }

    inline TableViewCell(const char* p0, float p1, float p2) : m_unknownString(p0), m_width(p1), m_height(p2) {
        m_backgroundLayer = cocos2d::CCLayerColor::create(cocos2d::ccc4(0,0,0,0), m_width, m_height);
        addChild(m_backgroundLayer, -1);
        m_mainLayer = cocos2d::CCLayer::create();
        addChild(m_mainLayer);
        // = mac 0x383de0, win 0x32e70;
    }

    bool m_unknown;
    TableView* m_tableView;
    CCIndexPath m_indexPath;
    int m_unknownThing; // don't even know if this is an int, it's always set to 0
    gd::string m_unknownString;
    float m_width;
    float m_height;
    cocos2d::CCLayerColor* m_backgroundLayer;
    cocos2d::CCLayer* m_mainLayer;
}

class TableViewDataSource {
    virtual int numberOfRowsInSection(unsigned int, TableView*) { return 0; }
    virtual unsigned int numberOfSectionsInTableView(TableView*) { return 0; }
    virtual void TableViewCommitCellEditingStyleForRowAtIndexPath(TableView*, TableViewCellEditingStyle, CCIndexPath&) {}
    virtual TableViewCell* cellForRowAtIndexPath(CCIndexPath&, TableView*) { return nullptr; }
}

class TableViewDelegate {
    virtual void willTweenToIndexPath(CCIndexPath&, TableViewCell*, TableView*) {}
    virtual void didEndTweenToIndexPath(CCIndexPath&, TableView*) {}
    virtual void TableViewWillDisplayCellForRowAtIndexPath(CCIndexPath&, TableViewCell*, TableView*) {}
    virtual void TableViewDidDisplayCellForRowAtIndexPath(CCIndexPath&, TableViewCell*, TableView*) {}
    virtual void TableViewWillReloadCellForRowAtIndexPath(CCIndexPath&, TableViewCell*, TableView*) {}
    virtual float cellHeightForRowAtIndexPath(CCIndexPath&, TableView*) { return 0.0; }
    virtual void didSelectRowAtIndexPath(CCIndexPath&, TableView*) {}
}

class TeleportPortalObject : GameObject {
    PAD = mac 0x8, win 0x4;
    TeleportPortalObject* m_orangePortal;
    bool m_isYellowPortal;
    float m_teleportYOffset;
    bool m_teleportEase;
}

class TextAlertPopup : cocos2d::CCNode {
    static TextAlertPopup* create(gd::string const& text, float time, float scale) = win 0x1450b0;
}

class TextArea : cocos2d::CCSprite {
    // https://www.youtube.com/watch?v=1LVW7IUyKMg
    TextArea() = mac 0x19fba0, win 0x33110, ios 0x92c28;
    inline TextArea(TextArea const&) : m_fontFile() {}
    inline ~TextArea() {}
    virtual void draw() {}
    virtual void setOpacity(unsigned char) = mac 0x19f760, win 0x33800;
    bool init(gd::string str, char const* font, float width, float height, cocos2d::CCPoint anchor, float scale, bool disableColor) = mac 0x19ec70, win 0x33370, ios 0x92444;
    static TextArea* create(gd::string str, char const* font, float scale, float width, cocos2d::CCPoint anchor, float height, bool disableColor) = mac 0x19eb40, win 0x33270;
    void colorAllCharactersTo(cocos2d::ccColor3B color) = win 0x33830;
    void setString(gd::string str) = mac 0x19eda0, win 0x33480;

    bool m_disableColor;            // 0x1e4
    MultilineBitmapFont* m_label;   // 0x1e8
    float m_width;                  // 0x1ec
    int m_unknown;                  // 0x1f0
    gd::string m_fontFile;          // 0x1f4
    float m_height;                 // 0x20c
}

class TextInputDelegate {
    virtual void textChanged(CCTextInputNode*) {}
    virtual void textInputOpened(CCTextInputNode*) {}
    virtual void textInputClosed(CCTextInputNode*) {}
    virtual void textInputShouldOffset(CCTextInputNode*, float) {}
    virtual void textInputReturn(CCTextInputNode*) {}
    virtual bool allowTextInput(CCTextInputNode*) {return true;}
}

class ToggleTriggerAction : cocos2d::CCNode {
    static ToggleTriggerAction* createFromString(gd::string) = mac 0x1765e0;
}

class TopArtistsLayer : FLAlertLayer {
    static TopArtistsLayer* create() = mac 0x192a90, win 0x25d8e0;
    virtual ~TopArtistsLayer() = win 0x25d7c0;
    void setupLeaderboard(cocos2d::CCArray*) = mac 0x193420;
    virtual bool init() = mac 0x192c30, win 0x25d980;
    void loadPage(int) = mac 0x193b60;
    void setupPageInfo(gd::string, char const*) = mac 0x193730;
}

class TouchToggleAction : cocos2d::CCNode {
    static TouchToggleAction* createFromString(gd::string) = mac 0x177e10;
}

class TriggerEffectDelegate {
    virtual void toggleGroupTriggered(int, bool) {}
    virtual void spawnGroup(int) {}
}

class UILayer : cocos2d::CCLayerColor {
    static UILayer* create() = mac 0x27fd10, win 0x25f310;
    virtual bool init() = mac 0x27fe40, win 0x25f3b0;
    void disableMenu() = mac 0x280960;
    void enableMenu() = mac 0x280940;
    void pCommand(cocos2d::CCNode*) = mac 0x280830;
    inline void toggleCheckpointsMenu(bool toggled) {
        m_checkPointMenu->setVisible(toggled);
    }
    void onCheck(cocos2d::CCObject* sender) = mac 0x2803e0, win 0x25fb60;
    void onDeleteCheck(cocos2d::CCObject* sender) = mac 0x280410, win 0x25fc90;
    void onPause(cocos2d::CCObject* sender) = mac 0x2803c0, win 0x25fad0;
    virtual void keyDown(cocos2d::enumKeyCodes key) = mac 0x280470, win 0x25f890;
    virtual void keyUp(cocos2d::enumKeyCodes key) = mac 0x280600, win 0x25fa10;
    UILayer() = win 0x25f230;
    ~UILayer() = win 0x25fef0;

    PAD = mac 0x16, win 0x8, android 0x8;
    cocos2d::CCMenu* m_checkPointMenu;
}

class UndoObject : cocos2d::CCObject {
    ~UndoObject() = mac 0xa2fd0;
    static UndoObject* create(GameObject*, UndoCommand) = mac 0x94ea0, win 0x16bc20;
    static UndoObject* createWithArray(cocos2d::CCArray*, UndoCommand) = mac 0x96ee0, win 0x16bee0;
    static UndoObject* createWithTransformObjects(cocos2d::CCArray* pObjects, UndoCommand nCommand) = win 0x16bcd0;

    GameObject* m_gameObject;
    UndoCommand m_command;
    cocos2d::CCArray* m_objects;
    bool m_redo;
}

class UploadActionDelegate {
    virtual void uploadActionFinished(int, int) {}
    virtual void uploadActionFailed(int, int) {}
}

class UploadActionPopup : FLAlertLayer {
    UploadPopupDelegate* m_popupDelegate;
    TextArea* m_messageArea;
    LoadingCircle* m_loadingCircle;
    CCMenuItemSpriteExtra* m_closeBtn;
}

class UploadMessageDelegate {}

class UploadPopupDelegate {
    virtual void onClosePopup() {}
}

class UserInfoDelegate {}

class VideoOptionsLayer : FLAlertLayer {
    PAD = win 0x18;
    cocos2d::CCArray* m_resolutions;
    PAD = win 0x4;
    int m_currentResolution;
}

class LevelTools {
    static gd::string base64EncodeString(gd::string) = win 0x18b310;
    static gd::string base64DecodeString(gd::string) = mac 0x294510, win 0x18b3b0;
    static GJGameLevel *getLevel(int, bool) = win 0x189370;
    static bool verifyLevelIntegrity(gd::string, int) = win 0x18b180;
    static float xPosForTime(float, cocos2d::CCArray*, int) = win 0x18acd0;
    static float timeForXPos(float, cocos2d::CCArray*, int) = win 0x18ae70;
}
// clang-format on
