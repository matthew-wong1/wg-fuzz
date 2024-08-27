struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 55336i;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>) -> i32 {
    return countOneBits(u_input.d);
}

fn func_1() -> u32 {
    global0 = 0i;
    global0 = _wgslsmith_add_i32(_wgslsmith_clamp_i32(u_input.a, -u_input.d, -1i), _wgslsmith_mod_i32(u_input.d, 41210i));
    global0 = _wgslsmith_clamp_i32(-10833i, func_2(Struct_1(0u), vec2<u32>(firstLeadingBit(u_input.c), 1u) >> (vec2<u32>(reverseBits(1u), ~u_input.b.x) % vec2<u32>(32u))), u_input.d);
    global0 = u_input.a;
    global0 = -16421i;
    return ~(~(_wgslsmith_mod_u32(u_input.c, 4294967295u) | abs(~41676u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(true, any(select(vec4<bool>(true, 1i != u_input.d, true, true), vec4<bool>(true, true, true, true), vec4<bool>(all(vec4<bool>(false, false, false, true)), true, select(false, true, false), true))), true);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, u_input.d, _wgslsmith_sub_i32(u_input.a, u_input.d), vec4<u32>(1u, u_input.b.x, 1u, func_1()));
}

