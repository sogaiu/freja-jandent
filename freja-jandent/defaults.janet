(import freja/default-hotkeys :as dh)

(import ./freja-jandent :as fj)

(dh/set-key dh/gb-binds
            [:control :shift :f]
            (comp dh/reset-blink fj/jandent-format))

