#include <Geode/loader/Hook.hpp>
#include <json11.hpp>

USE_GEODE_NAMESPACE();

bool Patch::apply() {
    return bool(tulip::hook::writeMemory(m_address, m_patch.data(), m_patch.size()));
}

bool Patch::restore() {
    return bool(tulip::hook::writeMemory(m_address, m_original.data(), m_original.size()));
}

json11::Json Patch::getRuntimeInfo() const {
    auto json = json11::Json::object();
    json["address"] = std::to_string(reinterpret_cast<uintptr_t>(m_address));
    json["original"] = m_original;
    json["patch"] = m_patch;
    json["applied"] = m_applied;
    return json;
}
