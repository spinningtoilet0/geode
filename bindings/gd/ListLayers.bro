// List related layers that are not cells, should be removed tbh idk i need help

class BoomListView : cocos2d::CCLayer, TableViewDelegate, TableViewDataSource {
    BoomListView() {}
    ~BoomListView() {
        CC_SAFE_RELEASE(m_entries);
    }

    static BoomListView* create(cocos2d::CCArray*, float, float, int, BoomListType) = mac 0x18ecb0;
    bool init(cocos2d::CCArray*, float, float, int, BoomListType) = mac 0x18ee00, win 0x10c20, ios 0x12c5a8;
    virtual void draw() {}

    virtual void setupList() = mac 0x18ef90, win 0x10dc0;
    virtual void TableViewWillDisplayCellForRowAtIndexPath(CCIndexPath&, TableViewCell*, TableView*) {}
    virtual float cellHeightForRowAtIndexPath(CCIndexPath&, TableView*) = mac 0x18f070, win 0x10e50;
    virtual void didSelectRowAtIndexPath(CCIndexPath&, TableView*) {}
    virtual int numberOfRowsInSection(unsigned int, TableView*) = mac 0x18f0b0, win 0x10e60;
    virtual unsigned int numberOfSectionsInTableView(TableView*) = mac 0x18f0e0, win 0x10a70;
    virtual TableViewCell* cellForRowAtIndexPath(CCIndexPath&, TableView*) = mac 0x18f100, win 0x10e70;
    virtual void TableViewCommitCellEditingStyleForRowAtIndexPath(TableView*, TableViewCellEditingStyle, CCIndexPath&) {}
    virtual void TableViewWillReloadCellForRowAtIndexPath(CCIndexPath&, TableViewCell*, TableView*) {}
    virtual TableViewCell* getListCell(const char*) = mac 0x18f200, win 0x10ed0;
    virtual void loadCell(TableViewCell*, unsigned int) = mac 0x18f4a0, win 0x10ff0;
    inline bool init(cocos2d::CCArray* entries, BoomListType type, float width, float height) {
        return this->init(entries, height, width, 0, type);
    }

    TableView* m_tableView;
    cocos2d::CCArray* m_entries;
    BoomListType m_type;
    float m_height;
    float m_width;
    float m_itemSeparation;
    int m_currentPage;
}

class BoomScrollLayer : cocos2d::CCLayer {
    BoomScrollLayer() = mac 0x1e42f0, win 0x11510;
    void instantMoveToPage(int page) = win 0x12330;
    void moveToPage(int page) = win 0x12400;

    cocos2d::CCArray* m_dots;
    PAD = win 0x40;
    ExtendedLayer* m_layer;
    PAD = win 0x48;
    int m_page;
}

class CustomListView : BoomListView {
    static CustomListView* create(cocos2d::CCArray*, float, float, int, BoomListType) = mac 0x10d410, win 0x57f90, ios 0x99154;
    inline static CustomListView* create(cocos2d::CCArray* entries, BoomListType type, float width, float height) {
        return CustomListView::create(entries, width, height, 0, type);
    }
    virtual TableViewCell* getListCell(const char*) = mac 0x10d560, win 0x58050;
    virtual void loadCell(TableViewCell*, unsigned int) = mac 0x10e610, win 0x585c0;
    virtual void setupList() = mac 0x116e70, win 0x58870;
    inline CustomListView() {}
}

class GJListLayer : cocos2d::CCLayerColor {
    ~GJListLayer() = mac 0x344350;
    static GJListLayer* create(cocos2d::CCObject* target, const char* title, cocos2d::ccColor4B color, float width, float height) = mac 0x343e10, win 0x12e000;

    BoomListView* m_listView;
}
