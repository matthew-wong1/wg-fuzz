struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool, arg_1: vec3<i32>) -> f32 {
    let var_0 = Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1456f, 1118f, _wgslsmith_div_f32(1000f, -1000f)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, 1353f, 203f))))), select(select(vec3<bool>(false, arg_0, arg_0), vec3<bool>(true, arg_0, arg_0), vec3<bool>(false, arg_0, true)), select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_0, arg_0, false), vec3<bool>(false, false, false)), !vec3<bool>(arg_0, false, arg_0)))), vec3<f32>(258f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, 389f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1282f + 1000f) - 762f))), _wgslsmith_sub_i32(reverseBits(u_input.c.x) | _wgslsmith_mod_i32(-25149i | u_input.a.x, i32(-1i) * -2147483647i), u_input.a.x), u_input.c, firstTrailingBit(1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1040f)))));
    var var_1 = ~(~max(vec4<u32>(firstLeadingBit(u_input.b), u_input.d, 45029u, var_0.d), vec4<u32>(u_input.b >> (u_input.b % 32u), 47086u, countOneBits(var_0.d), u_input.d)));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-var_0.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1184f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(var_0.e)))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1260f, _wgslsmith_div_f32(var_0.e, var_0.a.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(948f * var_0.e)))));
    var var_3 = Struct_1(u_input.c, arg_1.zy, u_input.d);
    var var_4 = _wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(~_wgslsmith_mult_vec3_u32(var_1.yxw, var_1.xxz), vec3<u32>(~var_3.c, 26030u, 31711u)), abs(~select(firstTrailingBit(vec3<u32>(var_0.d, 1u, var_3.c)), firstTrailingBit(var_1.www), vec3<bool>(arg_0, true, arg_0))));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1f)))));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1221f, -142f, -1000f))))), vec3<f32>(642f, -706f, _wgslsmith_f_op_f32(func_3(any(vec2<bool>(true, false)), -u_input.c.wyx)))))));
    var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(select(var_0.x, 377f, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(true, u_input.a)) * _wgslsmith_div_f32(var_0.x, 1248f)))) - _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, -265f))), var_0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(var_0.x, var_0.x)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(2212f, 1184f, -702f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -149f, var_0.x)), vec3<bool>(true, false, true))), vec3<f32>(var_0.x, _wgslsmith_f_op_f32(var_0.x + var_0.x), -138f), select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true))))));
    let var_1 = vec4<i32>(~(-u_input.c.x), _wgslsmith_dot_vec3_i32(-vec3<i32>(i32(-1i) * -11779i, 33923i, min(u_input.a.x, u_input.c.x)), u_input.c.wwz), _wgslsmith_dot_vec3_i32(firstLeadingBit(u_input.c.zzy), vec3<i32>(-1i) * -u_input.a), i32(-1i) * -select(u_input.a.x, u_input.c.x, var_0.x <= var_0.x));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(func_3(false, vec3<i32>(1i, u_input.a.x, 2147483647i))), all(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(-562f + _wgslsmith_f_op_f32(-var_0.x)));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, _wgslsmith_f_op_f32(764f + var_2), _wgslsmith_f_op_f32(_wgslsmith_div_f32(955f, var_2) + var_0.x))));
    return Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(-50102i, firstTrailingBit(2147483647i)), -(~(-58367i)), reverseBits(-var_1.x), _wgslsmith_dot_vec4_i32(var_1, abs(u_input.c))), _wgslsmith_mult_vec4_i32(u_input.c, reverseBits(~u_input.c)), var_1), _wgslsmith_mult_vec2_i32(select(select(vec2<i32>(0i, u_input.c.x), vec2<i32>(2147483647i, 26379i), vec2<bool>(false, true)) ^ _wgslsmith_mod_vec2_i32(vec2<i32>(-23821i, u_input.c.x), u_input.a.xy), vec2<i32>(~var_1.x, var_1.x), var_1.x == (i32(-1i) * -1i)), var_1.xw), ~17721u);
}

fn func_1() -> u32 {
    let var_0 = func_2();
    var var_1 = 4294967295u;
    let var_2 = _wgslsmith_add_u32(5544u, func_2().c);
    var var_3 = vec2<bool>(u_input.c.x <= firstTrailingBit(~(-9835i)), any(vec3<bool>(true, false, !all(vec2<bool>(false, false)))));
    var var_4 = func_2();
    return ~func_2().c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(540f, 1632f, -816f), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 2247f, 222f) - vec3<f32>(2456f, -624f, -158f)))) * vec3<f32>(-330f, -1598f, -1165f))), 18772i, u_input.c, ~func_1() | func_1(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-376f - 628f) - 1f))) + _wgslsmith_f_op_f32(func_3(!any(vec2<bool>(false, true)), vec3<i32>(_wgslsmith_div_i32(0i, u_input.a.x), _wgslsmith_mod_i32(-27670i, u_input.a.x), min(u_input.c.x, -59805i))))));
    let var_1 = vec4<f32>(1727f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.e, var_0.e)), _wgslsmith_f_op_f32(step(-1011f, _wgslsmith_f_op_f32(var_0.e + 214f))))), var_0.e, 884f);
    var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-var_1.zzx), countOneBits(-(~_wgslsmith_sub_i32(var_0.c.x, var_0.b))), _wgslsmith_div_vec4_i32(-max(firstTrailingBit(var_0.c), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, u_input.c.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, 44574i, 2147483647i, 1i))), reverseBits(vec4<i32>(~(-6581i), _wgslsmith_mult_i32(-2147483647i, 1i), u_input.c.x & -65531i, -17987i))), _wgslsmith_div_u32(abs(_wgslsmith_add_u32(func_1(), 4294967295u)), ~_wgslsmith_add_u32(57960u, 0u)), var_0.e);
    var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-var_1.wzx), -12723i, u_input.c, func_1(), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-657f - _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-2060f, var_1.x)))), -1248f)));
    let var_2 = vec2<bool>(true, any(select(vec2<bool>(all(vec4<bool>(true, true, false, true)), true), select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), select(vec2<bool>(false, true), vec2<bool>(false, false), false), any(vec3<bool>(false, false, true))), vec2<bool>(all(vec2<bool>(false, false)), true))));
    let var_3 = Struct_2(var_0.a, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.c.x, -16292i), var_0.c.zy) ^ 1i, 1i), ~u_input.c.wyy), vec4<i32>(~(_wgslsmith_mod_i32(u_input.c.x, var_0.b) << (_wgslsmith_mod_u32(u_input.d, 40952u) % 32u)), firstLeadingBit(var_0.c.x), 21017i, _wgslsmith_mult_i32(_wgslsmith_mult_i32(~0i, -u_input.c.x), var_0.b)), 23311u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.e, -1000f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-926f + var_0.e)))));
    var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(floor(var_1.zxz)), -46679i, countOneBits(reverseBits(var_0.c)), var_3.d, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(-var_3.a.x))));
    var var_4 = var_0.d;
    let x = u_input.a;
    s_output = StorageBuffer(func_2().c, vec3<i32>(i32(-1i) * -2147483647i, reverseBits(firstLeadingBit(_wgslsmith_div_i32(u_input.a.x, 76238i))), var_3.b), _wgslsmith_f_op_vec4_f32(sign(var_1)), ~abs(firstTrailingBit(vec2<u32>(var_0.d, var_3.d) ^ vec2<u32>(var_3.d, u_input.d))));
}

