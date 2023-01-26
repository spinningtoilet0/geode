#include "Setting.hpp"
#include <json11.hpp>

namespace geode {
    template<class T>
    bool GeodeSettingValue<T>::load(json11::Json const& json) {
        if (json.is<ValueType>())
            return false;

        m_value = json.as<ValueType>();
        return true;
    }

    template<class T>
    bool GeodeSettingValue<T>::save(json11::Json& json) const {
        json = json11::Json(m_value);
        return true;
    }
}