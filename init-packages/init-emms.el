(require 'emms-player-mpd)

(emms-standard)

(add-to-list 'emms-info-functions 'emms-info-mpd)
(setq emms-volume-change-function 'emms-volume-mpd-change)
(add-to-list 'emms-player-list 'emms-player-mpd)
(setq emms-player-mpd-music-directory (expand-file-name "~/Musique/son/"))

(ignore-errors
  (emms-player-mpd-connect)
  (require 'emms-browser)
  (emms-cache-set-from-mpd-all)
  (global-set-key (kbd "<f11>") 'emms-smart-browse))
