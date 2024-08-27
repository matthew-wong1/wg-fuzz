struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: f32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: vec3<f32>,
    e: vec2<u32>,
}

struct Struct_3 {
    a: bool,
    b: vec3<u32>,
    c: Struct_2,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec2<u32>,
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec4<u32>, arg_1: u32, arg_2: u32) -> vec3<f32> {
    var var_0 = Struct_1(1000f, -(~vec4<i32>(u_input.e.x, ~u_input.e.x, u_input.e.x >> (arg_0.x % 32u), abs(u_input.c.x))), ~vec4<u32>(reverseBits(~arg_0.x), _wgslsmith_div_u32(u_input.b, arg_1) ^ 0u, _wgslsmith_mod_u32(abs(arg_2), ~45168u), firstTrailingBit(max(arg_2, u_input.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(726f)) + -133f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -999f), _wgslsmith_f_op_f32(abs(758f)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1890f, -561f))), _wgslsmith_f_op_f32(906f + _wgslsmith_div_f32(-1540f, 400f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -271f) * -2257f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))));
    var var_1 = ~(~abs(min(2147483647i, var_0.b.x) ^ u_input.d));
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e.x + _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-321f, var_0.e.x))))), abs(abs(var_0.b)), ~countOneBits(select(~var_0.c, ~var_0.c, true)), var_0.a, vec3<f32>(_wgslsmith_f_op_f32(ceil(591f)), _wgslsmith_f_op_f32(655f - var_0.d), 321f));
    var_1 = u_input.d;
    var var_2 = Struct_4(var_0.a);
    return _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -881f), var_2.a, _wgslsmith_f_op_f32(sign(753f)))));
}

fn func_2(arg_0: f32, arg_1: Struct_4, arg_2: u32) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(max(arg_1.a, 832f)), -select(vec4<i32>(u_input.c.x, u_input.e.x, -12054i, u_input.e.x), -vec4<i32>(u_input.c.x, 3359i, u_input.d, u_input.e.x), true), _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_2, arg_2, u_input.a, u_input.b), vec4<u32>(u_input.a, 4294967295u, 11663u, 6008u)), select(vec4<u32>(arg_2, 41467u, 0u, 40861u), vec4<u32>(18486u, 1u, 0u, arg_2), true)), ~firstTrailingBit(vec4<u32>(arg_2, u_input.b, 37134u, arg_2))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1280f))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.a)))), vec3<f32>(arg_1.a, _wgslsmith_f_op_f32(-arg_1.a), -1488f)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(arg_1.a)), -1278f))), vec4<i32>(u_input.e.x, _wgslsmith_sub_i32(~u_input.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, -1i, 1i, u_input.d), vec4<i32>(40061i, -44790i, 1i, u_input.c.x))), 1i, abs(max(38289i, -1428i))), vec4<u32>(31188u, 1u, _wgslsmith_add_u32(_wgslsmith_clamp_u32(0u, arg_2, arg_2), 23929u), ~u_input.b | arg_2), _wgslsmith_f_op_f32(-915f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.a)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(348f, 423f, arg_1.a), vec3<f32>(-369f, arg_0, arg_1.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-193f, arg_1.a, -1000f)), true))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(509f * -743f), arg_1.a, _wgslsmith_f_op_f32(-1495f + arg_0)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(round(-1695f)), _wgslsmith_f_op_f32(-arg_0), arg_0), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(func_3(vec4<u32>(47823u, 23282u, 0u, 7770u), 4294967295u, 0u)))))), vec3<f32>(1434f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0, -943f)) + _wgslsmith_f_op_f32(-1474f * -1284f)), -1815f)), (_wgslsmith_mod_vec2_u32(~vec2<u32>(5208u, 10533u), select(vec2<u32>(u_input.b, arg_2), vec2<u32>(4294967295u, 4294967295u), vec2<bool>(true, true))) >> (~vec2<u32>(arg_2, u_input.b) % vec2<u32>(32u))) >> (~(~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(u_input.b, arg_2))) % vec2<u32>(32u)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.d) - -596f), _wgslsmith_f_op_f32(-var_0.a.d))) <= -635f;
    var var_2 = var_0.b;
    let var_3 = var_0;
    let var_4 = true;
    return var_3.b;
}

