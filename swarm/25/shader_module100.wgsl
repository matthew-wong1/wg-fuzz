struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec3<i32>,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec4<u32>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: vec2<i32>,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec4<f32>, 18> = array<vec4<f32>, 18>(vec4<f32>(555f, 1042f, 864f, -907f), vec4<f32>(383f, -599f, 833f, 1500f), vec4<f32>(-519f, -636f, -196f, 1405f), vec4<f32>(866f, 1648f, 1000f, -2324f), vec4<f32>(1481f, -752f, 315f, 1000f), vec4<f32>(536f, 1600f, 1016f, -1117f), vec4<f32>(-366f, -795f, 1231f, -951f), vec4<f32>(1000f, -1051f, 144f, 1370f), vec4<f32>(-617f, 613f, 1136f, -1591f), vec4<f32>(-1447f, 234f, 152f, -248f), vec4<f32>(371f, -818f, -1711f, 570f), vec4<f32>(269f, -1097f, 568f, -1000f), vec4<f32>(-352f, -561f, 349f, -619f), vec4<f32>(412f, -1000f, -153f, -473f), vec4<f32>(420f, 1871f, -1546f, -1065f), vec4<f32>(330f, -630f, 1325f, 378f), vec4<f32>(-2279f, 371f, -234f, -1200f), vec4<f32>(1000f, -1366f, 1000f, 1000f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec3<bool> {
    var var_0 = vec4<bool>(any(vec4<bool>(false, !any(vec2<bool>(true, true)), all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true))), any(vec2<bool>(true, true)))), all(vec4<bool>(false, all(vec3<bool>(true, true, true)), true, true)), !any(vec2<bool>(all(vec3<bool>(false, false, true)), all(vec3<bool>(false, false, false)))), true);
    global1 = array<vec4<f32>, 18>();
    var var_1 = Struct_2(Struct_1(vec4<f32>(-986f, _wgslsmith_div_f32(-1000f, _wgslsmith_div_f32(-3013f, -400f)), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(181f * 1141f) - _wgslsmith_f_op_f32(1000f + -836f))), !(var_0.x & false) && false, _wgslsmith_mult_vec3_i32(u_input.b, -(u_input.b << (vec3<u32>(u_input.c, u_input.a.x, 8072u) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(-1555f + -209f), u_input.e <= 40612i), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(u_input.a.x, 18u)] - global1[_wgslsmith_index_u32(16851u, 18u)]) + _wgslsmith_f_op_vec4_f32(round(global1[_wgslsmith_index_u32(0u, 18u)]))), vec4<f32>(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(round(844f)), _wgslsmith_f_op_f32(1877f + 177f), _wgslsmith_f_op_f32(ceil(1492f)))), true, u_input.b, -183f, (~0i ^ _wgslsmith_div_i32(u_input.b.x, 0i)) != _wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.b.x, u_input.d), i32(-1i) * -8866i)), true, ~(vec4<u32>(u_input.c, _wgslsmith_mult_u32(u_input.a.x, u_input.a.x), u_input.c, ~u_input.c) | firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 0u, u_input.a.x, 1u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.c, u_input.a.x)))), select(!var_0.yy, var_0.yx, (!var_0.x | true) | true));
    let var_2 = -27183i;
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(sign(global1[_wgslsmith_index_u32(min(_wgslsmith_dot_vec2_u32(u_input.a, var_1.d.xx), 1u), 18u)])), var_1.e.x | var_0.x, vec3<i32>(10033i, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.e, u_input.e, 18713i), vec3<i32>(var_2, u_input.d, var_2)), vec3<i32>(var_1.a.c.x, -1i, u_input.e)), _wgslsmith_clamp_i32(~u_input.d, -2147483647i, -1i)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.b.d - 1881f), _wgslsmith_div_f32(500f, var_1.a.a.x))), _wgslsmith_f_op_f32(abs(var_1.b.d)), var_1.b.b)), var_1.c), Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-var_1.b.a))), true, vec3<i32>(2147483647i, ~11603i, -(~2147483647i)), 375f, var_0.x), var_1.a.e, vec4<u32>(0u, ~(~1u), u_input.c, 0u), !select(vec2<bool>(false | var_0.x, all(vec4<bool>(true, true, var_1.b.b, var_1.b.e))), select(vec2<bool>(false, false), vec2<bool>(var_0.x, true), var_1.c), !vec2<bool>(true, var_1.b.b)));
    return var_0.zyy;
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    var var_0 = arg_0.a.a.xz;
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1868f))), 2213f);
    global1 = array<vec4<f32>, 18>();
    let var_1 = arg_0;
    var var_2 = 294f;
    return Struct_1(global1[_wgslsmith_index_u32(u_input.a.x, 18u)], all(select(func_3(), func_3(), func_3())), _wgslsmith_add_vec3_i32(u_input.b, vec3<i32>(-26473i >> (_wgslsmith_clamp_u32(0u, var_1.d.x, var_1.d.x) % 32u), -50332i, _wgslsmith_mod_i32(u_input.e, -1i) | u_input.d)), _wgslsmith_div_f32(arg_0.b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -337f))), !(!any(vec3<bool>(false, arg_0.a.b, var_1.b.b)) && !(!var_1.c)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3) -> vec3<u32> {
    var var_0 = _wgslsmith_div_vec3_f32(arg_1.c.b.a.xyz, vec3<f32>(301f, _wgslsmith_f_op_f32(1335f - _wgslsmith_f_op_f32(f32(-1f) * -1987f)), arg_0.a.x));
    var var_1 = abs(1i);
    let var_2 = ~vec3<u32>(1u, arg_1.c.d.x ^ abs(~38659u), select(0u, 4294967295u, arg_1.d));
    var var_3 = var_2.zx;
    var_3 = vec2<u32>(abs(var_2.x), ~_wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.a.x, _wgslsmith_clamp_u32(1u, arg_1.c.d.x, arg_1.a)), u_input.a.x >> (1u % 32u), 43324u));
    return firstTrailingBit(_wgslsmith_mult_vec3_u32(var_2, vec3<u32>(var_3.x, ~firstTrailingBit(var_2.x), ~4294967295u)));
}

