struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_1,
    d: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: vec4<i32>,
    d: vec4<bool>,
}

struct Struct_5 {
    a: vec2<i32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec2<i32> {
    let var_0 = Struct_4(Struct_3(-16171i, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1776f, 954f))), Struct_1(true, true, firstLeadingBit(1u), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 13133u), vec4<u32>(9392u, u_input.a, 0u, 1u), vec4<u32>(57498u, u_input.a, 1u, 4294967295u)), firstTrailingBit(vec2<i32>(-1i, -6658i))), vec3<f32>(_wgslsmith_f_op_f32(round(188f)), _wgslsmith_f_op_f32(sign(-419f)), _wgslsmith_f_op_f32(-652f * -938f))), Struct_1(any(vec3<bool>(true, true, true)), false, ~u_input.a, abs(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(1u, u_input.a, u_input.a, 4294967295u))), ~vec2<i32>(-21987i, 0i)), _wgslsmith_f_op_f32(select(1810f, _wgslsmith_f_op_f32(max(-1000f, -669f)), false)) < _wgslsmith_f_op_f32(sign(-1078f))), ~_wgslsmith_mult_u32(u_input.a, ~(~u_input.a)), vec4<i32>(75700i, -min(select(12045i, 2147483647i, true), ~3459i), 1i, _wgslsmith_clamp_i32(-34255i, 1i, select(-2147483647i, 30076i, false)) >> (((u_input.a << (u_input.a % 32u)) & _wgslsmith_sub_u32(4294967295u, 4294967295u)) % 32u)), vec4<bool>(true, false, any(vec4<bool>(true, true, all(vec4<bool>(true, false, true, true)), true)), true));
    var var_1 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(min(~u_input.a, 4294967295u << (u_input.a % 32u)), u_input.a, ~1u, var_0.b), var_0.a.c.d);
    return firstLeadingBit(var_0.a.c.e);
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, _wgslsmith_f_op_f32(abs(-1367f)), _wgslsmith_f_op_f32(max(arg_0, -1100f)), _wgslsmith_f_op_f32(trunc(-771f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 900f, arg_0, arg_0)), all(vec3<bool>(true, false, true)) || !arg_1.b)))));
    var var_1 = Struct_5(arg_1.e, -abs(max(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 0i, -20626i), vec3<i32>(-25543i, arg_1.e.x, -3513i)), arg_1.e.x | 4327i)));
    var_1 = Struct_5(_wgslsmith_mod_vec2_i32(arg_1.e, max(~vec2<i32>(arg_1.e.x, -1i) >> ((vec2<u32>(0u, 25115u) ^ arg_1.d.zz) % vec2<u32>(32u)), firstTrailingBit(vec2<i32>(var_1.a.x, var_1.b)))), arg_1.e.x);
    var var_2 = Struct_3(_wgslsmith_dot_vec2_i32(func_3(), func_3() & vec2<i32>(-18753i, _wgslsmith_div_i32(-7868i, arg_1.e.x))), Struct_2(_wgslsmith_f_op_f32(-var_0.x), arg_1, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.xyy), var_0.xwz)))), arg_1, arg_1.b);
    var var_3 = Struct_3(_wgslsmith_sub_i32(func_3().x, -(var_1.b & 65049i)), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * var_2.b.a)), var_2.b.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(var_0.zwz))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(132f, var_2.b.c.x, arg_0), vec3<f32>(var_2.b.c.x, -1227f, 689f))) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-767f, -1000f, arg_0), var_0.ywy))))), Struct_1(any(vec3<bool>(arg_0 >= -2360f, true, var_2.b.b.a)), all(vec4<bool>(arg_1.a | false, arg_1.b, arg_1.b, any(vec2<bool>(false, true)))), countOneBits(44191u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 4294967295u, var_2.b.b.c, 56829u) >> (vec4<u32>(94505u, var_2.c.c, var_2.c.d.x, 1u) % vec4<u32>(32u)), ~arg_1.d), var_2.b.b.e << ((~var_2.c.d.zw << (~vec2<u32>(1u, var_2.b.b.d.x) % vec2<u32>(32u))) % vec2<u32>(32u))), !(!arg_1.a));
    return ~_wgslsmith_div_i32(var_2.b.b.e.x, var_2.b.b.e.x) | 2147483647i;
}

