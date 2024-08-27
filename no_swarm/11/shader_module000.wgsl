struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<bool>,
    d: vec2<f32>,
    e: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: bool,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: Struct_4, arg_3: i32) -> vec3<bool> {
    var var_0 = arg_2.d.c;
    let var_1 = max(_wgslsmith_sub_vec3_i32(-vec3<i32>(arg_3, arg_3, arg_3), max(u_input.a.zyx, ~u_input.a.zwy)), -firstTrailingBit(vec3<i32>(arg_3, u_input.a.x, -1i))) | vec3<i32>(47275i, _wgslsmith_mult_i32(~(~u_input.c.x), countOneBits(arg_3 >> (arg_2.b.x % 32u))), u_input.a.x);
    var var_2 = max(_wgslsmith_mult_u32(~4294967295u, (abs(30272u) << (arg_2.b.x % 32u)) << (_wgslsmith_sub_u32(~arg_2.b.x, _wgslsmith_mod_u32(4294967295u, 51146u)) % 32u)), 4294967295u);
    var var_3 = Struct_1(all(!select(vec4<bool>(arg_2.c, false, true, arg_2.d.a), vec4<bool>(arg_0, arg_0, var_0.x, arg_0), vec4<bool>(true, true, arg_0, arg_2.c))), all(vec3<bool>(true, select(arg_0, all(vec2<bool>(false, arg_2.c)), any(vec4<bool>(arg_2.d.a, arg_0, false, arg_0))), true)), arg_2.d.c, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(arg_1 * -1326f), _wgslsmith_f_op_f32(-170f + arg_1)))))), arg_1);
    let var_4 = _wgslsmith_div_u32(u_input.d, abs(32850u));
    return !vec3<bool>(all(vec4<bool>(!arg_0, !arg_2.c, all(vec4<bool>(true, var_3.b, arg_2.c, false)), false)), true, true);
}

fn func_2() -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1000f, 987f, 1000f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1579f, 1144f, 637f), vec3<f32>(-1587f, -176f, 1000f), true)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-103f, -512f, 354f) - vec3<f32>(-1000f, -1618f, -1000f)) - vec3<f32>(-1000f, -191f, 1000f))) - vec3<f32>(_wgslsmith_f_op_f32(ceil(-1270f)), -786f, _wgslsmith_div_f32(-155f, -313f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, 991f))), -876f, 573f)), !vec3<bool>(false, _wgslsmith_f_op_f32(trunc(-869f)) != _wgslsmith_f_op_f32(158f + 1112f), _wgslsmith_sub_i32(u_input.c.x, u_input.a.x) <= abs(u_input.a.x))));
    var var_1 = Struct_1(true, true, !select(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), true | all(vec3<bool>(false, false, true))), vec2<f32>(var_0.x, var_0.x), _wgslsmith_div_f32(var_0.x, 177f));
    var_1 = Struct_1(false, var_1.b, func_3(select(all(vec2<bool>(true, false)), var_1.c.x, all(!var_1.c)), _wgslsmith_f_op_f32(round(-595f)), Struct_4(_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(u_input.e.xz, u_input.e.zy), u_input.e.yx), _wgslsmith_div_vec2_u32(u_input.e.yz, u_input.e.zz), false, Struct_1(var_1.c.x & var_1.a, !var_1.a, vec3<bool>(false, var_1.b, var_1.c.x), _wgslsmith_f_op_vec2_f32(-var_0.xz), var_1.d.x)), _wgslsmith_div_i32(u_input.a.x >> (~19964u % 32u), _wgslsmith_sub_i32(0i, u_input.a.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1111f, 886f) * vec2<f32>(-172f, var_1.d.x)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1035f, var_1.e)))), var_1.d.x);
    let var_2 = all(func_3(true, _wgslsmith_f_op_f32(var_1.d.x - _wgslsmith_f_op_f32(-var_1.d.x)), Struct_4(~u_input.e.xz | u_input.e.zy, _wgslsmith_mod_vec2_u32(max(u_input.e.yx, vec2<u32>(u_input.d, 1u)), reverseBits(vec2<u32>(0u, 0u))), select(any(vec2<bool>(var_1.b, false)), true, false || var_1.b), Struct_1(true, u_input.c.x > -5232i, !vec3<bool>(var_1.b, var_1.c.x, false), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1215f, var_0.x), var_1.d)), var_0.x)), -firstTrailingBit(43375i)).xz);
    let var_3 = u_input.e.x;
    return var_1.c.x;
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_2) -> vec3<i32> {
    let var_0 = countOneBits(-45215i);
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-399f, _wgslsmith_f_op_f32(-730f + -429f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.x, arg_1.a.x)))), vec2<f32>(arg_1.a.x, arg_1.a.x), any(select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), true))));
    var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.a + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-345f, 1846f)))) + arg_1.a) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1075f, 1288f)))), _wgslsmith_div_vec2_f32(arg_1.a, arg_1.a)));
    var_1 = _wgslsmith_f_op_vec2_f32(arg_1.a * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(arg_1.a))));
    var_1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * arg_1.a.x)), _wgslsmith_f_op_f32(-arg_1.a.x), func_2())), var_1.x), var_1.x);
    return u_input.a.ywx;
}

