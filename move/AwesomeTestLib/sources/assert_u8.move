#[test_only]
/// A module for asserting u8 values
module awesome_stdlib::assert_u8 {
    use aptos_std::debug;
    use aptos_std::string_utils;

    /// Asserts that the values are equal, returning the error code if failed
    public fun eq(expected: u8, actual: u8, err: u64) {
        if (expected != actual) {
            debug::print(
                &string_utils::format2(
                    &b"Assertion failed:\n    Expected: {} = {}", expected, actual
                )
            );
            abort err
        }
    }

    /// Asserts that the values are not equal, returning the error code if failed
    public fun ne(expected: u8, actual: u8, err: u64) {
        if (expected == actual) {
            debug::print(
                &string_utils::format2(
                    &b"Assertion failed:\n    Expected: {} != {}", expected, actual
                )
            );
            abort err
        }
    }

    /// Asserts that the left value is less than the right, returning the error code if failed
    public fun lt(left: u8, right: u8, err: u64) {
        if (left >= right) {
            debug::print(
                &string_utils::format2(
                    &b"Assertion failed:\n    Expected: {} < {}", left, right
                )
            );
            abort err
        }
    }

    /// Asserts that the left value is less than or equal to the right, returning the error code if failed
    public fun le(left: u8, right: u8, err: u64) {
        if (left > right) {
            debug::print(
                &string_utils::format2(
                    &b"Assertion failed:\n    Expected: {} <= {}", left, right
                )
            );
            abort err
        }
    }

    /// Asserts that the left value is greater than the right, returning the error code if failed
    public fun gt(left: u8, right: u8, err: u64) {
        if (left <= right) {
            debug::print(
                &string_utils::format2(
                    &b"Assertion failed:\n    Expected: {} <= {}", left, right
                )
            );
            abort err
        }
    }

    /// Asserts that the left value is greater than or equal to the right, returning the error code if failed
    public fun ge(left: u8, right: u8, err: u64) {
        if (left < right) {
            debug::print(
                &string_utils::format2(
                    &b"Assertion failed:\n    Expected: {} <= {}", left, right
                )
            );
            abort err
        }
    }
}