fn func_1(arg_0: Struct_4) -> Struct_1 {
    let var_0 = firstTrailingBit(min(arg_0.a.c.d.x, u_input.a));
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -2215f);
    var var_1 = ~_wgslsmith_div_i32(_wgslsmith_sub_i32(func_2(arg_0.a.b.a, arg_0.a.c), -1i) << (var_0 % 32u), 45793i);
    let var_2 = _wgslsmith_div_vec3_u32(countOneBits(firstLeadingBit(arg_0.a.b.b.d.wwy)), arg_0.a.b.b.d.yzy) | vec3<u32>(~arg_0.b, u_input.a, var_0);
    var var_3 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.b.a + arg_0.a.b.c.x)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.b.a)) - _wgslsmith_f_op_f32(arg_0.a.b.a - -1000f))), arg_0.a.b.b, _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.a.b.c.x, _wgslsmith_f_op_f32(arg_0.a.b.c.x * -1634f), _wgslsmith_f_op_f32(max(383f, _wgslsmith_f_op_f32(floor(arg_0.a.b.c.x))))), arg_0.a.b.c));
    return arg_0.a.c;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec3<f32>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x));
    var var_1 = Struct_3(min(-27609i, -9187i), Struct_2(arg_2.x, Struct_1(false, false, u_input.a, _wgslsmith_add_vec4_u32(~arg_0.d, arg_0.d), vec2<i32>(-18756i, func_1(Struct_4(Struct_3(6029i, Struct_2(arg_2.x, arg_0, vec3<f32>(-364f, -1114f, 2231f)), Struct_1(arg_1.x, false, u_input.a, arg_0.d, arg_0.e), arg_0.a), 4294967295u, vec4<i32>(arg_0.e.x, 20294i, -7766i, -2147483647i), vec4<bool>(true, false, true, true))).e.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, _wgslsmith_f_op_f32(500f + var_0), -424f) + vec3<f32>(var_0, _wgslsmith_div_f32(314f, 1791f), _wgslsmith_f_op_f32(f32(-1f) * -1325f)))), Struct_1(arg_0.a, false, ~4294967295u, ~select(vec4<u32>(u_input.a, 8331u, 0u, 23874u), ~arg_0.d, false), vec2<i32>(arg_0.e.x, arg_0.e.x)), !arg_0.a);
    var var_2 = select(any(arg_1), var_1.c.e.x >= firstTrailingBit(_wgslsmith_div_i32(-86138i, -20855i)), arg_1.x) & var_1.b.b.b;
    let var_3 = -vec2<i32>(arg_0.e.x, -(~(-var_1.b.b.e.x)));
    var var_4 = _wgslsmith_f_op_f32(arg_2.x * var_1.b.a);
    return var_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec3<bool>(func_4(func_1(Struct_4(Struct_3(0i, Struct_2(1073f, Struct_1(true, true, u_input.a, vec4<u32>(u_input.a, 0u, 16849u, 1u), vec2<i32>(0i, 13665i)), vec3<f32>(-261f, -490f, -2236f)), Struct_1(false, true, 4294967295u, vec4<u32>(60555u, u_input.a, u_input.a, u_input.a), vec2<i32>(-2147483647i, -1i)), false), 44637u, vec4<i32>(0i, 1i, -2147483647i, 2147483647i), vec4<bool>(false, false, true, false))), vec3<bool>(true, true, true), _wgslsmith_f_op_vec3_f32(vec3<f32>(-259f, -1051f, -1975f) - vec3<f32>(-843f, -1403f, 559f))) < _wgslsmith_sub_i32(~15030i, 1i), func_1(Struct_4(Struct_3(19639i, Struct_2(640f, Struct_1(false, false, u_input.a, vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec2<i32>(0i, -11719i)), vec3<f32>(579f, 329f, 951f)), Struct_1(true, true, 19179u, vec4<u32>(12157u, u_input.a, u_input.a, 1u), vec2<i32>(-15907i, -9955i)), true), u_input.a, vec4<i32>(1i, 1i, 1i, 1i), vec4<bool>(true, true, true, true))).b, true), vec3<bool>(!(true != (u_input.a <= u_input.a)), true, all(vec4<bool>(true, true, true, true))), !select(vec3<bool>(u_input.a <= 26186u, true, any(vec3<bool>(false, true, false))), !select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), _wgslsmith_sub_u32(u_input.a, 18574u) >= ~u_input.a));
    global0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-156f, 1209f))))));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-164f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 340f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(835f, 1245f) * -415f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-2080f, -353f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-331f)), -1703f)), 561f)), _wgslsmith_f_op_f32(f32(-1f) * -539f))));
    var_0 = select(!select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(all(var_0.zz), select(var_0.x, true, var_0.x), true), !(!var_0.x)), select(vec3<bool>(!(var_0.x || var_0.x), _wgslsmith_f_op_f32(trunc(var_1.x)) < _wgslsmith_f_op_f32(select(var_1.x, -102f, var_0.x)), var_0.x), !(!select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, true, false), var_0.x)), vec3<bool>(all(vec2<bool>(false, var_0.x)), (var_0.x & var_0.x) | var_0.x, true)), true);
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), -1383f, false));
    global0 = 1000f;
    global0 = _wgslsmith_f_op_f32(step(var_2, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1233f * 335f))), 1717f))));
    let x = u_input.a;
    s_output = StorageBuffer(~(-28776i), var_1.yx);
}

