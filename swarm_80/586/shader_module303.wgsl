struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: vec4<f32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
    c: bool,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: Struct_4,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
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

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32) -> u32 {
    var var_0 = !select(vec3<bool>(!all(vec4<bool>(false, false, true, false)), any(vec3<bool>(false, true, true)), all(vec3<bool>(true, true, true))), !vec3<bool>(-15672i > arg_0, false, any(vec4<bool>(true, false, false, true))), u_input.a > abs(u_input.a));
    return u_input.a;
}

fn func_2(arg_0: vec3<f32>) -> u32 {
    var var_0 = _wgslsmith_mult_u32(4727u, ~u_input.a) != _wgslsmith_add_u32(max(reverseBits(1u), ~_wgslsmith_sub_u32(u_input.a, u_input.a)), _wgslsmith_div_u32(func_3(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(-28188i, 9588i))), 21761u));
    var_0 = true;
    var var_1 = Struct_2(_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(abs(max(vec2<u32>(45856u, 1u), vec2<u32>(u_input.a, 40000u))), vec2<u32>(~34255u, u_input.a)), min(~vec2<u32>(u_input.a, 31674u), ~vec2<u32>(u_input.a, u_input.a))), firstLeadingBit(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.a, u_input.a, 20820u), vec4<u32>(u_input.a, u_input.a, u_input.a, 49934u))) & min(u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(7691u, u_input.a), ~vec2<u32>(1u, u_input.a))), !(!(false && (62542u >= u_input.a))));
    var var_2 = Struct_4(Struct_1(arg_0, _wgslsmith_mod_i32(-u_input.b, 1i) & select(u_input.b, 0i, var_1.c), _wgslsmith_div_u32(~1u, var_1.a.x), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1066f, 1214f, _wgslsmith_f_op_f32(-arg_0.x), -1699f))), ~min(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(-1i, u_input.b, 16462i)), vec3<i32>(u_input.b, 65519i, 0i))), false, Struct_2(abs(var_1.a), ~func_3(~u_input.b), var_1.c));
    var var_3 = ~(~abs(var_1.a));
    return ~var_1.a.x;
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_4) -> f32 {
    let var_0 = vec3<i32>(-1i << (func_2(_wgslsmith_f_op_vec3_f32(-arg_1.a.d.www)) % 32u), arg_1.a.e.x | arg_1.a.b, ~u_input.b) & ~vec3<i32>(u_input.b, arg_1.a.e.x ^ arg_1.a.e.x, _wgslsmith_clamp_i32(1i | arg_1.a.e.x, 1i >> (arg_1.a.c % 32u), arg_1.a.e.x));
    var var_1 = Struct_5(arg_0.x, Struct_4(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-1320f * arg_1.a.d.x), -398f, 1799f), -2450i, ~0u, vec4<f32>(-1000f, _wgslsmith_f_op_f32(trunc(arg_1.a.d.x)), 684f, _wgslsmith_f_op_f32(floor(arg_1.a.a.x))), vec3<i32>(var_0.x, firstLeadingBit(-1i), u_input.b)), !(!(-2147483647i != var_0.x)), Struct_2(_wgslsmith_sub_vec2_u32(vec2<u32>(37704u, u_input.a), vec2<u32>(1u, 0u) << (arg_1.c.a % vec2<u32>(32u))), ~12376u, true)), ~(~u_input.a));
    let var_2 = var_1.b.a;
    var var_3 = arg_1.c;
    let var_4 = var_1.b.a.c;
    return var_1.b.a.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_1(vec3<bool>(true, true, true), Struct_4(Struct_1(vec3<f32>(-226f, -1885f, -128f), 1343i, 2813u, vec4<f32>(-1284f, 1100f, -1002f, -1169f), vec3<i32>(-1i, u_input.b, u_input.b)), false, Struct_2(vec2<u32>(0u, 1u), u_input.a, true)))), -941f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1795f)))));
    let var_1 = _wgslsmith_mod_vec4_u32(~(~abs(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))), ~(~(vec4<u32>(1u, u_input.a, u_input.a, u_input.a) | vec4<u32>(u_input.a, u_input.a, 9813u, u_input.a)))) | select(firstLeadingBit(~vec4<u32>(1u, u_input.a, 55320u, 85874u)), ~(~vec4<u32>(u_input.a, 62043u, u_input.a, u_input.a)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec3<bool>(false, true, false))));
    var var_2 = true;
    var var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), var_0.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(exp2(var_0.x)))))) != -359f;
    var_2 = true;
    var var_4 = false;
    var var_5 = Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_1(vec3<bool>(false, false, true), Struct_4(Struct_1(vec3<f32>(1264f, -674f, var_0.x), u_input.b, 0u, vec4<f32>(var_0.x, 573f, var_0.x, var_0.x), vec3<i32>(u_input.b, u_input.b, 2147483647i)), true, Struct_2(var_1.zw, 38516u, false)))), _wgslsmith_f_op_f32(sign(-235f)), var_0.x) * vec3<f32>(_wgslsmith_f_op_f32(128f * -1843f), _wgslsmith_f_op_f32(f32(-1f) * -920f), _wgslsmith_f_op_f32(sign(var_0.x)))), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(select(vec3<i32>(u_input.b, -5328i, 7611i), vec3<i32>(u_input.b, -49557i, u_input.b), vec3<bool>(false, true, false)), vec3<i32>(u_input.b, u_input.b, u_input.b)), vec3<i32>(_wgslsmith_sub_i32(u_input.b, 1i), -u_input.b, 2147483647i)), countOneBits(u_input.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1020f, var_0.x, var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, -969f, -334f, 1336f))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 1078f, var_0.x, 826f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -735f, -588f, var_0.x) * vec4<f32>(-620f, 1132f, var_0.x, 434f)))), -(~(vec3<i32>(-35319i, 2147483647i, u_input.b) ^ vec3<i32>(-19989i, u_input.b, u_input.b)))), !(!(u_input.b <= u_input.b)), Struct_2(~vec2<u32>(var_1.x, _wgslsmith_add_u32(u_input.a, var_1.x)), countOneBits(u_input.a), var_0.x <= var_0.x));
    var var_6 = Struct_4(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_5.a.a.x, var_5.a.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_5.a.d.x))), _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(1456f * 1564f))), _wgslsmith_dot_vec4_i32(reverseBits(-vec4<i32>(var_5.a.b, 0i, 2147483647i, 30463i)), ~_wgslsmith_sub_vec4_i32(vec4<i32>(var_5.a.e.x, -14291i, 29244i, 0i), vec4<i32>(var_5.a.b, 4256i, u_input.b, var_5.a.e.x))), _wgslsmith_dot_vec3_u32(vec3<u32>(63921u, var_5.c.b & u_input.a, ~var_1.x), vec3<u32>(13132u, _wgslsmith_dot_vec3_u32(var_1.xxz, vec3<u32>(u_input.a, 1u, u_input.a)), ~var_5.c.b)), vec4<f32>(-1866f, var_5.a.d.x, var_0.x, var_5.a.a.x), _wgslsmith_mult_vec3_i32(-_wgslsmith_sub_vec3_i32(var_5.a.e, vec3<i32>(40970i, var_5.a.b, var_5.a.b)), _wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.b, u_input.b, 39591i), max(var_5.a.e, var_5.a.e)))), var_5.c.c, Struct_2(var_5.c.a ^ var_5.c.a, 71105u, countOneBits(_wgslsmith_sub_u32(var_5.c.b, 4294967295u)) != 77872u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(241f * 876f), _wgslsmith_f_op_f32(func_1(vec3<bool>(false, false, var_5.c.c), Struct_4(Struct_1(vec3<f32>(var_0.x, var_5.a.d.x, var_0.x), -30713i, var_1.x, var_5.a.d, var_6.a.e), false, Struct_2(vec2<u32>(var_1.x, var_5.a.c), 11326u, var_5.c.c))))) * _wgslsmith_f_op_f32(max(var_6.a.a.x, _wgslsmith_f_op_f32(-1794f * 1100f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-679f * var_0.x)) * _wgslsmith_f_op_f32(624f * -124f)), var_5.c.c)), -(max(1i, min(0i, u_input.b)) << (1u % 32u)));
}

