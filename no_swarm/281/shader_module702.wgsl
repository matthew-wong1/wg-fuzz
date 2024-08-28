struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: f32,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: f32) -> u32 {
    var var_0 = 2147483647i;
    var var_1 = Struct_1(max(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)) << (abs(vec3<u32>(1u, 1u, 1u)) % vec3<u32>(32u)));
    var_1 = Struct_1(~(~reverseBits(vec3<u32>(8105u, 27759u, var_1.a.x))));
    var_0 = _wgslsmith_mult_i32(u_input.a.x, -_wgslsmith_dot_vec4_i32(u_input.a, ~vec4<i32>(4362i, 0i, -1i, 1i)));
    var_1 = Struct_1(_wgslsmith_sub_vec3_u32(((vec3<u32>(70124u, 4294967295u, 4294967295u) | vec3<u32>(1u, 0u, var_1.a.x)) << (var_1.a % vec3<u32>(32u))) ^ vec3<u32>(max(var_1.a.x, 80250u), var_1.a.x, firstTrailingBit(var_1.a.x)), firstTrailingBit(vec3<u32>(var_1.a.x & var_1.a.x, firstTrailingBit(41019u), _wgslsmith_add_u32(4294967295u, var_1.a.x)))));
    return (var_1.a.x ^ 48729u) << (0u % 32u);
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = -_wgslsmith_mod_i32(u_input.a.x << (func_3(-146f) % 32u), select(i32(-1i) * -40866i, abs(1i), false) >> ((abs(arg_0) >> (_wgslsmith_clamp_u32(arg_0, 2327u, 4294967295u) % 32u)) % 32u));
    var var_1 = Struct_1(~(~select(_wgslsmith_div_vec3_u32(vec3<u32>(1u, arg_0, 3602u), vec3<u32>(arg_0, 13968u, 12570u)), ~vec3<u32>(arg_0, 0u, arg_0), vec3<bool>(true, true, true))));
    return Struct_1(var_1.a);
}

fn func_1() -> StorageBuffer {
    let var_0 = func_2(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(22372u, 1u, 46803u, 71300u), ~abs(vec4<u32>(18001u, 55073u, 24245u, 25541u))), ~(~(~66280u)), ~(~firstTrailingBit(6520u))));
    let var_1 = Struct_1(firstTrailingBit(firstTrailingBit(var_0.a)));
    let var_2 = !(!vec2<bool>(!any(vec4<bool>(true, true, true, false)), any(vec4<bool>(true, true, true, true))));
    var var_3 = var_0;
    var var_4 = 0i;
    return StorageBuffer(~vec2<i32>(min(-30674i, _wgslsmith_div_i32(u_input.a.x, u_input.a.x)), u_input.a.x), -select(vec2<i32>(_wgslsmith_add_i32(u_input.a.x, 25229i), u_input.a.x), ~u_input.a.yw, !(!var_2.x)), 827f, ~(~firstLeadingBit(u_input.a.x)), max(~abs(abs(vec2<u32>(66984u, var_1.a.x))), var_1.a.yx));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

