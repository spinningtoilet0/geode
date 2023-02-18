// All manager nodes which include all singletons
// TODO: this probably needs splitting but yeah idk

class AchievementManager : cocos2d::CCNode {
    void getAllAchievements() = mac 0x434d60;
    static AchievementManager* sharedState() = mac 0x424420, win 0x7b10;

    PAD = win 0x10;
    cocos2d::CCDictionary* m_achievements;
    PAD = win 0x4;
}

class AchievementNotifier : cocos2d::CCNode {
    void notifyAchievement(const char* title, const char* desc, const char* icon, bool quest) {
        m_queue->addObject(AchievementBar::create(title, desc, icon, quest));
        if (!m_currentAchievement) {
            this->showNextAchievement();
        }
    }

    static AchievementNotifier* sharedState() = mac 0x464e00, win 0xfc90;
    void willSwitchToScene(cocos2d::CCScene*) = mac 0x4650b0, win 0xfea0;
    void showNextAchievement() = mac 0x464f10, win 0xfd60, ios 0x13f508;

    cocos2d::CCScene* m_currentScene;
    cocos2d::CCArray* m_queue;
    AchievementBar* m_currentAchievement;
}

class AppDelegate : cocos2d::CCApplication, cocos2d::CCSceneDelegate {
    void bgScale() = mac 0x3aaab0;
    virtual bool applicationDidFinishLaunching() = mac 0x3aa900, win 0x3cbb0;
    virtual void applicationDidEnterBackground() = mac 0x3aabe0, win 0x3cf40;
    virtual void applicationWillEnterForeground() = mac 0x3aac80, win 0x3d130;
    virtual void applicationWillBecomeActive() = mac 0x3aab30, win 0x3ce90;
    virtual void applicationWillResignActive() = mac 0x3aab50, win 0x3cf20;
    virtual void trySaveGame() = mac 0x3aaf10, win 0x3d5e0, ios 0x1a28f0;
    virtual void willSwitchToScene(cocos2d::CCScene*) = mac 0x3aaf40, win 0x3d690;
    static AppDelegate* get() {
        return static_cast<AppDelegate*>(cocos2d::CCApplication::sharedApplication());
    }
    bool musicTest() = win 0x3d580;
    void pauseGame() = mac 0x3aab60, win 0x3d3e0;
    void resumeSound() = win 0x3d4d0;
    void setupGLView() = win 0x3c950;

    cocos2d::CCScene* m_runningScene;
}

class FMODAudioEngine : cocos2d::CCNode {
    static FMODAudioEngine* sharedEngine() = mac 0x20ef80, win 0x239f0;
    void preloadEffect(gd::string filename) = win 0x24240;
    bool isBackgroundMusicPlaying() = win 0x24050;
    bool isBackgroundMusicPlaying(gd::string path) = win 0x24080;
    void playBackgroundMusic(gd::string path, bool fade, bool paused) = win 0x23d80;
    
    virtual void update(float) = win 0x23b20;

    cocos2d::CCDictionary* m_dictionary;
    std::string m_filePath;
    float m_backgroundMusicVolume;
    float m_effectsVolume;
    float m_pulse1;
    float m_pulse2;
    float m_pulse3;
    int m_pulseCounter;
    bool m_metering;
    bool m_fading;
    bool m_fadeIn;
    float m_fadeInDuration;
    FMOD::System* m_system;
    FMOD::Sound* m_sound;
    FMOD::Channel* m_currentSoundChannel;
    FMOD::Channel* m_globalChannel;
    FMOD::DSP* m_DSP;
    FMOD_RESULT m_lastResult;
    int m_version;
    void* m_extraDriverData;
    int m_musicOffset;
}

class GJEffectManager : cocos2d::CCNode {
    static GJEffectManager* get() {
        return GJEffectManager::fromGameLayer();
    }

    static GJEffectManager* fromGameLayer() {
        auto gameLayer = GJBaseGameLayer::get();
        if (gameLayer) return gameLayer->m_effectManager;
        return nullptr;
    }

    static GJEffectManager* fromLevelSetting() {
        auto gameLayer = GJBaseGameLayer::get();
        if (gameLayer && gameLayer->m_levelSettings) return gameLayer->m_levelSettings->m_effectManager;
        return nullptr;
    }

