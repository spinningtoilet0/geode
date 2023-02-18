// All scenes in gd, can be created with ::scene

//TODO: inherits cocos2d::CCSceneTransitionDelegate
class CreatorLayer : cocos2d::CCLayer {
    void onBack(cocos2d::CCObject*) = win 0x4fae0;
    void onChallenge(cocos2d::CCObject*) = win 0x4f1b0;
    void onLeaderboards(cocos2d::CCObject*) = win 0x4ed20;
    void onMyLevels(cocos2d::CCObject*) = mac 0x142b70, win 0x4eaa0;
    void onSavedLevels(cocos2d::CCObject*) = mac 0x142860, win 0x4ebe0;
    void onDailyLevel(cocos2d::CCObject*) = win 0x4f170;
    void onWeeklyLevel(cocos2d::CCObject*) = win 0x4f190;
    void onFeaturedLevels(cocos2d::CCObject*) = win 0x4edf0;
    void onFameLevels(cocos2d::CCObject*) = win 0x4ee70;
    void onMapPacks(cocos2d::CCObject*) = win 0x4efb0;
    void onOnlineLevels(cocos2d::CCObject*) = win 0x4ef60;
    void onGauntlets(cocos2d::CCObject*) = win 0x4f0a0;
    void onSecretVault(cocos2d::CCObject*) = win 0x4f1d0;
    void onTreasureRoom(cocos2d::CCObject*) = win 0x4f540;
    virtual void sceneWillResume() = win 0x4fb50;
    virtual bool init() = mac 0x141c10, win 0x4de40;
    static CreatorLayer* create() = win 0x4dda0;
}

class EditLevelLayer : cocos2d::CCLayer, FLAlertLayerProtocol, TextInputDelegate, UploadActionDelegate, UploadPopupDelegate, SetIDPopupDelegate {
    static cocos2d::CCScene* scene(GJGameLevel* level) {
        auto scene = cocos2d::CCScene::create();
        scene->addChild(EditLevelLayer::create(level));

        AppDelegate::get()->m_runningScene = scene;
        return scene;
    }

    static EditLevelLayer* create(GJGameLevel* level) = mac 0xe1e50, win 0x6f530, ios 0x82420;
    bool init(GJGameLevel* level) = mac 0xe1fd0, win 0x6f5d0;
    void onLevelInfo() = win 0x70660;

    cocos2d::CCMenu* m_buttonMenu;
    GJGameLevel* m_level;
    TextArea* m_descriptionInput;
    cocos2d::CCArray* m_someArray;
    cocos2d::CCLabelBMFont* m_someFont;
}

class GJBaseGameLayer : cocos2d::CCLayer, TriggerEffectDelegate {
    cocos2d::CCLayer* getObjectLayer() {
        return m_objectLayer;
    }
    cocos2d::CCArray* getAllObjects() {
        return m_objects;
    }

    static GJBaseGameLayer* get() {
        return PlayLayer::get() ? static_cast<GJBaseGameLayer*>(PlayLayer::get()) : static_cast<GJBaseGameLayer*>(LevelEditorLayer::get());
    }

    inline GJBaseGameLayer() {}

