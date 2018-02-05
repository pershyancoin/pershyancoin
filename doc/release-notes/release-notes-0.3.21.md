Binaries for Pershyancoin version 0.3.21 are available at:
  https://sourceforge.net/projects/pershyancoin/files/Pershyancoin/pershyancoin-0.3.21/

Changes and new features from the 0.3.20 release include:

* Universal Plug and Play support.  Enable automatic opening of a port for incoming connections by running pershyancoin or pershyancoind with the - -upnp=1 command line switch or using the Options dialog box.

* Support for full-precision pershyancoin amounts.  You can now send, and pershyancoin will display, pershyancoin amounts smaller than 0.01.  However, sending fewer than 0.01 pershyancoins still requires a 0.01 pershyancoin fee (so you can send 1.0001 pershyancoins without a fee, but you will be asked to pay a fee if you try to send 0.0001).

* A new method of finding pershyancoin nodes to connect with, via DNS A records. Use the -dnsseed option to enable.

For developers, changes to pershyancoin's remote-procedure-call API:

* New rpc command "sendmany" to send pershyancoins to more than one address in a single transaction.

* Several bug fixes, including a serious intermittent bug that would sometimes cause pershyancoind to stop accepting rpc requests. 

* -logtimestamps option, to add a timestamp to each line in debug.log.

* Immature blocks (newly generated, under 120 confirmations) are now shown in listtransactions.
