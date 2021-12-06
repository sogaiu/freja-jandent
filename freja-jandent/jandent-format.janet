(import freja/new_gap_buffer :as gb)
(import freja/state)
(import freja/default-hotkeys :as dh)

(import ../jandent/indent :as fmt)

# XXX: for investigation
(defn current-gb
  []
  (get-in state/editor-state [:stack 0 1 :editor :gb]))

(varfn jandent-format
  [gb]
  (-> gb gb/commit!)
  (def {:caret caret
        :text text} gb)
  (def new-text (fmt/format text))
  (gb/replace-content gb new-text)
  (gb/put-caret gb caret))

(put-in dh/gb-binds
        [:control :shift :f]
        (comp dh/reset-blink jandent-format))