    virtual void objectsCollided(int, int) = mac 0xb6d90, win 0x10f240;
    virtual void createMoveCommand(cocos2d::CCPoint, int, float, int, float, bool, bool, int) = mac 0xb73a0, win 0x10f680;
    virtual void updateColor(cocos2d::_ccColor3B, float, int, bool, float, cocos2d::_ccHSVValue, int, bool, int, EffectGameObject*) = mac 0xb7420, win 0x10f6d0;
    virtual void flipGravity(PlayerObject*, bool, bool) {}
    virtual void calculateColorValues(EffectGameObject*, EffectGameObject*, int, float, ColorActionSprite*, GJEffectManager*) = mac 0xba9a0, win 0x10ad60;
    virtual void toggleGroupTriggered(int, bool) = mac 0xb75a0, win 0x10f890;
    virtual void spawnGroup(int) = mac 0xb7050, win 0x10f400;
    virtual void addToSection(GameObject*) = mac 0xb7b70, win 0x10fd00;
    virtual void addToGroup(GameObject*, int, bool) = mac 0xb77f0, win 0x10fa50;
    virtual void removeFromGroup(GameObject*, int) = mac 0xb7a60, win 0x10fbd0;
    virtual bool init() = mac 0xafc90, win 0x10b020;
    void addObjectCounter(LabelGameObject*, int) = mac 0xb9eb0;
    void addToGroups(GameObject*, bool) = mac 0xb7780, win 0x10f9f0;
    void atlasValue(int) = mac 0xb21e0;
    void bumpPlayer(PlayerObject*, GameObject*) = mac 0xb6860, win 0x10ed50;
    void calculateOpacityValues(EffectGameObject*, EffectGameObject*, float, GJEffectManager*) = mac 0xb5be0;
    void checkSpawnObjects() = mac 0xb6f90, win 0x10f320;
    void collectItem(int, int) = mac 0xb9e20, win 0x111890;
    void collectedObject(EffectGameObject*) = mac 0xb9b60, win 0x111830;
    void createTextLayers() = mac 0xb5260, win 0x10dea0;
    cocos2d::CCArray* damagingObjectsInRect(cocos2d::CCRect) = mac 0xb6140, win 0x10e740;
    void enableHighCapacityMode() = mac 0xb11e0, win 0x10bf60;
    void getCapacityString() = mac 0xb2210, win 0x10c9b0;
    void getGroundHeightForMode(int) = mac 0xb6630;
    void getGroup(int) = mac 0xb6f20, win 0x10fcb0;
    void getMoveDeltaForObjects(int, int) = mac 0xb6db0;
    void getOptimizedGroup(int) = mac 0xb7940;
    void getStaticGroup(int) = mac 0xb79a0;
    void isGroupDisabledForObject(GameObject*) = mac 0xb5cc0;
    void isGroupDisabledForObjectFull(GameObject*, cocos2d::CCArray*) = mac 0xb5de0;
    void loadUpToPosition(float) = mac 0xba680, win 0x112070;
    void objectIntersectsCircle(GameObject*, GameObject*) = mac 0xb66e0, win 0x10e990;
    void objectTriggered(EffectGameObject*) = mac 0xb71b0;
    void optimizeMoveGroups() = mac 0xb96c0, win 0x1112f0;
    cocos2d::CCNode* parentForZLayer(int, bool, int) = mac 0xb55d0, win 0x10e220;
    void playerTouchedRing(PlayerObject*, GameObject*) = mac 0xb69e0;
    void processColorObject(EffectGameObject*, int, cocos2d::CCDictionary*, float, GJEffectManager*) = mac 0xb5a90;
    void processFollowActions() = mac 0xb8fd0, win 0x110e00;
    void processMoveActions() = mac 0xb86c0, win 0x1107e0;
    void processMoveActionsStep(float) = mac 0xb7ea0, win 0x10ffa0;
    void processOpacityObject(EffectGameObject*, cocos2d::CCDictionary*, float, GJEffectManager*) = mac 0xb5ae0;
    void processPlayerFollowActions(float) = mac 0xb8b50, win 0x110b10;
    void processRotationActions() = mac 0xb7fd0, win 0x1101a0;
    void pushButton(int, bool) = mac 0xb9920, win 0x111500;
    void rectIntersectsCircle(cocos2d::CCRect, cocos2d::CCPoint, float) = mac 0xb6470, win 0x10eb50;
    void refreshCounterLabels() = mac 0xb9fc0, win 0x111b80;
    void releaseButton(int, bool) = mac 0xb9a00, win 0x111660;
    void removeFromGroups(GameObject*) = mac 0xb7a00, win 0x10fb70;
    void removeObjectFromSection(GameObject*) = mac 0xb7e00, win 0x10ff30;
    void reorderObjectSection(GameObject*) = mac 0xb7cb0, win 0x10fe10;
    void resetGroupCounters(bool) = mac 0xba300, win 0x111dd0;
    void resetMoveOptimizedValue() = mac 0xb9670;
    // inlined on windows
    int sectionForPos(float x) {
        int section = x / 100;
        if (section < 0) section = 0;
        return section;
    }
    void setupLayers() = mac 0xaffe0, win 0x10b1f0;
    void shouldExitHackedLevel() = mac 0xb1100, win 0x10bea0;
    void spawnGroupTriggered(int, float, int) = mac 0xb7020;
    cocos2d::CCArray* staticObjectsInRect(cocos2d::CCRect) = mac 0xb5f90;
    void testInstantCountTrigger(int, int, int, bool, int) = mac 0xb9ae0;
    void toggleGroup(int, bool) = mac 0xb75f0, win 0x10f8c0;
    void togglePlayerVisibility(bool) = mac 0xba910, win 0x112340;
    void triggerMoveCommand(EffectGameObject*) = mac 0xb7290;
    void updateCollisionBlocks() = mac 0xb6a30, win 0x10ef70;
    void updateCounters(int, int) = mac 0xb9bc0, win 0x111900;
    void updateDisabledObjectsLastPos(cocos2d::CCArray*) = mac 0xb95b0, win 0x111280;
    void updateLayerCapacity(gd::string) = mac 0xb1680, win 0x10c2d0;
    void updateLegacyLayerCapacity(int, int, int, int) = mac 0xb1590, win 0x10c200;
    void updateOBB2(cocos2d::CCRect) = mac 0xb63f0;
    void updateQueuedLabels() = mac 0xb9f30, win 0x111b00;
    virtual ~GJBaseGameLayer() = mac 0xaf990, win 0x10add0;