fn func_5(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_2, arg_3: Struct_2) -> vec4<f32> {
    let var_0 = vec4<i32>(-10063i, _wgslsmith_mod_i32(u_input.e, _wgslsmith_clamp_i32(~1823i << (_wgslsmith_dot_vec4_u32(arg_2.d, vec4<u32>(arg_3.d.x, arg_0.x, arg_3.d.x, u_input.c)) % 32u), countOneBits(_wgslsmith_sub_i32(1i, 1i)), -2147483647i)), -max(~u_input.b.x, -_wgslsmith_mult_i32(arg_3.b.c.x, arg_2.b.c.x)), -arg_3.b.c.x);
    global1 = array<vec4<f32>, 18>();
    let var_1 = any(select(select(select(vec4<bool>(true, true, arg_2.b.b, false), vec4<bool>(false, true, arg_3.b.e, false), !vec4<bool>(arg_2.a.e, true, arg_3.e.x, arg_3.a.b)), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), arg_3.e.x), !(!vec4<bool>(arg_3.e.x, true, arg_2.c, arg_3.a.e))), !(!vec4<bool>(arg_3.a.b, arg_3.a.e, true, true)), !vec4<bool>(arg_3.b.b == arg_3.c, true, arg_3.b.b, arg_2.c)));
    let var_2 = arg_2.a.a;
    global0 = 633f;
    return _wgslsmith_f_op_vec4_f32(-arg_2.b.a);
}

