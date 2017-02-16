extension Authorization {
    public var bearer: Token? {
        guard let range = header.range(of: "Bearer ") else {
            return nil
        }

        let token = header.substring(from: range.upperBound)
        return Token(string: token)
    }
}