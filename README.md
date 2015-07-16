# iOS-eVote
Implementation of e-voting protocol for iOS

Original protocol and description for Android here: http://www.scielo.org.co/scielo.php?pid=S0120-62302014000300002&script=sci_arttext

The goal is to have an iOS client that will satisfy the protocol in the paper above. This will mean communicating with a registration and voting server, and performing blind and short signatures efficiently on iOS.

Check reference papers for more information.

##To Do##
- ~~Learn iOS~~
 - UI is mostly finished. I've learned enough iOS right now.
- ~~Port PBC Library to iOS (https://crypto.stanford.edu/pbc/)~~
 - Will implement my own ECCurve methods for iOS due to use of BN curves and Ate pairing