fn func_1() -> u32 {
    global1 = array<vec4<f32>, 18>();
    global0 = -922f;
    var var_0 = true;
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(func_5(func_4(func_2(Struct_2(Struct_1(global1[_wgslsmith_index_u32(503u, 18u)], true, u_input.b, -201f, false), Struct_1(vec4<f32>(-1789f, -1000f, -522f, 1125f), false, vec3<i32>(-6836i, 2147483647i, u_input.b.x), -727f, false), true, vec4<u32>(u_input.c, 4294967295u, u_input.c, u_input.c), vec2<bool>(false, false))), Struct_3(u_input.a.x, vec2<i32>(u_input.e, u_input.d), Struct_2(Struct_1(vec4<f32>(-1092f, -1000f, 1046f, -1370f), false, u_input.b, -340f, false), Struct_1(vec4<f32>(1364f, 197f, -1243f, 567f), false, vec3<i32>(0i, 0i, -1i), 948f, true), true, vec4<u32>(4294967295u, 52696u, u_input.a.x, u_input.a.x), vec2<bool>(false, false)), true)) << (abs(vec3<u32>(9755u, u_input.a.x, u_input.c) << (vec3<u32>(15035u, 141169u, 0u) % vec3<u32>(32u))) % vec3<u32>(32u)), -557f, Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(select(global1[_wgslsmith_index_u32(u_input.c, 18u)], global1[_wgslsmith_index_u32(0u, 18u)], true)), false, func_2(Struct_2(Struct_1(vec4<f32>(2001f, 1977f, -1000f, -935f), true, u_input.b, -818f, false), Struct_1(global1[_wgslsmith_index_u32(u_input.a.x, 18u)], true, u_input.b, -790f, false), true, vec4<u32>(4294967295u, 24747u, 61419u, 4294967295u), vec2<bool>(true, false))).c, -1600f, true), Struct_1(global1[_wgslsmith_index_u32(1u, 18u)], true, u_input.b | u_input.b, _wgslsmith_f_op_f32(1606f + 644f), func_3().x), false, abs(vec4<u32>(4294967295u, 31225u, 4294967295u, u_input.c)), select(vec2<bool>(true, true), func_3().xz, true)), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-294f, -102f, -1461f, -158f)), false, _wgslsmith_add_vec3_i32(u_input.b, vec3<i32>(u_input.b.x, u_input.e, -27609i)), _wgslsmith_f_op_f32(trunc(554f)), true), Struct_1(vec4<f32>(-178f, 902f, 1365f, 579f), true, _wgslsmith_add_vec3_i32(vec3<i32>(-36893i, -1i, -30294i), u_input.b), _wgslsmith_f_op_f32(875f + -890f), 1i > u_input.b.x), any(vec3<bool>(true, true, true)), ~vec4<u32>(u_input.c, u_input.a.x, u_input.a.x, 16586u), vec2<bool>(true, true)))), 9894u > func_4(Struct_1(vec4<f32>(-4385f, 1434f, 513f, 1210f), true, vec3<i32>(u_input.b.x, -28271i, u_input.d), func_2(Struct_2(Struct_1(global1[_wgslsmith_index_u32(58756u, 18u)], false, u_input.b, 721f, true), Struct_1(vec4<f32>(1031f, 1212f, -813f, -259f), false, vec3<i32>(25781i, 13827i, u_input.e), -702f, true), true, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 81716u), vec2<bool>(false, false))).a.x, true), Struct_3(0u, select(u_input.b.yy, u_input.b.xx, vec2<bool>(true, false)), Struct_2(Struct_1(vec4<f32>(743f, 604f, 1000f, -1095f), true, u_input.b, 2701f, true), Struct_1(vec4<f32>(572f, -141f, -473f, -774f), true, vec3<i32>(u_input.d, 1i, 2147483647i), -289f, true), true, vec4<u32>(u_input.a.x, 22390u, u_input.a.x, 1u), vec2<bool>(true, true)), false)).x, (u_input.b & -vec3<i32>(u_input.e, u_input.e, 39988i)) << ((max(firstLeadingBit(vec3<u32>(8036u, 1u, u_input.a.x)), max(vec3<u32>(49332u, 18444u, u_input.c), vec3<u32>(30970u, 71683u, 1u))) | _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 4294967295u, u_input.c), vec3<u32>(0u, 0u, 13921u))) % vec3<u32>(32u)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(860f)), _wgslsmith_f_op_f32(step(-2075f, -182f))), _wgslsmith_f_op_f32(f32(-1f) * -1305f)))), false);
    let var_2 = Struct_3(_wgslsmith_div_u32(u_input.a.x, 26491u), ~(~vec2<i32>(70528i | var_1.c.x, -611i)), Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(var_1.d - var_1.d), _wgslsmith_f_op_f32(abs(var_1.d)), _wgslsmith_f_op_f32(-934f - var_1.d), _wgslsmith_f_op_f32(-var_1.d)), !var_1.e, var_1.c, 1000f, all(select(vec3<bool>(true, var_1.b, var_1.b), vec3<bool>(var_1.b, var_1.b, true), var_1.e))), func_2(Struct_2(func_2(Struct_2(Struct_1(vec4<f32>(-456f, var_1.d, -558f, var_1.d), false, var_1.c, -930f, var_1.e), Struct_1(vec4<f32>(var_1.d, var_1.d, var_1.a.x, 105f), var_1.e, vec3<i32>(var_1.c.x, u_input.b.x, var_1.c.x), 689f, false), false, vec4<u32>(49138u, 24291u, u_input.a.x, u_input.c), vec2<bool>(var_1.b, true))), func_2(Struct_2(Struct_1(vec4<f32>(var_1.d, 135f, var_1.d, 1563f), true, vec3<i32>(u_input.e, 53441i, var_1.c.x), 224f, var_1.e), Struct_1(vec4<f32>(var_1.d, 2653f, var_1.d, -153f), false, u_input.b, var_1.d, var_1.b), true, vec4<u32>(u_input.a.x, 72087u, u_input.c, u_input.c), vec2<bool>(false, var_1.e))), false, countOneBits(vec4<u32>(0u, 0u, 49054u, u_input.a.x)), select(vec2<bool>(var_1.e, var_1.b), vec2<bool>(var_1.e, var_1.b), true))), _wgslsmith_f_op_f32(1497f * -597f) < _wgslsmith_f_op_f32(var_1.a.x + 1000f), _wgslsmith_sub_vec4_u32(~(~vec4<u32>(15300u, u_input.a.x, 1u, 1u)), ~vec4<u32>(u_input.c, u_input.a.x, u_input.c, u_input.a.x)), !(!vec2<bool>(var_1.b, var_1.e))), true);
    return _wgslsmith_sub_u32(u_input.a.x, u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_1(), firstLeadingBit(u_input.b.yx), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-520f, 1277f, 1307f, 544f)), u_input.e <= countOneBits(u_input.b.x), firstTrailingBit(countOneBits(u_input.b)), _wgslsmith_f_op_f32(885f * -420f), all(vec2<bool>(true, false))), Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(u_input.c, 18u)] - vec4<f32>(230f, 1178f, -215f, 1716f)))), !any(vec3<bool>(true, false, false)), vec3<i32>(u_input.d, u_input.d, 2147483647i) | -vec3<i32>(u_input.d, u_input.d, 5060i), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-188f * -440f))), all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)))), false | (true & select(false, false, false)), _wgslsmith_sub_vec4_u32(countOneBits(~vec4<u32>(49791u, u_input.a.x, u_input.a.x, u_input.c)), vec4<u32>(u_input.a.x, u_input.a.x, u_input.c, u_input.c) << (~vec4<u32>(u_input.a.x, 0u, u_input.a.x, 19803u) % vec4<u32>(32u))), vec2<bool>(all(vec4<bool>(true, false, false, false)), true)), true);
    let var_1 = ~u_input.b;
    global1 = array<vec4<f32>, 18>();
    var var_2 = -var_0.b.x ^ abs(-_wgslsmith_clamp_i32(-1i, 1i, -2147483647i));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(341f, var_0.c.b.a.x)))) * _wgslsmith_f_op_vec2_f32(var_0.c.b.a.yw - var_0.c.b.a.zx)) - _wgslsmith_f_op_vec2_f32(-var_0.c.a.a.zy));
    global0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_3.x)));
    var_3 = var_0.c.b.a.yz;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.a.a.xw, vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-1000f, var_3.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.c.b.d, 1196f)) * var_3.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1719f * _wgslsmith_f_op_f32(sign(-1604f))), _wgslsmith_f_op_f32(exp2(1f))))), max(var_0.b, reverseBits(-vec2<i32>(u_input.e, 0i))));
}

