// All the delegate classes

class AnimatedSpriteDelegate {
    virtual void animationFinished(const char*) {}
}

class CCCircleWaveDelegate {
    virtual void circleWaveWillBeRemoved(CCCircleWave* wave) {}
}

class CCScrollLayerExtDelegate {
    virtual void scrllViewWillBeginDecelerating(CCScrollLayerExt*) {}
    virtual void scrollViewDidEndDecelerating(CCScrollLayerExt*) {}
    virtual void scrollViewTouchMoving(CCScrollLayerExt*) {}
    virtual void scrollViewDidEndMoving(CCScrollLayerExt*) {}
    virtual void scrollViewTouchBegin(CCScrollLayerExt*) {}
    virtual void scrollViewTouchEnd(CCScrollLayerExt*) {}
}

class ColorSelectDelegate {
    virtual void colorSelectClosed(cocos2d::CCNode*) {}
}

class ColorSetupDelegate {}

class CommentUploadDelegate {
    virtual void commentUploadFinished(int) {}
    virtual void commentUploadFailed(int, CommentError) {}
    virtual void commentDeleteFailed(int, int) {}
}

class CurrencyRewardDelegate {
    virtual void currencyWillExit(CurrencyRewardLayer*) {}
}

class DialogDelegate {
    virtual void dialogClosed(DialogLayer*) {}
}

class DownloadMessageDelegate {}

class FriendRequestDelegate {}

class GJAccountBackupDelegate {
    virtual bool backupAccountFailed(BackupAccountError) {
        return false;
    }
    virtual bool backupAccountFinished() {
        return false;
    }
}

class GJAccountDelegate {
    virtual bool accountStatusChanged() {
        return false;
    }
}

class GJAccountLoginDelegate {
    virtual bool loginAccountFailed(AccountError) {
        return false;
    }
    virtual bool loginAccountFinished(int, int) {
        return false;
    }
}

class GJAccountSyncDelegate {
    virtual bool syncAccountFailed(BackupAccountError) {
        return false;
    }
    virtual bool syncAccountFinished() {
        return false;
    }
}

class GJChallengeDelegate {}

class GJDailyLevelDelegate {}

class GJDropDownLayerDelegate {
    virtual void dropDownLayerWillClose(GJDropDownLayer*) {}
}

class GJRewardDelegate {}

class GJRotationControlDelegate {
    virtual void angleChangeBegin() {}
    virtual void angleChangeEnded() {}
    virtual void angleChanged(float) {}
}

class GJScaleControlDelegate {
    virtual void scaleChangeBegin() {}
    virtual void scaleChangeEnded() {}
    virtual void scaleChanged(float) {}
}

class GJSpecialColorSelectDelegate {
    virtual void colorSelectClosed(GJSpecialColorSelect*, int) {}
}

class GooglePlayDelegate {
    virtual void googlePlaySignedIn() {}
}