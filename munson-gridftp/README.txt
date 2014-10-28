
dkozak#cit2
nersc#hopper
  These are taken from complete.csv for the starting end point.  I took
  all the entries and removed those for which the failed, expired, 
  canceled, skipped, bytes checked or faults columns had nonzero values.
  I also removed entries with zero bytes transferred.

  For nersc#hopper, the list includes both outgoing and incoming traffic
  to the endpoint.  For dkozak#cit2 there was no incoming traffic.

reduced.csv
  These are taken from complete.csv for the starting end point.  I took
  all the entries and removed those for which the failed, expired, 
  canceled, skipped, bytes checked, or faults columns had nonzero 
  values.  I also removed entries with zero bytes transferred and
  those for which the source and destination endpoints are the
  same.

