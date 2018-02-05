Introduction
=================

For apps that accept contactless payments, it would help if Apple Pay is disabled while accepting payments, so that the merchant's device does not get used to pay herself!
Apple does provide APIs to disable Apple Pay, and this code sample shows you how to do that, but more importantly, it includes tips for obtaining and using the necessary entitlement from Apple.


tl;dr
=====

The [code for disabling Apple Pay](https://developer.apple.com/documentation/passkit/pkpasslibrary/1617078-requestautomaticpasspresentation) is relatively simple. The longer and less documented part is how to get started.
Disabling Apple Pay requires an entitlement from Apple.

I have explained the journey of requesting and using the entitlement to suppress Apple Pay on my blog [www.codereviewcache.com](http://www.codereviewcache.com/disable-apple-pay/)
