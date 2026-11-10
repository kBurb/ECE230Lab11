Improvements made in Lab 4
- Passwords are processed with PBKDF2-HMAC-SHA-256 using 210,000 iterations, a fresh random 16-byte salt per record, and a 256-bit derived key.
- Password verification recomputes the derived key and compares hashes using MessageDigest.isEqual.
- The security answer is also salted and hashed rather than stored in plaintext.
- After three consecutive incorrect passwords, the account is locked for 30 seconds. A successful login resets the failed-attempt counter.
- Login failures use the generic message “Invalid username or password.” Unknown usernames and incorrect passwords are not distinguished.
- Password reset generates a new salt and hash for the replacement password.
