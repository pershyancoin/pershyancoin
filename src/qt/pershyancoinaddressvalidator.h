// Copyright (c) 2011-2014 The Pershyancoin Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef PERSHYANCOIN_QT_PERSHYANCOINADDRESSVALIDATOR_H
#define PERSHYANCOIN_QT_PERSHYANCOINADDRESSVALIDATOR_H

#include <QValidator>

/** Base58 entry widget validator, checks for valid characters and
 * removes some whitespace.
 */
class PershyancoinAddressEntryValidator : public QValidator
{
    Q_OBJECT

public:
    explicit PershyancoinAddressEntryValidator(QObject *parent);

    State validate(QString &input, int &pos) const;
};

/** Pershyancoin address widget validator, checks for a valid pershyancoin address.
 */
class PershyancoinAddressCheckValidator : public QValidator
{
    Q_OBJECT

public:
    explicit PershyancoinAddressCheckValidator(QObject *parent);

    State validate(QString &input, int &pos) const;
};

#endif // PERSHYANCOIN_QT_PERSHYANCOINADDRESSVALIDATOR_H
