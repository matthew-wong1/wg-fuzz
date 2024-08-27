struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 24> = array<vec4<u32>, 24>(vec4<u32>(67279u, 25727u, 17503u, 48087u), vec4<u32>(51020u, 23134u, 0u, 13838u), vec4<u32>(1u, 1u, 0u, 1u), vec4<u32>(4294967295u, 8922u, 53424u, 4294967295u), vec4<u32>(1u, 4294967295u, 0u, 0u), vec4<u32>(24112u, 1u, 4294967295u, 9235u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 4187u), vec4<u32>(10960u, 1400u, 95987u, 4294967295u), vec4<u32>(1u, 1u, 4294967295u, 4294967295u), vec4<u32>(0u, 85660u, 0u, 20231u), vec4<u32>(4294967295u, 41869u, 0u, 0u), vec4<u32>(0u, 0u, 44180u, 4294967295u), vec4<u32>(66415u, 3824u, 21172u, 4294967295u), vec4<u32>(1446u, 1u, 14531u, 4294967295u), vec4<u32>(4294967295u, 2166u, 1u, 837u), vec4<u32>(1u, 4294967295u, 67359u, 28552u), vec4<u32>(1u, 4294967295u, 1798u, 0u), vec4<u32>(29693u, 43488u, 0u, 19135u), vec4<u32>(22179u, 75375u, 4294967295u, 0u), vec4<u32>(21141u, 49272u, 91820u, 19664u), vec4<u32>(9u, 51279u, 79053u, 4294967295u), vec4<u32>(4294967295u, 10310u, 0u, 2337u), vec4<u32>(1u, 18029u, 53345u, 13986u), vec4<u32>(4363u, 1u, 9115u, 49116u));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<f32>) -> f32 {
    global0 = array<vec4<u32>, 24>();
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-713f, 379f))), arg_1.zz, true));
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1191f + _wgslsmith_f_op_f32(round(arg_1.x))), var_0.x, var_0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(arg_1.x)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-742f, -1387f, -1034f, -926f))), vec4<f32>(arg_1.x, arg_1.x, 871f, -627f))))));
    var var_2 = select(vec3<bool>(false, false, (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 73938u, 0u), vec3<u32>(4294967295u, 6114u, 22425u)) >= 26670u) != all(select(vec2<bool>(true, true), vec2<bool>(true, true), false))), select(vec3<bool>(true & select(true, false, true), true, true), vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true))), select(vec3<bool>(true, all(vec3<bool>(false, false, false)), any(vec3<bool>(false, false, false))), vec3<bool>(true, true, true), select(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(0u, 0u, 21370u)), ~105937u, all(vec3<bool>(true, false, true))) >= 1u));
    var_2 = vec3<bool>(true, !select(all(vec2<bool>(true, var_2.x)), var_2.x, var_2.x), var_2.x);
    return -1225f;
}

fn func_2(arg_0: vec2<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, arg_0.x), vec2<u32>(~arg_0.x, 55150u));
    var_0 = select(countOneBits((countOneBits(vec2<u32>(4294967295u, 0u)) << (arg_0 % vec2<u32>(32u))) ^ ~select(arg_0, arg_0, false)), ~_wgslsmith_add_vec2_u32(arg_0, _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), ~arg_0)), false);
    global0 = array<vec4<u32>, 24>();
    var_0 = _wgslsmith_sub_vec2_u32(~abs(countOneBits(_wgslsmith_add_vec2_u32(arg_0, vec2<u32>(arg_0.x, 1u)))), arg_0);
    let var_1 = Struct_3(Struct_2(true, Struct_1(u_input.a, select(true, true, true)), Struct_1(_wgslsmith_sub_i32(-33102i | u_input.a, u_input.a << (17723u % 32u)), true), _wgslsmith_f_op_f32(func_3(min(vec4<i32>(-25316i, -56974i, 2147483647i, u_input.a) ^ vec4<i32>(2147483647i, 2147483647i, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-846f, 664f, 805f) * vec3<f32>(-928f, 517f, -1375f))))), Struct_1(u_input.a, true)), Struct_1(_wgslsmith_mod_i32(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -2147483647i, u_input.a), vec3<i32>(u_input.a, 27047i, u_input.a))), u_input.a), false), Struct_2(any(vec3<bool>(false, true, true)) || true, Struct_1(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -1i, 2147483647i), vec3<i32>(-1000i, u_input.a, 2147483647i)), !all(vec3<bool>(true, false, true))), Struct_1(~(~2147483647i), true && select(false, false, false)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-704f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), Struct_1(_wgslsmith_div_i32(u_input.a, u_input.a), true)), !(true && any(vec3<bool>(true, true, true))), Struct_1(min(max(u_input.a, u_input.a), u_input.a) ^ _wgslsmith_add_i32(countOneBits(u_input.a), u_input.a), true));
    return Struct_1(18670i, true);
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> Struct_3 {
    global0 = array<vec4<u32>, 24>();
    let var_0 = Struct_3(Struct_2(true, Struct_1(8477i | u_input.a, !arg_1.b & true), func_2((vec2<u32>(0u, arg_2) >> (vec2<u32>(arg_2, arg_2) % vec2<u32>(32u))) >> (vec2<u32>(arg_2, 24391u) % vec2<u32>(32u))), 400f, arg_1), arg_1, Struct_2(-502f < _wgslsmith_f_op_f32(1285f + _wgslsmith_f_op_f32(1000f + arg_0)), arg_1, arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - -2412f))), arg_1), _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a, arg_1.a, -1i, u_input.a), -(vec4<i32>(7533i, -1i, -1i, u_input.a) | vec4<i32>(u_input.a, -6081i, -22833i, -31076i))) > -9320i, func_2(_wgslsmith_add_vec2_u32(max(~vec2<u32>(arg_2, 1u), _wgslsmith_div_vec2_u32(vec2<u32>(arg_2, 38672u), vec2<u32>(arg_2, arg_2))), min(vec2<u32>(arg_2, arg_2) ^ vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, arg_2)))));
    let var_1 = Struct_3(var_0.c, var_0.e, var_0.c, true, Struct_1(_wgslsmith_sub_i32(u_input.a, ~abs(5633i)), _wgslsmith_f_op_f32(-var_0.c.d) < _wgslsmith_div_f32(455f, _wgslsmith_div_f32(746f, -1240f))));
    return Struct_3(Struct_2(var_0.a.a | true, var_0.a.e, var_1.a.b, var_0.a.d, Struct_1(i32(-1i) * -10034i, true)), Struct_1(u_input.a, any(vec4<bool>(var_0.d && arg_1.b, true, true, 707u <= arg_2))), Struct_2(true, func_2(~vec2<u32>(arg_2, arg_2)), func_2(vec2<u32>(arg_2 << (15795u % 32u), ~47185u)), _wgslsmith_f_op_f32(f32(-1f) * -2241f), func_2(vec2<u32>(max(47146u, arg_2), arg_2 << (arg_2 % 32u)))), func_2(~(~_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 35285u), vec2<u32>(arg_2, arg_2)))).b, var_1.e);
}

