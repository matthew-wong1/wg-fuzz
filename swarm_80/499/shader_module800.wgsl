struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec2<u32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: Struct_3) -> bool {
    let var_0 = arg_0;
    var var_1 = ~65974u;
    let var_2 = vec4<i32>(countOneBits(-8482i), min(firstLeadingBit(reverseBits(var_0.c.x)) << (_wgslsmith_dot_vec4_u32(select(vec4<u32>(17058u, 39897u, u_input.a, 4294967295u), u_input.c, vec4<bool>(true, false, var_0.b.b.x, arg_0.b.b.x)), ~vec4<u32>(u_input.d.x, 1u, u_input.a, 1u)) % 32u), ~var_0.c.x), reverseBits((arg_0.e.a | arg_0.c.x) | ~var_0.c.x), select(~(min(20111i, var_0.c.x) >> (2947u % 32u)), var_0.c.x, -(var_0.e.c.x << (u_input.c.x % 32u)) < -1i));
    var var_3 = true;
    var_1 = 1u;
    return var_0.b.b.x;
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<bool>, arg_2: bool) -> vec4<u32> {
    let var_0 = vec2<f32>(-1530f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(280f + arg_0.x))));
    var var_1 = u_input.a | u_input.c.x;
    var var_2 = !vec4<bool>(all(!vec4<bool>(true, false, arg_2, arg_2)), any(vec2<bool>(true, arg_2)), all(vec4<bool>(arg_1.x & arg_2, all(vec3<bool>(false, false, arg_1.x)), func_2(Struct_3(Struct_1(1959i, arg_1, vec4<i32>(-2147483647i, -1i, 63675i, -2147483647i)), Struct_1(-19534i, arg_1, vec4<i32>(-1i, -1i, -2147483647i, 0i)), vec4<i32>(-2147483647i, 33329i, -68060i, -19360i), -1000f, Struct_1(1i, vec3<bool>(true, false, true), vec4<i32>(2147483647i, 15198i, -78473i, -14965i)))), !arg_2)), true);
    return ~u_input.c;
}

fn func_4(arg_0: vec4<bool>, arg_1: u32) -> i32 {
    var var_0 = arg_0.x;
    var var_1 = Struct_2(_wgslsmith_mult_vec3_i32(vec3<i32>(~(-22760i), 0i, _wgslsmith_add_i32(1176i, 66660i)) >> (vec3<u32>(1u, 27916u, ~u_input.d.x) % vec3<u32>(32u)), reverseBits(vec3<i32>(max(15950i, -4752i), -1i, 1i))));
    var_1 = Struct_2(vec3<i32>(-21099i, var_1.a.x, _wgslsmith_mult_i32(var_1.a.x, -(-16394i << (0u % 32u)))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(608f)) * _wgslsmith_f_op_f32(1716f + -554f))) * -335f));
    var_1 = Struct_2(_wgslsmith_mod_vec3_i32(abs(_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(var_1.a, vec3<i32>(var_1.a.x, var_1.a.x, var_1.a.x)), var_1.a ^ var_1.a)), _wgslsmith_mult_vec3_i32(~(var_1.a | var_1.a), var_1.a)));
    return -max(1i, -_wgslsmith_mult_i32(var_1.a.x >> (u_input.c.x % 32u), var_1.a.x ^ -19692i));
}