    virtual bool init() = mac 0x180230, win 0x11c1b0;
    void activeColorForIndex(int) = mac 0x180cb0, win 0x11c6e0;
    void activeOpacityForIndex(int) = mac 0x180e10;
    void addAllInheritedColorActions(cocos2d::CCArray*) = mac 0x1817a0;
    void addGroupPulseEffect(PulseEffectAction*) = mac 0x184c10;
    void calculateBaseActiveColors() = mac 0x180f70, win 0x11c7c0;
    void calculateInheritedColor(int, ColorAction*) = mac 0x1818f0, win 0x11cb80;
    void calculateLightBGColor(cocos2d::_ccColor3B) = mac 0x185b90, win 0x11f420;
    void colorActionChanged(ColorAction*) = mac 0x181dc0;
    void colorExists(int) = mac 0x181da0;
    void colorForEffect(cocos2d::_ccColor3B, cocos2d::_ccHSVValue) = mac 0x182650;
    cocos2d::_ccColor3B colorForGroupID(int, cocos2d::_ccColor3B const&, bool) = mac 0x184f90;
    void colorForIndex(int) = mac 0x180ad0;
    void colorForPulseEffect(cocos2d::_ccColor3B const&, PulseEffectAction*) = mac 0x181bf0, win 0x11edd0;
    void countChangedForItem(int) = mac 0x185a40, win 0x11f330;
    void countForItem(int) = mac 0x185a10;
    static GJEffectManager* create() = mac 0x1800f0, win 0x11c110;
    void createFollowCommand(float, float, float, int, int, bool, int) = mac 0x182ed0;
    void createMoveCommand(cocos2d::CCPoint, int, float, int, float, bool, bool, int) = mac 0x182cc0, win 0x11d340;
    void createPlayerFollowCommand(float, float, int, float, float, int, int) = mac 0x182fe0;
    void createRotateCommand(int, float, int, int, int, float, bool, int) = mac 0x182df0;
    void getAllColorActions() = mac 0x180980, win 0x11c600;
    void getAllColorSprites() = mac 0x1809e0;
    ColorAction* getColorAction(int) = mac 0x180b00, win 0x11cde0;
    const cocos2d::_ccColor3B& getColorSprite(int) = mac 0x180d00, win 0x11ce20;
    void getCurrentStateString() = mac 0x1867e0, win 0x11fac0;
    void getLoadedMoveOffset() = mac 0x184390;
    void getMixedColor(cocos2d::_ccColor3B, cocos2d::_ccColor3B, float) = mac 0x185d30;
    uint8_t getOpacityActionForGroup(int) = mac 0x1845b0;
    gd::string getSaveString() = mac 0x185e90;
    void handleObjectCollision(bool, int, int) = mac 0x1828f0, win 0x11d2a0;
    void hasActiveDualTouch() = mac 0x185540;
    void hasBeenTriggered(int) = mac 0x1853b0;
    void hasPulseEffectForGroupID(int) = mac 0x184f60;
    bool isGroupEnabled(int) = mac 0x1853d0;
    void keyForGroupIDColor(int, cocos2d::_ccColor3B const&, bool) = mac 0x184c90;
    void loadState(gd::string) = mac 0x188db0, win 0x1205b0;
    void objectsCollided(int, int) = mac 0x182a00, win 0x11d200;
    void opacityForIndex(int) = mac 0x180c80;
    float opacityModForGroup(int) = mac 0x184740;
    void playerButton(bool, bool) = mac 0x1855a0, win 0x11f120;
    void playerDied() = mac 0x185860;
    void postCollisionCheck() = mac 0x182720, win 0x11d0b0;
    void preCollisionCheck() = mac 0x182680, win 0x11d030;
    void prepareMoveActions(float, bool) = mac 0x183660, win 0x11da30;
    void processColors() { // mac 0x180e70
        this->calculateBaseActiveColors();
        this->processPulseActions();
        this->processInheritedColors();
        this->processCopyColorPulseActions();
    }
    void processCopyColorPulseActions() = mac 0x181530, win 0x11ebc0;
    void processInheritedColors() = mac 0x181190, win 0x11c8a0;
    void processPulseActions() = mac 0x181040, win 0x11ea50;
    void registerCollisionTrigger(int, int, int, bool, bool, int) = mac 0x182b70;
    void removeAllPulseActions() = mac 0x1825e0;
    void removeColorAction(int) = mac 0x181d60;
    void reset() = mac 0x180690, win 0x11c4f0;
    void resetColorCache() = mac 0x185280;
    void resetEffects() = mac 0x1807d0, win 0x11cf10;
    void resetMoveActions() = mac 0x180940;
    void resetToggledGroups() = mac 0x1853f0;
    void resetTriggeredIDs() = mac 0x182630;
    void runCountTrigger(int, int, bool, int, bool, int) = mac 0x1858d0;
    void runDeathTrigger(int, bool, int) = mac 0x1857a0;
    OpacityEffectAction* runOpacityActionOnGroup(int, float, float, int) = mac 0x1845d0;
    void runPulseEffect(int, bool, float, float, float, PulseEffectType, cocos2d::_ccColor3B, cocos2d::_ccHSVValue, int, bool, bool, bool, int) = mac 0x184890, win 0x11e5c0;
    void runTouchTriggerCommand(int, bool, TouchTriggerType, bool, int) = mac 0x185460;
    void setColorAction(ColorAction*, int) = mac 0x181d00, win 0x11ce70;
    void setFollowing(int, int, bool) = mac 0x185e00;
    void setupFromString(gd::string) = mac 0x186290, win 0x11f8f0;
    bool shouldBlend(int) = mac 0x180e40;
    void spawnGroup(int, float, int) = mac 0x1852a0;
    void stopActionsForTrigger(EffectGameObject*) = mac 0x183150;
    void stopMoveActionsForGroup(int) = mac 0x1830e0;
    void storeTriggeredID(int) = mac 0x185380;
    void toggleGroup(int item, bool value) { // mac 0x182c80;
        m_groupToggled[item] = value;
    }
    void traverseInheritanceChain(InheritanceNode*) = mac 0x181850, win 0x11caf0;
    void updateActiveOpacityEffects() = mac 0x1847e0;
    void updateColorAction(ColorAction*) = mac 0x184560;
    void updateColorEffects(float) = mac 0x181f40, win 0x11e1d0;
    void updateColors(cocos2d::_ccColor3B, cocos2d::_ccColor3B) = mac 0x180a40, win 0x11c660;
    void updateEffects(float unk) {
        this->updateColorEffects(unk);
        this->updatePulseEffects(unk);
        this->updateOpacityEffects(unk);
        this->updateSpawnTriggers(unk);
    }
    void updateOpacityAction(OpacityEffectAction*) = mac 0x184780;
    void updateOpacityEffects(float) = mac 0x1823e0, win 0x11e490;
    void updatePulseEffects(float) = mac 0x182130, win 0x11e7f0;
    void updateSpawnTriggers(float) = mac 0x182510, win 0x11f000;
    void wasFollowing(int, int) = mac 0x185e60;
    void wouldCreateLoop(InheritanceNode*, int) = mac 0x181820, win 0x11cdb0;
    ~GJEffectManager() = mac 0x17fe00, win 0x11be80;