fn func_1(arg_0: f32) -> f32 {
    let var_0 = Struct_2(func_2(arg_0, Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1743f)) * -1000f)), abs(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.b, 11791u), vec3<u32>(u_input.a, u_input.a, u_input.a))))), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0 - 700f))), u_input.e, ~(~(~vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a))), _wgslsmith_f_op_f32(f32(-1f) * -726f), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, _wgslsmith_f_op_f32(-arg_0), arg_0) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-245f, arg_0, arg_0) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0, 219f, arg_0)))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(func_3(vec4<u32>(u_input.a, 1u, 0u, 0u), u_input.b, 43043u)), vec3<f32>(arg_0, arg_0, -2108f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-876f, 1000f, arg_0), vec3<f32>(-280f, 663f, 656f)) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0, arg_0, arg_0))))), func_2(arg_0, Struct_4(500f), u_input.a).e), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(1008f, 737f, 269f) + vec3<f32>(arg_0, 1219f, arg_0)), vec3<f32>(-557f, arg_0, -331f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -2162f, arg_0)))) + vec3<f32>(arg_0, func_2(-263f, Struct_4(204f), 4294967295u).e.x, _wgslsmith_f_op_f32(trunc(arg_0))))), _wgslsmith_div_vec2_u32(countOneBits(vec2<u32>(~62770u, u_input.b)), ~(~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 5085u), vec2<u32>(u_input.b, 0u)))));
    let var_1 = !(!(!select(vec3<bool>(false, false, false), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -828f));
    var var_3 = -u_input.d;
    var var_4 = vec2<i32>(-(-u_input.e.x ^ var_0.b.b.x), -47300i);
    return _wgslsmith_f_op_f32(step(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(847f + var_0.c.x) + var_0.a.d)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(185f - 291f))))) + 652f));
    let var_1 = _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a, var_0.a))));
    let var_2 = _wgslsmith_clamp_i32(2147483647i, 0i, ~_wgslsmith_mod_i32(26875i, ~0i));
    let var_3 = Struct_3(max(32537u | u_input.a, ~(u_input.a ^ 4294967295u)) < firstTrailingBit(u_input.a), ~_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(max(vec3<u32>(4294967295u, u_input.a, 49659u), vec3<u32>(22624u, 12630u, u_input.b)), ~vec3<u32>(4294967295u, 1u, 4294967295u)), abs(vec3<u32>(51325u, u_input.a, 22938u)) >> (reverseBits(vec3<u32>(u_input.b, u_input.b, u_input.a)) % vec3<u32>(32u))), Struct_2(func_2(_wgslsmith_f_op_f32(f32(-1f) * -163f), Struct_4(716f), u_input.a), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.a, var_0.a))), Struct_4(var_0.a), ~27440u), vec3<f32>(471f, var_0.a, var_1), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, -2606f, -311f) * vec3<f32>(var_1, -1000f, var_0.a)) * vec3<f32>(var_1, -1605f, -189f)), vec3<f32>(1f, 1f, 1f)), firstLeadingBit(max(vec2<u32>(u_input.a, u_input.b), ~vec2<u32>(u_input.b, 8180u)))));
    var var_4 = var_3.c;
    var_4 = Struct_2(Struct_1(_wgslsmith_f_op_f32(sign(var_4.b.d)), vec4<i32>(2147483647i, ~(-34093i), var_4.b.b.x, -(1i | var_2)), max(~select(var_3.c.a.c, var_3.c.b.c, vec4<bool>(var_3.a, var_3.a, var_3.a, false)), vec4<u32>(var_3.c.e.x, var_3.c.b.c.x ^ u_input.b, var_4.b.c.x, ~var_4.a.c.x)), 1169f, _wgslsmith_f_op_vec3_f32(var_3.c.d * _wgslsmith_f_op_vec3_f32(ceil(var_3.c.b.e)))), func_2(var_3.c.a.a, var_0, ~(~75877u ^ _wgslsmith_clamp_u32(4294967295u, 4294967295u, 4294967295u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 891f, var_0.a) - _wgslsmith_f_op_vec3_f32(round(var_3.c.a.e)))))), var_4.d, _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(var_4.b.c.yz, _wgslsmith_sub_vec2_u32(var_3.b.yx, vec2<u32>(4294967295u, 33293u))), vec2<u32>(var_3.b.x >> (u_input.b % 32u), ~17702u)) ^ _wgslsmith_sub_vec2_u32(~min(vec2<u32>(u_input.b, var_4.a.c.x), var_3.b.zz), var_3.c.e));
    var_4 = var_3.c;
    let x = u_input.a;
    s_output = StorageBuffer(~(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e.x, -1i, var_4.b.b.x), var_3.c.b.b.wwx)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1207f + var_0.a), var_4.c.x) + _wgslsmith_f_op_f32(f32(-1f) * -1547f)), _wgslsmith_f_op_f32(-var_0.a), -464f), vec2<u32>(var_3.b.x, _wgslsmith_mod_u32(43181u, 44946u)));
}