fn func_1() -> Struct_3 {
    let var_0 = -40878i;
    let var_1 = _wgslsmith_sub_vec3_u32(vec3<u32>(~60496u, ~(~u_input.d.x) ^ (~u_input.a << (_wgslsmith_mod_u32(u_input.c.x, u_input.b.x) % 32u)), u_input.b.x), ~u_input.b);
    let var_2 = all(!vec3<bool>(true, true, func_2(Struct_3(Struct_1(-20345i, vec3<bool>(false, true, true), vec4<i32>(2147483647i, var_0, 0i, -2147483647i)), Struct_1(-61114i, vec3<bool>(false, false, true), vec4<i32>(2147483647i, var_0, -24458i, var_0)), vec4<i32>(1i, -47836i, var_0, var_0), 1761f, Struct_1(-36260i, vec3<bool>(true, true, false), vec4<i32>(var_0, 0i, var_0, var_0)))) | true));
    var var_3 = var_0;
    var_3 = func_4(vec4<bool>(true, !var_2, var_2, !any(vec4<bool>(true, var_2, false, var_2))), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.b.x, u_input.b.x, 0u, u_input.b.x)), countOneBits(min(vec4<u32>(var_1.x, var_1.x, var_1.x, 55883u), vec4<u32>(13131u, 0u, var_1.x, 27722u)) & func_3(vec4<f32>(-466f, -1837f, -1091f, -1533f), vec3<bool>(true, var_2, var_2), false))));
    return Struct_3(Struct_1(-var_0 | _wgslsmith_add_i32(1i, var_0), !(!select(vec3<bool>(var_2, false, var_2), vec3<bool>(var_2, var_2, false), vec3<bool>(var_2, false, false))), vec4<i32>(select(var_0, _wgslsmith_div_i32(9560i, 49429i), true), var_0, _wgslsmith_mult_i32(1i, min(-3946i, -39345i)), select(2147483647i, var_0, false | var_2))), Struct_1(_wgslsmith_div_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(-31042i, -2147483647i, var_0), vec3<i32>(45933i, -1i, var_0)), _wgslsmith_dot_vec3_i32(~vec3<i32>(-1i, var_0, var_0), vec3<i32>(12238i, var_0, -68788i) & vec3<i32>(var_0, var_0, var_0))), select(select(vec3<bool>(var_2, false, false), vec3<bool>(false, true, var_2), select(vec3<bool>(true, var_2, var_2), vec3<bool>(true, true, true), var_2)), vec3<bool>(var_2, true, all(vec2<bool>(var_2, true))), var_2), vec4<i32>(var_0, var_0, ~(var_0 << (var_1.x % 32u)), -1i)), _wgslsmith_clamp_vec4_i32((firstLeadingBit(vec4<i32>(var_0, var_0, var_0, var_0)) << (min(u_input.c, u_input.c) % vec4<u32>(32u))) << (u_input.c % vec4<u32>(32u)), vec4<i32>(var_0, 1i, _wgslsmith_clamp_i32(1i >> (u_input.a % 32u), abs(var_0), -77215i), (i32(-1i) * -27412i) >> (_wgslsmith_dot_vec3_u32(var_1, vec3<u32>(91619u, var_1.x, 26813u)) % 32u)), _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(var_0, var_0, var_0, 0i), vec4<i32>(var_0, -2147483647i, var_0, 1004i)), vec4<i32>(2147483647i, _wgslsmith_sub_i32(var_0, var_0), -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0, 25945i), vec2<i32>(12383i, var_0))))), _wgslsmith_div_f32(-246f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -808f) + _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1000f, -264f))))), Struct_1(2147483647i, vec3<bool>(true, true, true), -max(vec4<i32>(29543i, var_0, var_0, var_0) >> (vec4<u32>(0u, 22895u, u_input.b.x, 1u) % vec4<u32>(32u)), abs(vec4<i32>(var_0, 0i, -810i, 2147483647i)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(1599f)), 106f))));
    var var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, -1152f, -379f)))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1000f * 687f), _wgslsmith_f_op_f32(-1959f - -1785f), -975f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(226f, -661f, 2301f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(435f, 258f, -1410f) - vec3<f32>(-504f, -527f, 698f)))))));
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(732f)))) + 200f)), _wgslsmith_f_op_f32(-169f + -348f), 825f);
    var var_2 = var_1.x;
    let var_3 = func_1();
    let var_4 = max(-11790i, reverseBits(abs(-firstLeadingBit(30069i))));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1013f - 1214f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_3.d)) + _wgslsmith_f_op_f32(var_1.x - var_1.x))));
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -655f) + -376f) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_3.d, -424f)) + 1483f)), var_3.d, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))), var_1.x, vec2<u32>(u_input.d.x, 1u), var_3.d, var_4);
}