fn func_1() -> vec4<f32> {
    global0 = array<vec4<u32>, 24>();
    global0 = array<vec4<u32>, 24>();
    var var_0 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(713f)) - _wgslsmith_f_op_f32(572f * 1424f)) * 1878f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(788f - _wgslsmith_f_op_f32(max(821f, -423f))))), func_2(vec2<u32>(1u, 1u)), _wgslsmith_div_u32(~21393u, ~1u));
    var var_1 = select(~vec4<i32>(countOneBits(-20663i), select(u_input.a, 0i, var_0.a.a), -2147483647i, var_0.c.e.a) ^ vec4<i32>(min(-40725i, -44735i) >> (1u % 32u), _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a, -64212i), reverseBits(vec2<i32>(u_input.a, var_0.a.c.a))), 1i << (_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 44999u), vec2<u32>(9147u, 6959u)) % 32u), max(~(-40040i), -52072i)), _wgslsmith_mod_vec4_i32(-(~countOneBits(vec4<i32>(var_0.c.b.a, u_input.a, u_input.a, u_input.a))), countOneBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, var_0.c.b.a, 22602i, u_input.a), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, var_0.c.c.a, 9561i, u_input.a), vec4<i32>(u_input.a, -2147483647i, var_0.a.e.a, u_input.a)), vec4<i32>(var_0.a.c.a, u_input.a, 8566i, -1i)))), !func_2(_wgslsmith_clamp_vec2_u32(vec2<u32>(16158u, 2902u), vec2<u32>(4294967295u, 46579u), vec2<u32>(13429u, 23686u)) & ~vec2<u32>(4294967295u, 53697u)).b);
    let var_2 = vec3<i32>(var_1.x, ~(-2147483647i), _wgslsmith_div_i32(20264i, ~(_wgslsmith_sub_i32(-1i, var_1.x) << (4294967295u % 32u))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.c.d, 512f, var_0.a.d, 1339f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a.d, 153f, var_0.a.d, 246f), vec4<f32>(-1000f, var_0.a.d, -387f, -162f), vec4<bool>(true, true, var_0.e.b, var_0.d))))))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -566f), -367f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.d * 509f) * func_4(var_0.c.d, var_0.a.c, 4294967295u).c.d), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_0.c.d)), var_0.c.d)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 24>();
    let var_0 = Struct_1(12009i, true);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_1()), _wgslsmith_f_op_vec4_f32(vec4<f32>(1917f, 2242f, -1606f, -158f) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(519f, 598f, 1000f, -1848f)))), select(select(vec4<bool>(true, var_0.b, var_0.b, var_0.b), vec4<bool>(var_0.b, var_0.b, false, var_0.b), var_0.b), select(vec4<bool>(var_0.b, var_0.b, true, var_0.b), vec4<bool>(var_0.b, true, var_0.b, var_0.b), vec4<bool>(var_0.b, var_0.b, var_0.b, false)), false)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), -735f, -108f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-480f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1028f, 1096f, -1073f, -1000f) - vec4<f32>(1108f, -1878f, 1316f, -1135f)))));
    global0 = array<vec4<u32>, 24>();
    global0 = array<vec4<u32>, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(var_1.xyz))));
}

