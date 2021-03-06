[![MELPA](https://melpa.org/packages/uuidgen-badge.svg)](https://melpa.org/#/uuidgen)

uuidgen-el
==========

This is a naive implementation of RFC4122 Universally Unique
IDentifier generation in elisp.  Currently implemented are UUID v1
v3, v4 and v5 generation.  The resolution of the time based UUID is
microseconds, which is 10 times of the suggested 100-nanosecond
resolution, but should be enough for general usage.

APIs
----

* **Function** `uuidgen-1`

  Generate time based UUID string, aka UUIDv1.

* **Function** `uuidgen-4`

  Generate UUID string form random numbers, aka UUIDv4.

* **Function** `uuidgen-3 (ns name)`

  Generate name based UUID string using MD5 hash algorithm, aka
  UUIDv3.  NS should be a generated UUID or predefined namespaces,
  `uuidgen-ns-dns`, `uuidgen-ns-url`, `uuidgen-ns-oid`, `uuidgen-ns-x500`.  NAME
  is the node name string.

* **Function** `uuidgen-5 (ns name)`

  Generate name based UUID string using SHA-1 hash algorithm, aka
  UUIDv5.  NS should be a generated UUID or predefined namespaces,
  `uuidgen-ns-dns`, `uuidgen-ns-url`, `uuidgen-ns-oid`, `uuidgen-ns-x500`.  NAME
  is the node name string.

* **Function** `uuidgen-urn (uuid)`

  Return the string representation of a UUID as a URN.

* **Function** `uuidgen-cid (&optional uuid)`

  Return UUID string in CID format that is suitable for COM definition.
  If UUID is nil will generate UUID-4 automatically.
  You customize `uuidgen-cid-format-string` to change the default format.

* **Command** `insert-uuid-cid (uuid)`

  Insert UUID string in CID format that is suitable for COM definition.
  If UUID is nil will generate UUIDv4 automatically.
  You customize `uuidgen-cid-format-string` to change the default format.

* **Command** `uuidgen (time-based)`

  Insert UUIDv4 at point. If TIME-BASED is non-nil, insert UUIDv1 instead.