    OBB2D* m_boundingBox;
    GJEffectManager* m_effectManager;
    cocos2d::CCLayer* m_objectLayer;
    cocos2d::CCSpriteBatchNode* m_batchNodeAddTop4;
    cocos2d::CCSpriteBatchNode* m_effectBatchNodeAddTop4;
    cocos2d::CCSpriteBatchNode* m_batchNodeTop3;
    cocos2d::CCSpriteBatchNode* m_batchNodeAddTop3;
    cocos2d::CCSpriteBatchNode* m_batchNodeAddGlowTop3;
    CCNodeContainer* m_batchNodeTop3Container;
    cocos2d::CCSpriteBatchNode* m_batchNodeTextTop3;
    cocos2d::CCSpriteBatchNode* m_batchNodeAddTextTop3;
    cocos2d::CCSpriteBatchNode* m_effectBatchNodeTop3;
    cocos2d::CCSpriteBatchNode* m_effectBatchNodeAddTop3;
    cocos2d::CCSpriteBatchNode* m_batchNodeTop2;
    cocos2d::CCSpriteBatchNode* m_batchNodeAddTop2;
    cocos2d::CCSpriteBatchNode* m_batchNodeAddGlowTop2;
    CCNodeContainer* m_batchNodeTop2Container;
    cocos2d::CCSpriteBatchNode* m_batchNodeTextTop2;
    cocos2d::CCSpriteBatchNode* m_batchNodeAddTextTop2;
    cocos2d::CCSpriteBatchNode* m_effectBatchNodeTop2;
    cocos2d::CCSpriteBatchNode* m_effectBatchNodeAddTop2;
    cocos2d::CCSpriteBatchNode* m_batchNode;
    cocos2d::CCSpriteBatchNode* m_batchNodeAdd;
    cocos2d::CCSpriteBatchNode* m_batchNodeAddGlow;
    CCNodeContainer* m_batchNodeTop1Container;
    cocos2d::CCSpriteBatchNode* m_batchNodeTextTop1;
    cocos2d::CCSpriteBatchNode* m_batchNodeAddTextTop1;
    cocos2d::CCSpriteBatchNode* m_effectBatchNodeTop1;
    cocos2d::CCSpriteBatchNode* m_effectBatchNodeAddTop1;
    cocos2d::CCSpriteBatchNode* m_batchNodePlayer;
    cocos2d::CCSpriteBatchNode* m_batchNodeAddPlayer;
    cocos2d::CCSpriteBatchNode* m_batchNodePlayerGlow;
    cocos2d::CCSpriteBatchNode* m_batchNodeAddMid;
    cocos2d::CCSpriteBatchNode* m_batchNodeBottom;
    cocos2d::CCSpriteBatchNode* m_batchNodeAddBottom;
    cocos2d::CCSpriteBatchNode* m_batchNodeAddBottomGlow;
    CCNodeContainer* m_batchNodeBot1Container;
    cocos2d::CCSpriteBatchNode* m_batchNodeText;
    cocos2d::CCSpriteBatchNode* m_batchNodeAddText;
    cocos2d::CCSpriteBatchNode* m_effectBatchNode;
    cocos2d::CCSpriteBatchNode* m_effectBatchNodeAdd;
    cocos2d::CCSpriteBatchNode* m_batchNodeBottom2;
    cocos2d::CCSpriteBatchNode* m_batchNodeAddBottom2;
    cocos2d::CCSpriteBatchNode* m_batchNodeAddBottom2Glow;
    CCNodeContainer* m_batchNodeBot2Container;
    cocos2d::CCSpriteBatchNode* m_batchNodeTextBot2;
    cocos2d::CCSpriteBatchNode* m_batchNodeAddTextBot2;
    cocos2d::CCSpriteBatchNode* m_effectBatchNodeBot2;
    cocos2d::CCSpriteBatchNode* m_effectBatchNodeAddBot2;
    cocos2d::CCSpriteBatchNode* m_batchNodeBottom3;
    cocos2d::CCSpriteBatchNode* m_batchNodeAddBottom3;
    cocos2d::CCSpriteBatchNode* m_batchNodeAddBottom3Glow;
    CCNodeContainer* m_batchNodeBot3Container;
    cocos2d::CCSpriteBatchNode* m_batchNodeTextBot3;
    cocos2d::CCSpriteBatchNode* m_batchNodeAddTextBot3;
    cocos2d::CCSpriteBatchNode* m_effectBatchNodeBot3;
    cocos2d::CCSpriteBatchNode* m_effectBatchNodeAddBot3;
    cocos2d::CCSpriteBatchNode* m_batchNodeBottom4;
    cocos2d::CCSpriteBatchNode* m_batchNodeAddBottom4;
    cocos2d::CCSpriteBatchNode* m_batchNodeAddBottom4Glow;
    CCNodeContainer* m_batchNodeBot4Container;
    cocos2d::CCSpriteBatchNode* m_batchNodeTextBot4;
    cocos2d::CCSpriteBatchNode* m_batchNodeAddTextBot4;
    cocos2d::CCSpriteBatchNode* m_effectBatchNodeBot4;
    cocos2d::CCSpriteBatchNode* m_effectBatchNodeAddBot4;
    PlayerObject* m_player1;
    PlayerObject* m_player2;
    LevelSettingsObject* m_levelSettings;
    cocos2d::CCDictionary* m_disabledGroupsDict;
    cocos2d::CCArray* m_objects;
    cocos2d::CCArray* m_sectionObjects;
    cocos2d::CCArray* m_sections;
    cocos2d::CCArray* m_collisionBlocks;
    cocos2d::CCArray* m_spawnObjects;
    cocos2d::CCArray* m_spawnObjects2;
    cocos2d::CCNode* m_groupNodes;
    gd::vector<GameObject*> m_objectsVec;
    gd::vector<GameObject*> m_disabledObjects;
    cocos2d::CCDictionary* m_groupDict;
    cocos2d::CCDictionary* m_staticGroupDict;
    cocos2d::CCDictionary* m_optimizedGroupDict;
    gd::vector<cocos2d::CCArray*> m_groups;
    gd::vector<cocos2d::CCArray*> m_staticGroups;
    gd::vector<cocos2d::CCArray*> m_optimizedGroups;
    cocos2d::CCArray* m_batchNodes;
    cocos2d::CCArray* m_processedGroups;
    cocos2d::CCDictionary* m_counterDict;
    cocos2d::CCDictionary* m_spawnedGroups;
    bool m_didUpdateNormalCapacity;
    bool m_isDualMode;
    int m_unk2AC;
    bool m_activeDualTouch;
    int m_attemptClickCount;
    int m_lastVisibleSection;
    int m_firstVisibleSection;
    bool m_objectsAreDisabled;
    bool m_blending;
    PAD = mac 0x8, win 0x8;
}