    TriggerEffectDelegate* m_effectDelegate;
    cocos2d::CCDictionary* m_colorActions;
    cocos2d::CCDictionary* m_colorSprites;
    cocos2d::CCDictionary* m_pulseActionsForGroup;
    cocos2d::CCDictionary* m_colorCache;
    cocos2d::CCDictionary* m_opacityActionsForGroup;
    cocos2d::CCDictionary* m_f0150;
    cocos2d::CCArray* m_opacityActions;
    cocos2d::CCArray* m_touchActions;
    cocos2d::CCDictionary* m_countActions;
    cocos2d::CCArray* m_onDeathActions;
    cocos2d::CCArray* m_collisionActions;
    cocos2d::CCDictionary* m_f0180;
    cocos2d::CCDictionary* m_f0188;
    gd::vector<InheritanceNode*> m_inheritanceNodesForColor;
    cocos2d::CCDictionary* m_f01a8;
    cocos2d::CCDictionary* m_collisionActionsForGroup1;
    cocos2d::CCDictionary* m_collisionActionsForGroup2;
    gd::vector<ColorAction*> m_colorActionsForColor;
    gd::vector<ColorActionSprite*> m_colorSpritesForColor;
    std::array<bool, 1100> m_pulseExistsForGroup;
    bool m_f063c;
    std::array<bool, 1100> m_opactiyExistsForGroup;
    std::array<int, 1100> m_itemValues;
    int m_unusued;
    int* m_unused2;
    cocos2d::CCArray* m_f1bc8;
    cocos2d::CCArray* m_inheritanceChain;
    cocos2d::CCDictionary* m_f1bd8;
    gd::vector<bool> m_groupToggled;
    cocos2d::CCDictionary* m_triggeredIDs;
    cocos2d::CCDictionary* m_followActions;
    cocos2d::CCArray* m_spawnActions;
    cocos2d::CCArray* m_moveActions;
    cocos2d::CCArray* m_f1c28;
    cocos2d::CCNode* m_f1c30;
    cocos2d::CCDictionary* m_f1c38;
    cocos2d::CCDictionary* m_f1c40;
    cocos2d::CCDictionary* m_f1c48;
    cocos2d::CCDictionary* m_f1c50;
    float m_time;
    float m_velocity;
    float m_acceleration;
    bool m_moveOptimizationEnabled;
}