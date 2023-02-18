// Custom list cells used by the list view

class AchievementCell : cocos2d::CCLayer {
    void loadFromDict(cocos2d::CCDictionary*) = mac 0x10eaa0, win 0x59010;

    virtual bool init() = win 0x11070;
}

class ArtistCell : TableViewCell {
    virtual void draw() = mac 0x11c980, win 0x59d40; // same as StatsCell
    virtual bool init() = mac 0x11c7c0, win 0x11250;
    void loadFromObject(SongInfoObject*) = mac 0x1118b0, win 0x5ede0;
    void onNewgrounds(cocos2d::CCObject*) = mac 0x11c7e0, win 0x5f0c0;
    void updateBGColor(int) = mac 0x110460, win 0x5c6b0; // same as GJUserCell

    void* m_idk;
}

class CustomSongCell : TableViewCell {
    void loadFromObject(SongInfoObject*) = mac 0x110220, win 0x5e9f0;
}