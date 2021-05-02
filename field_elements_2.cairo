%builtins output range_check

# Import unsigned_div_rem() from the math module.
from starkware.cairo.common.math import unsigned_div_rem
from starkware.cairo.common.serialize import serialize_word

func main{output_ptr : felt*, range_check_ptr}():
    let (q, r) = unsigned_div_rem(value=12, div=3)
    # Output the quotient (12 // 3).
    serialize_word(q)
    # Output the remainder (12 % 3).
    serialize_word(r)

    # Add code that outputs the quotient and remainder of 13 / 3 in addition to 12 / 3 here.
    let (s, t) = unsigned_div_rem(13, 3)
    serialize_word(s)
    serialize_word(t)
    return ()
end

