struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: i32,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec2<f32>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: i32,
    c: vec2<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec2<i32> = vec2<i32>(1i, -1i);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3() -> bool {
    let var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1559f, 183f) - _wgslsmith_f_op_f32(max(533f, 1000f))))), vec3<f32>(939f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -598f) - _wgslsmith_f_op_f32(f32(-1f) * -788f)), _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(trunc(817f))))), ~(-(~global1.x)), false, _wgslsmith_add_i32(abs(-2792i), global1.x) == _wgslsmith_div_i32(countOneBits(global1.x), ~9039i)), 16901u, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(f32(-1f) * -839f)), 1496f))), Struct_2(global1.x, -(~_wgslsmith_mod_vec3_i32(vec3<i32>(global1.x, global1.x, global1.x), vec3<i32>(global1.x, -32191i, 14836i)))));
    var var_1 = !var_0.a.e;
    var_1 = var_0.a.e;
    let var_2 = 1258f;
    var var_3 = !vec3<bool>(_wgslsmith_sub_u32(_wgslsmith_sub_u32(var_0.b, 0u), u_input.a) != _wgslsmith_mod_u32(u_input.a ^ 31406u, _wgslsmith_add_u32(var_0.b, var_0.b)), var_0.a.e != any(select(vec4<bool>(false, false, false, var_0.a.e), vec4<bool>(false, var_0.a.e, true, var_0.a.d), vec4<bool>(var_0.a.d, false, false, false))), var_2 > _wgslsmith_div_f32(var_2, -875f));
    return any(!(!select(vec4<bool>(true, true, true, false), select(vec4<bool>(true, true, var_0.a.e, var_3.x), vec4<bool>(var_3.x, var_0.a.e, var_0.a.d, var_0.a.e), vec4<bool>(var_3.x, true, var_0.a.e, var_0.a.d)), vec4<bool>(var_3.x, var_3.x, var_0.a.d, false))));
}

fn func_4(arg_0: vec4<bool>) -> i32 {
    var var_0 = 813f;
    var var_1 = Struct_2(max(2147483647i, global1.x), countOneBits(~vec3<i32>(~0i, 8677i << (u_input.a % 32u), 20378i)));
    var_1 = Struct_2(-1i, vec3<i32>(-(33979i >> (~4294967295u % 32u)), ~_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 17827i, -28094i), var_1.b) | var_1.a, -3824i));
    let var_2 = Struct_2(var_1.a, vec3<i32>(global1.x >> (u_input.a % 32u), ~(~global1.x) ^ global1.x, -53896i));
    global0 = u_input.a;
    return var_2.a;
}

fn func_2(arg_0: vec2<u32>) -> bool {
    let var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1517f * 1116f))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-266f, -706f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-833f, 945f, -106f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1199f, -607f, -127f)))), -(-53483i ^ (global1.x ^ global1.x)), false, !select(false, false, true) == true), ~(~1u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(791f, 893f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1578f, 346f))) + vec2<f32>(_wgslsmith_f_op_f32(797f * -1000f), _wgslsmith_div_f32(-1015f, -2359f)))), Struct_2(i32(-1i) * -global1.x, _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(2406i, global1.x), _wgslsmith_clamp_i32(-2190i, global1.x, -35990i), 12276i ^ global1.x), vec3<i32>(-1i) * -vec3<i32>(global1.x, global1.x, -2147483647i))));
    let var_1 = var_0.a.b.zz;
    let var_2 = 21641i;
    var var_3 = Struct_3(Struct_1(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(568f, 329f, 1261f) * var_0.a.b)))), func_4(vec4<bool>(true, func_3(), var_0.a.c <= 0i, !var_0.a.d)), !var_0.a.d, !var_0.a.d), _wgslsmith_mod_u32(u_input.a, ~1u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.b.x, -892f) - vec2<f32>(-120f, var_0.a.b.x)) * var_1)), Struct_2(var_2, vec3<i32>(global1.x, ~_wgslsmith_div_i32(-70379i, 2147483647i), _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(var_2, var_0.a.c)), ~var_0.d.b.zz))));
    var var_4 = Struct_3(var_3.a, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u ^ var_0.b, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, var_3.b, 15376u), vec3<u32>(20242u, 4294967295u, var_3.b)), ~var_3.b, 37572u), ~(~vec4<u32>(u_input.a, 10864u, u_input.a, 12451u))), select(select(~vec4<u32>(1u, var_3.b, var_3.b, 1u), ~vec4<u32>(0u, var_0.b, arg_0.x, var_0.b), vec4<bool>(var_3.a.e, var_3.a.d, true, false)), _wgslsmith_mod_vec4_u32(select(vec4<u32>(var_0.b, var_3.b, var_3.b, var_3.b), vec4<u32>(60467u, 1u, 4294967295u, 60958u), vec4<bool>(var_0.a.d, false, true, var_0.a.d)), ~vec4<u32>(var_0.b, 46u, arg_0.x, 8328u)), true)), var_1, Struct_2(~_wgslsmith_mult_i32(var_0.d.b.x >> (0u % 32u), _wgslsmith_dot_vec3_i32(var_3.d.b, vec3<i32>(-1i, global1.x, global1.x))), ~_wgslsmith_div_vec3_i32(-var_3.d.b, _wgslsmith_add_vec3_i32(vec3<i32>(var_3.d.a, var_0.d.a, -55392i), vec3<i32>(var_3.a.c, global1.x, global1.x)))));
    return any(select(select(vec2<bool>(true, true), vec2<bool>(false, func_3()), vec2<bool>(true, var_0.a.e)), select(!select(vec2<bool>(var_4.a.e, var_0.a.d), vec2<bool>(false, var_3.a.d), var_3.a.d), select(select(vec2<bool>(var_0.a.e, false), vec2<bool>(true, var_3.a.d), vec2<bool>(var_4.a.e, false)), !vec2<bool>(true, var_0.a.d), vec2<bool>(true, true)), var_0.a.e), (var_4.a.e & true) && var_3.a.d));
}

