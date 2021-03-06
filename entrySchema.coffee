"use strict"

{Schema} = require "mongoose"

listTypeValidation = (type) ->
    type in ["White", "Exempt", "Exception"]

module.exports = Schema(
    OBU:
        type: Number
        required: true
        default: 123456789012
        index: true
    Kennzeichen:
        type: String
        required: true
    ListType:
        type: String    # White, Exempt, Exception
        required: true
        validate: listTypeValidation
    created:
        type: Date
        required: true
        default: new Date()
)