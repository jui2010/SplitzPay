;; addresses of buyer, seller and escrow are hard-coded,
(define-constant seller 'AHBDGVDGSGTT)
(define-constant buyer 'TYFVGBHSCHJSB)
(define-constant router 'SJNXHBCVSGVGS)

;; defining variables
(define-data-var sellerBool bool false)
(define-data-var buyerBool bool false)
(define-data-var balance uint u0)

;;
(define-map ((type address)) ((amount int)))

;; defining counter
(define-data-var counter int)

;; read-only function
(define-read-only (get-info)
  {balance: (var-get balance), buyerBool: (var-get buyerBool), sellerBool: (var-get sellerBool)}
)

;; refund the payment , if insufficient funds
(define-private (split-balance)

(var-get input (balance)) 