fn func_4(arg_0: i32, arg_1: Struct_4, arg_2: vec4<u32>, arg_3: Struct_4) -> vec2<u32> {
    var var_0 = vec2<bool>(false, true);
    var var_1 = Struct_4(arg_2.yw >> (~abs(~vec2<u32>(14393u, arg_1.a.x)) % vec2<u32>(32u)), firstTrailingBit(~(~(~u_input.e.yy))), 66974u < (~1u << (_wgslsmith_div_u32(34439u, arg_2.x) % 32u)), Struct_1(select(!all(vec2<bool>(arg_1.d.a, false)), arg_1.d.a, var_0.x), true | ((false || arg_3.d.c.x) & func_3(false, arg_1.d.d.x, Struct_4(vec2<u32>(1u, 65366u), arg_1.b, var_0.x, Struct_1(true, arg_3.c, arg_3.d.c, vec2<f32>(-148f, arg_3.d.d.x), -533f)), arg_0).x), vec3<bool>(all(select(vec2<bool>(arg_3.c, true), arg_1.d.c.zy, true)), true, var_0.x || all(vec2<bool>(arg_3.d.b, arg_3.d.b))), vec2<f32>(-855f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(732f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(534f * arg_1.d.d.x), arg_1.d.e)))));
    var_1 = arg_3;
    let var_2 = ~_wgslsmith_sub_i32(~_wgslsmith_dot_vec2_i32(u_input.c, countOneBits(vec2<i32>(arg_0, 0i))), _wgslsmith_clamp_i32(func_1(vec4<i32>(u_input.a.x, u_input.a.x, arg_0, arg_0), Struct_2(arg_3.d.d, var_1.b.x)).x << (arg_3.b.x % 32u), u_input.a.x, _wgslsmith_div_i32(arg_0, _wgslsmith_mod_i32(14040i, -2147483647i))));
    let var_3 = abs((_wgslsmith_mod_vec4_i32(u_input.a, u_input.a) << (firstLeadingBit(vec4<u32>(arg_1.b.x, var_1.a.x, 1612u, u_input.b)) % vec4<u32>(32u))) & (u_input.a ^ ~u_input.a)) & firstLeadingBit(countOneBits(countOneBits(u_input.a)));
    return vec2<u32>(12362u, u_input.d);
}

fn func_5(arg_0: vec2<u32>) -> f32 {
    let var_0 = ~select(~(~(~vec4<u32>(arg_0.x, u_input.d, u_input.b, 4294967295u))), _wgslsmith_sub_vec4_u32(vec4<u32>(116060u, 0u, arg_0.x, ~0u), vec4<u32>(_wgslsmith_clamp_u32(0u, 0u, u_input.d), 27656u, ~u_input.d, 1u >> (0u % 32u))), vec4<bool>(true, true, true, true));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(min(-106f, 974f)), _wgslsmith_div_f32(-2278f, 1261f), _wgslsmith_f_op_f32(select(-347f, 810f, false))), vec3<f32>(1f, 1f, 1f))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1522f, -644f, 212f)) + vec3<f32>(498f, -1991f, -1453f))))));
    let var_2 = ~(-(firstLeadingBit(u_input.c.x) >> (16350u % 32u))) & (_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(12572i, 1i, 0i), vec3<i32>(2147483647i, u_input.c.x, 0i))), ~(u_input.a.wz & u_input.a.zy)) ^ min(countOneBits(_wgslsmith_dot_vec3_i32(u_input.a.xwx, vec3<i32>(u_input.c.x, u_input.c.x, -1i))), min(i32(-1i) * -5967i, -u_input.a.x)));
    return _wgslsmith_f_op_f32(-810f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1632f))), 1000f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(u_input.e.yx) & ~(~vec2<u32>(u_input.d, ~84061u));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-724f, -369f))) * _wgslsmith_f_op_f32(f32(-1f) * -561f)) + -282f));
    var_1 = 1090f;
    var_1 = _wgslsmith_div_f32(-415f, _wgslsmith_f_op_f32(func_5(func_4(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, u_input.a.x, -42542i), vec3<i32>(-1i, -50172i, 39953i)), func_1(u_input.a, Struct_2(vec2<f32>(2198f, -748f), var_0.x))), Struct_4(var_0 << (vec2<u32>(var_0.x, 45849u) % vec2<u32>(32u)), abs(vec2<u32>(18970u, u_input.b)), any(vec3<bool>(true, false, true)), Struct_1(false, true, vec3<bool>(true, true, true), vec2<f32>(-930f, 971f), -1057f)), ~(~vec4<u32>(u_input.d, 1u, 53058u, var_0.x)), Struct_4(max(vec2<u32>(1u, 1u), vec2<u32>(var_0.x, 65269u)), _wgslsmith_clamp_vec2_u32(u_input.e.zx, u_input.e.xx, var_0), true, Struct_1(false, false, vec3<bool>(true, true, true), vec2<f32>(2418f, 590f), -1000f))))));
    var_1 = _wgslsmith_f_op_f32(ceil(-1599f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(292f + -223f)))), 0i, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_5(vec2<u32>(u_input.b, u_input.b))), 240f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-774f + -1623f), -813f)), -1000f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1006f), _wgslsmith_f_op_f32(ceil(-1456f)), -334f, -146f))));
}

