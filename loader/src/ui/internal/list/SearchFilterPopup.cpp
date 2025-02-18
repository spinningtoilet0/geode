#include "SearchFilterPopup.hpp"

#include "../info/TagNode.hpp"
#include "ModListLayer.hpp"

#include <Geode/binding/GameToolbox.hpp>
#include <Geode/binding/CCMenuItemToggler.hpp>
#include <Geode/ui/SelectList.hpp>

bool SearchFilterPopup::setup(ModListLayer* layer, ModListType type) {
    m_noElasticity = true;
    m_modLayer = layer;

    this->setTitle("Search Filters");

    auto winSize = CCDirector::sharedDirector()->getWinSize();
    auto pos = CCPoint { winSize.width / 2 - 140.f, winSize.height / 2 + 45.f };

    // platforms

    auto platformTitle = CCLabelBMFont::create("Platforms", "goldFont.fnt");
    platformTitle->setPosition(winSize.width / 2 - 85.f, winSize.height / 2 + 75.f);
    platformTitle->setScale(.5f);
    m_mainLayer->addChild(platformTitle);

    auto platformBG = CCScale9Sprite::create("square02b_001.png", { 0.0f, 0.0f, 80.0f, 80.0f });
    platformBG->setColor({ 0, 0, 0 });
    platformBG->setOpacity(90);
    platformBG->setContentSize({ 290.f, 205.f });
    platformBG->setPosition(winSize.width / 2 - 85.f, winSize.height / 2 + 11.f);
    platformBG->setScale(.5f);
    m_mainLayer->addChild(platformBG);

    this->enable(this->addPlatformToggle("Windows", PlatformID::Windows, pos), type);
    this->enable(this->addPlatformToggle("MacOS", PlatformID::MacOS, pos), type);
    this->enable(this->addPlatformToggle("iOS", PlatformID::iOS, pos), type);
    this->enable(this->addPlatformToggle("Android", PlatformID::Android, pos), type);

    // show installed

    auto installedTitle = CCLabelBMFont::create("Other", "goldFont.fnt");
    installedTitle->setPosition(winSize.width / 2 - 85.f, winSize.height / 2 - 57.f);
    installedTitle->setScale(.5f);
    m_mainLayer->addChild(installedTitle);

    auto installedBG = CCScale9Sprite::create("square02b_001.png", { 0.0f, 0.0f, 80.0f, 80.0f });
    installedBG->setColor({ 0, 0, 0 });
    installedBG->setOpacity(90);
    installedBG->setContentSize({ 290.f, 65.f });
    installedBG->setPosition(winSize.width / 2 - 85.f, winSize.height / 2 - 85.f);
    installedBG->setScale(.5f);
    m_mainLayer->addChild(installedBG);

    pos = CCPoint { winSize.width / 2 - 140.f, winSize.height / 2 - 85.f };

    this->addToggle(
        "Show Installed", menu_selector(SearchFilterPopup::onShowInstalled),
        m_modLayer->getQuery().forceVisibility, 0, pos
    );

    // tags

    auto tagsTitle = CCLabelBMFont::create("Tags", "goldFont.fnt");
    tagsTitle->setPosition(winSize.width / 2 + 85.f, winSize.height / 2 + 75.f);
    tagsTitle->setScale(.5f);
    m_mainLayer->addChild(tagsTitle);

    auto tagsBG = CCScale9Sprite::create("square02b_001.png", { 0.0f, 0.0f, 80.0f, 80.0f });
    tagsBG->setColor({ 0, 0, 0 });
    tagsBG->setOpacity(90);
    tagsBG->setContentSize({ 290.f, 328.f });
    tagsBG->setPosition(winSize.width / 2 + 85.f, winSize.height / 2 - 19.5f);
    tagsBG->setScale(.5f);
    m_mainLayer->addChild(tagsBG);

    pos = CCPoint { winSize.width / 2 + 30.f, winSize.height / 2 + 45.f };

    for (auto& tag : Index::get()->getTags()) {
        auto toggle = CCMenuItemToggler::createWithStandardSprites(
            this, menu_selector(SearchFilterPopup::onTag), .5f
        );
        toggle->toggle(m_modLayer->getQuery().tags.count(tag));
        toggle->setPosition(pos - winSize / 2);
        toggle->setUserObject(CCString::create(tag));
        m_buttonMenu->addChild(toggle);

        auto label = TagNode::create(tag);
        label->setScale(.4f);
        label->setAnchorPoint({ .0f, .5f });
        label->setPosition(pos.x + 15.f, pos.y);
        m_mainLayer->addChild(label);

        pos.y -= 22.5f;
    }

    return true;
}

void SearchFilterPopup::onTag(CCObject* sender) {
    try {
        auto toggle = static_cast<CCMenuItemToggler*>(sender);
        auto tag = static_cast<CCString*>(toggle->getUserObject())->getCString();
        if (!toggle->isToggled()) {
            m_modLayer->getQuery().tags.insert(tag);
        }
        else {
            m_modLayer->getQuery().tags.erase(tag);
        }
    }
    catch (...) {
    }
}

void SearchFilterPopup::onShowInstalled(CCObject* sender) {
    auto toggle = static_cast<CCMenuItemToggler*>(sender);
    m_modLayer->getQuery().forceVisibility = !toggle->isToggled();
}

void SearchFilterPopup::enable(CCMenuItemToggler* toggle, ModListType type) {
    if (type == ModListType::Installed) {
        toggle->setEnabled(false);
        toggle->m_onButton->setColor(cc3x(0x50));
        toggle->m_offButton->setColor(cc3x(0x50));
    }
}

CCMenuItemToggler* SearchFilterPopup::addToggle(
    char const* title, SEL_MenuHandler selector, bool toggled, int tag, CCPoint& pos
) {
    auto toggle = GameToolbox::createToggleButton(
        title, selector, toggled, m_buttonMenu, pos, this, m_buttonMenu, .5f, .5f, 100.f,
        { 10.f, .0f }, nullptr, false, tag, nullptr
    );
    toggle->setTag(tag);
    pos.y -= 22.5f;
    return toggle;
}

CCMenuItemToggler* SearchFilterPopup::addPlatformToggle(
    char const* title, PlatformID id, CCPoint& pos
) {
    return this->addToggle(
        title, menu_selector(SearchFilterPopup::onPlatformToggle),
        m_modLayer->getQuery().platforms.count(id), id.to<int>(), pos
    );
    return nullptr;
}

void SearchFilterPopup::onPlatformToggle(CCObject* sender) {
    if (static_cast<CCMenuItemToggler*>(sender)->isToggled()) {
        m_modLayer->getQuery().platforms.erase(PlatformID::from(sender->getTag()));
    }
    else {
        m_modLayer->getQuery().platforms.insert(PlatformID::from(sender->getTag()));
    }
}

void SearchFilterPopup::onClose(CCObject* sender) {
    Popup::onClose(sender);
    m_modLayer->reloadList();
}

SearchFilterPopup* SearchFilterPopup::create(ModListLayer* layer, ModListType type) {
    auto ret = new SearchFilterPopup();
    if (ret && ret->init(350.f, 240.f, layer, type)) {
        ret->autorelease();
        return ret;
    }
    CC_SAFE_DELETE(ret);
    return nullptr;
}