fn func_1(arg_0: vec2<bool>, arg_1: u32, arg_2: vec2<bool>, arg_3: bool) -> f32 {
    var var_0 = 1f;
    var var_1 = any(vec3<bool>(select(any(vec2<bool>(arg_2.x, arg_0.x)), !arg_3, select(true, false, arg_2.x)), func_2(_wgslsmith_div_vec2_u32(vec2<u32>(58591u, 4294967295u), vec2<u32>(arg_1, u_input.a))), !arg_2.x)) & arg_2.x;
    var_0 = -918f;
    var_1 = !(!(!arg_0.x));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(457f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1000f, 177f)) + _wgslsmith_f_op_f32(f32(-1f) * -590f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-692f)) + _wgslsmith_f_op_f32(f32(-1f) * -1270f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1261f + _wgslsmith_f_op_f32(abs(-901f))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -435f)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.x))) + var_2.x)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.x))))), -142f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1(vec2<bool>(true, false), 0u, vec2<bool>(true, true), false)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(172f - 713f))) == -1051f, any(vec2<bool>(true, true)), true);
    var var_1 = Struct_1(_wgslsmith_div_f32(2341f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -571f), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1094f, 680f), -1407f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-138f))), 1000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(834f, -511f)), _wgslsmith_f_op_f32(round(1278f)))))), global1.x, var_0.x, ((44024u < _wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a)) && all(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, false), true))) && all(!(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x))));
    var_0 = vec3<bool>(true, all(!var_0.zz), func_2(~(~vec2<u32>(12871u, u_input.a) | ~vec2<u32>(26662u, 103362u))));
    var_0 = !select(select(!(!vec3<bool>(var_1.e, false, false)), select(select(vec3<bool>(var_1.d, false, true), vec3<bool>(var_0.x, false, true), vec3<bool>(var_1.e, true, true)), vec3<bool>(var_0.x, false, false), select(vec3<bool>(false, var_1.d, true), vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(var_0.x, true, var_1.e))), var_0.x), !vec3<bool>(true, true, -2147483647i == global1.x), true);
    var_1 = Struct_1(_wgslsmith_f_op_f32(select(583f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.b.x, var_1.a)) * 1070f) + var_1.b.x), true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-479f, var_1.b.x, -1033f))) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.a, 1724f, var_1.b.x), var_1.b))), var_1.b, !select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(true, false, var_0.x), vec3<bool>(true, var_1.e, var_0.x)))) - var_1.b), max(1i, var_1.c), true, var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-873f, var_1.a, -1698f, -181f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -679f, var_1.a, -2147f)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-116f, -1033f, -876f, var_1.b.x))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_1.a, var_1.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2484f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a, var_1.b.x) - _wgslsmith_div_vec2_f32(var_1.b.yy, var_1.b.xx)))), 4294967295u, _wgslsmith_mod_vec3_i32(~(-vec3<i32>(-2147483647i, 8098i, 9332i)), vec3<i32>(global1.x, ~min(-2147483647i, var_1.c), 80887i)));
}

