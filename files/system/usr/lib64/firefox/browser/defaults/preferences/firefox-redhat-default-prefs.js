pref("app.update.auto",                     false);
pref("app.update.enabled",                  false);
pref("app.update.autoInstallEnabled",       false);
pref("general.smoothScroll",                true);
pref("intl.locale.requested",               "");
pref("toolkit.storage.synchronous",         0);
pref("toolkit.networkmanager.disable",      false);
pref("offline.autoDetect",                  true);
pref("browser.backspace_action",            2);
pref("browser.download.folderList",         1);
pref("browser.link.open_external",          3);
pref("browser.shell.checkDefaultBrowser",   false);
pref("network.manage-offline-status",       true);
pref("extensions.shownSelectionUI",         true);
pref("ui.SpellCheckerUnderlineStyle",       1);
pref("startup.homepage_override_url",       "");

pref("media.gmp.decoder.enabled", true);
/* Allow sending credetials to all https:// sites */
pref("network.negotiate-auth.trusted-uris", "https://");
pref("spellchecker.dictionary_path","/usr/share/hunspell");
/* Disable DoH by default */
pref("network.trr.mode",                    5);
/* Enable per-user policy dir, see mozbz#1583466 */
pref("browser.policies.perUserDir",         true);
pref("browser.gnome-search-provider.enabled",true);
/* Enable ffvpx playback for WebRTC */
pref("media.navigator.mediadatadecoder_vpx_enabled", true);
pref("media.webrtc.camera.allow-pipewire", true);
/* Enable native file pickers */
pref("widget.use-xdg-desktop-portal.file-picker", 1);
/* Enable native location permissions */
pref("widget.use-xdg-desktop-portal.location", 1);