class GJGarageLayer : cocos2d::CCLayer, TextInputDelegate, FLAlertLayerProtocol, GameRateDelegate, ListButtonBarDelegate, DialogDelegate {
    inline GJGarageLayer() {
        m_nameInput = nullptr;
        m_playerPreview = nullptr;
        m_colorSelector1 = nullptr;
        m_colorSelector2 = nullptr;
        m_unkButton0x148 = nullptr;
        m_unkButton0x14c = nullptr;
        m_pagesArray = nullptr;
        m_tabToggleCube = nullptr;
        m_tabToggleShip = nullptr;
        m_tabToggleBall = nullptr;
        m_tabToggleUfo = nullptr;
        m_tabToggleWave = nullptr;
        m_tabToggleRobot = nullptr;
        m_tabToggleSpider = nullptr;
        m_tabToggleSpecial = nullptr;
        m_tabToggleDeathEffect = nullptr;
        m_updateSelector = false;
    }
    void onPlayerColor1(cocos2d::CCObject*) = mac 0x1ba640, win 0x129470, ios 0x22531c;
    void onPlayerColor2(cocos2d::CCObject*) = mac 0x1ba8c0, win 0x129590, ios 0x225408;
    static GJGarageLayer* create() = win 0x125220;
    virtual bool init() = mac 0x1b4980, win 0x1255d0;
    void onSelectTab(cocos2d::CCObject* sender) = win 0x127c30;
    void onPlayerIcon(cocos2d::CCObject* sender) = win 0x127f30;
    void onShipIcon(cocos2d::CCObject* sender) = win 0x1281e0;
    void onBallIcon(cocos2d::CCObject* sender) = win 0x1282a0;
    void onBirdIcon(cocos2d::CCObject* sender) = win 0x128360;
    void onDartIcon(cocos2d::CCObject* sender) = win 0x128420;
    void onRobotIcon(cocos2d::CCObject* sender) = win 0x1286d0;
    void onSpiderIcon(cocos2d::CCObject* sender) = win 0x128890;
    void onShards(cocos2d::CCObject* sender) = win 0x12ad70;
    void onBack(cocos2d::CCObject* sender) = win 0x12adf0;
    void onShop(cocos2d::CCObject* sender) = win 0x12ad90;
    void setupColorSelect() = mac 0x1b7500;
    PAD = mac 0x10, win 0x8;
    CCTextInputNode* m_nameInput;
    SimplePlayer* m_playerPreview;
    PAD = mac 0x10, win 0x8;
    cocos2d::CCSprite* m_colorSelector1;
    cocos2d::CCSprite* m_colorSelector2;
    CCMenuItemSpriteExtra* m_unkButton0x148;
    CCMenuItemSpriteExtra* m_unkButton0x14c;
    PAD = win 0x8;
    cocos2d::CCArray* m_pagesArray;
    PAD = win 0x8;
    CCMenuItemToggler* m_tabToggleCube;
    CCMenuItemToggler* m_tabToggleShip;
    CCMenuItemToggler* m_tabToggleBall;
    CCMenuItemToggler* m_tabToggleUfo;
    CCMenuItemToggler* m_tabToggleWave;
    CCMenuItemToggler* m_tabToggleRobot;
    CCMenuItemToggler* m_tabToggleSpider;
    CCMenuItemToggler* m_tabToggleSpecial;
    CCMenuItemToggler* m_tabToggleDeathEffect;
    PAD = win 0x4;
    bool m_updateSelector;
}