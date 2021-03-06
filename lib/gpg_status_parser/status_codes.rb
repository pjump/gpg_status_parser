module GPGStatusParser
  STATUS_CODES = {
    :NEWSIG => "",
    :GOODSIG => "<long_keyid_or_fpr>  <username>",
    :EXPSIG => "<long_keyid_or_fpr>  <username>",
    :EXPKEYSIG => "<long_keyid_or_fpr> <username>",
    :REVKEYSIG => "<long_keyid_or_fpr>  <username>",
    :BADSIG => "<long_keyid_or_fpr>  <username>",
    :ERRSIG => "<keyid>  <pkalgo> <hashalgo> <sig_class> <time> <rc>",
    :VALIDSIG => "<fingerprint_in_hex> <sig_creation_date> <sig-timestamp> <expire-timestamp> <sig-version> <reserved> <pubkey-algo> <hash-algo> <sig-class> [ <primary-key-fpr> ]",
    :SIG_ID => "<radix64_string>  <sig_creation_date>  <sig-timestamp>",
    :ENC_TO => "<long_keyid>  <keytype>  <keylength>",
    :BEGIN_DECRYPTION => "",
    :END_DECRYPTION => "",
    :DECRYPTION_INFO => "<mdc_method> <sym_algo>",
    :DECRYPTION_FAILED => "",
    :DECRYPTION_OKAY => "",
    :SESSION_KEY => "<algo>:<hexdigits>",
    :BEGIN_ENCRYPTION => "<mdc_method> <sym_algo>",
    :END_ENCRYPTION => "",
    :FILE_START => "<what> <filename>",
    :FILE_DONE => "",
    :BEGIN_SIGNING => "",
    :ALREADY_SIGNED => "<long-keyid>",
    :SIG_CREATED => "<type> <pk_algo> <hash_algo> <class> <timestamp> <keyfpr>",
    :NOTATION_NAME => "<name>",
    :NOTATION_DATA => "<string>",
    :POLICY_URL => "<string>",
    :PLAINTEXT => "<format> <timestamp> <filename>",
    :PLAINTEXT_LENGTH => "<length>",
    :ATTRIBUTE => "<arguments>",
    :SIG_SUBPACKET => "<type> <flags> <len> <data>",
    :INV_RECP => "",
    :INV_SGNR => "",
    :NO_RECP => "<reserved>",
    :NO_SGNR => "<reserved>",
    :KEYEXPIRED => "<expire-timestamp>",
    :SIGEXPIRED => "",
    :KEYREVOKED => "",
    :NO_PUBKEY => "<long keyid>",
    :NO_SECKEY => "<long keyid>",
    :KEY_CREATED => "<type> <fingerprint> [<handle>]",
    :KEY_NOT_CREATED => "[<handle>]",
    :TRUST_UNDEFINED => "<error_token>",
    :TRUST_NEVER => "<error_token>",
    :TRUST_MARGINAL => "[<zero> [<validation_model>]]",
    :TRUST_FULLY => "[<zero> [<validation_model>]]",
    :TRUST_ULTIMATE => "[<zero> [<validation_model>]]",
    :PKA_TRUST_GOOD => "<mailbox>",
    :PKA_TRUST_BAD => "<mailbox>",
    :GET_BOOL => "",
    :GET_LINE => "",
    :GET_HIDDEN => "",
    :GOT_IT => "",
    :USERID_HINT => "<long main keyid> <username>",
    :NEED_PASSPHRASE => "<long keyid> <long main keyid> <keytype> <keylength>",
    :NEED_PASSPHRASE_SYM => "<cipher_algo> <s2k_mode> <s2k_hash>",
    :NEED_PASSPHRASE_PIN => "<card_type> <chvno> [<serialno>]",
    :MISSING_PASSPHRASE => "",
    :BAD_PASSPHRASE => "<long keyid>",
    :GOOD_PASSPHRASE => "",
    :IMPORT_CHECK => "<long keyid> <fingerprint> <user ID>",
    :IMPORTED => "<long keyid>  <username>",
    :IMPORT_OK => "<reason> [<fingerprint>]",
    :IMPORT_PROBLEM => "<reason> [<fingerprint>]",
    :IMPORT_RES => "<count> <no_user_id> <imported> <imported_rsa> <unchanged> <n_uids> <n_subk> <n_sigs> <n_revoc> <sec_read> <sec_imported> <sec_dups> <skipped_new_keys> <not_imported>",
    :CARDCTRL => "<what> [<serialno>]",
    :SC_OP_FAILURE => "[<code>]",
    :SC_OP_SUCCESS => "",
    :NODATA => "<what>",
    :UNEXPECTED => "<what>",
    :TRUNCATED => "<maxno>",
    :ERROR => "<error location> <error code> [<more>]",
    :SUCCESS => "[<location>]",
    :BADARMOR => "",
    :DELETE_PROBLEM => "<reason_code>",
    :PROGRESS => "<what> <char> <cur> <total>",
    :BACKUP_KEY_CREATED => "<fingerprint> <fname>",
    :MOUNTPOINT => "<name>",
    :PINENTRY_LAUNCHED => "<pid>"
  }
end
