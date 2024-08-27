struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec3<bool>,
    d: i32,
    e: vec4<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
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

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool) -> u32 {
    global0 = Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.x, 1300f) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(global0.a, vec2<f32>(-1053f, global0.b.x)))), _wgslsmith_f_op_vec2_f32(-global0.a), !vec2<bool>(arg_0, arg_0)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(global0.a.x, global0.b.x), global0.b.x, 915f, 440f) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global0.a.x, 548f, -888f)), global0.b))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(global0.b)))), vec4<f32>(804f, -963f, _wgslsmith_f_op_f32(-597f * global0.b.x), _wgslsmith_f_op_f32(floor(979f)))))));
    let var_0 = !select(!vec2<bool>(all(vec3<bool>(arg_0, arg_0, true)), false), !select(!vec2<bool>(arg_0, true), vec2<bool>(arg_0, arg_0), vec2<bool>(false, arg_0)), select(select(select(vec2<bool>(true, arg_0), vec2<bool>(true, false), arg_0), vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(arg_0, true), false)), vec2<bool>(true, arg_0), vec2<bool>(true, all(vec2<bool>(true, arg_0)))));
    var var_1 = u_input.a.x;
    return _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 3906u), ~vec3<u32>(4294967295u, min(_wgslsmith_div_u32(17041u, 31915u), abs(4294967295u)), 4292u));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<f32>, arg_2: u32) -> Struct_2 {
    var var_0 = Struct_1(arg_0.zy, -1557f, _wgslsmith_mult_vec3_u32(vec3<u32>(~42837u, 0u, min(arg_2, _wgslsmith_dot_vec4_u32(vec4<u32>(3312u, 4294967295u, 1u, 42621u), vec4<u32>(24440u, 0u, 1u, arg_2)))), vec3<u32>(0u, func_3(true), 88371u)));
    let var_1 = Struct_2(~var_0.c, Struct_1(!select(select(var_0.a, vec2<bool>(var_0.a.x, arg_0.x), arg_0.yy), !var_0.a, true), 1534f, var_0.c), !arg_0, ~(~u_input.a.x) << ((arg_2 | ~1u) % 32u), ~_wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(52576u, arg_2, var_0.c.x, var_0.c.x)), vec4<u32>(countOneBits(arg_2), _wgslsmith_sub_u32(59818u, var_0.c.x), 38208u, 16915u ^ var_0.c.x)));
    global0 = Struct_3(arg_1, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, var_1.b.b, _wgslsmith_div_f32(_wgslsmith_div_f32(var_1.b.b, 472f), var_1.b.b), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, var_0.b)))));
    let var_2 = _wgslsmith_dot_vec4_i32(select(-select(vec4<i32>(var_1.d, -2147483647i, var_1.d, -24207i), u_input.a, true), u_input.a, vec4<bool>(false & var_1.b.a.x, arg_0.x, var_0.a.x, all(vec2<bool>(arg_0.x, false)))) & ~u_input.a, u_input.a);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1377f)) * _wgslsmith_f_op_f32(f32(-1f) * -523f))))));
    return Struct_2(var_0.c, Struct_1(var_1.b.a, _wgslsmith_f_op_f32(var_0.b * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(arg_1.x))))), vec3<u32>(40025u, arg_2, _wgslsmith_sub_u32(var_1.e.x, arg_2)) << (_wgslsmith_div_vec3_u32(~var_1.a, vec3<u32>(var_1.b.c.x, 69604u, arg_2)) % vec3<u32>(32u))), vec3<bool>(false, false, arg_0.x), u_input.a.x ^ ~u_input.a.x, _wgslsmith_clamp_vec4_u32(select(select(_wgslsmith_sub_vec4_u32(var_1.e, var_1.e), _wgslsmith_add_vec4_u32(var_1.e, vec4<u32>(0u, var_0.c.x, var_1.a.x, var_1.a.x)), !var_1.c.x), ~(var_1.e & vec4<u32>(0u, var_1.b.c.x, 38448u, var_1.b.c.x)), select(vec4<bool>(var_0.a.x, arg_0.x, false, false), select(vec4<bool>(true, var_1.c.x, arg_0.x, var_0.a.x), vec4<bool>(true, arg_0.x, false, var_0.a.x), vec4<bool>(true, arg_0.x, true, false)), var_1.c.x)), (var_1.e >> ((var_1.e >> (vec4<u32>(arg_2, var_0.c.x, 1u, 1u) % vec4<u32>(32u))) % vec4<u32>(32u))) | firstLeadingBit(~vec4<u32>(var_0.c.x, var_1.a.x, 45299u, 4294967295u)), countOneBits(abs(vec4<u32>(1u, arg_2, 4294967295u, 4294967295u)))));
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: Struct_2) -> Struct_3 {
    let var_0 = Struct_3(global0.b.zx, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1281f, -1611f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) - _wgslsmith_f_op_f32(1000f - -870f)), _wgslsmith_f_op_f32(-548f - _wgslsmith_f_op_f32(arg_2.b.b - -395f))))));
    global0 = Struct_3(_wgslsmith_f_op_vec2_f32(step(global0.b.yx, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-627f, global0.b.x), vec2<f32>(-1111f, arg_1))) + var_0.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_0.a, var_0.b.wy, arg_2.b.a.x))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(var_0.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.a.x, 201f, arg_1, global0.b.x))))))));
    let var_1 = arg_2.b;
    global0 = var_0;
    var var_2 = -58495i;
    return var_0;
}

fn func_1() -> f32 {
    var var_0 = func_4(_wgslsmith_mod_i32(u_input.a.x, -(-21270i & (u_input.a.x << (0u % 32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x + _wgslsmith_f_op_f32(min(-469f, global0.a.x)))), func_2(vec3<bool>(!any(vec4<bool>(false, false, true, true)), false, any(vec4<bool>(false, false, false, false)) & false), _wgslsmith_f_op_vec2_f32(abs(global0.b.yw)), 141913u));
    var_0 = func_4(-u_input.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.a.x + -1000f), _wgslsmith_f_op_f32(select(global0.b.x, global0.a.x, any(vec2<bool>(true, true)))), !(_wgslsmith_f_op_f32(round(var_0.a.x)) <= _wgslsmith_f_op_f32(-global0.b.x)))), Struct_2(~vec3<u32>(1u, 1u, 1u), func_2(vec3<bool>(true, u_input.a.x == -10934i, true), vec2<f32>(var_0.b.x, -667f), ~_wgslsmith_dot_vec3_u32(vec3<u32>(13684u, 16264u, 0u), vec3<u32>(29213u, 4294967295u, 51246u))).b, func_2(vec3<bool>(true, true, true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_0.b.yy)) + vec2<f32>(-369f, global0.a.x)), reverseBits(~45683u)).c, _wgslsmith_add_i32(-43397i, u_input.a.x), reverseBits(~vec4<u32>(35086u, 74765u, 65390u, 44794u))));
    var_0 = func_4(countOneBits(-(~u_input.a.x)), _wgslsmith_f_op_f32(-func_2(vec3<bool>(true, false, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(global0.b.wx))), ~(~3804u)).b.b), func_2(select(vec3<bool>(true, u_input.a.x <= -23939i, true), vec3<bool>(true, true, true), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true)), _wgslsmith_f_op_vec2_f32(select(global0.a, vec2<f32>(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(-2005f - global0.a.x)), false)), _wgslsmith_dot_vec4_u32(abs(~vec4<u32>(9367u, 27869u, 4294967295u, 13715u)), ~(~vec4<u32>(0u, 1u, 4294967295u, 0u)))));
    var var_1 = _wgslsmith_f_op_f32(459f * global0.b.x);
    let var_2 = Struct_1(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec4<bool>(true, true, false, false)))), _wgslsmith_f_op_f32(var_0.a.x + var_0.b.x), ~select(vec3<u32>(1u, 4294967295u >> (1u % 32u), ~1u), vec3<u32>(~0u, countOneBits(11779u), 0u << (0u % 32u)), func_2(vec3<bool>(true, true, true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, var_0.a.x)), ~14724u).c));
    return _wgslsmith_f_op_f32(f32(-1f) * -1253f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(select(vec2<i32>(u_input.a.x, ~1i), u_input.a.yy, vec2<bool>(false, !select(false, true, true))));
    let var_1 = false;
    var var_2 = var_1;
    var_0 = vec2<i32>(2147483647i, ~u_input.a.x);
    var var_3 = !(!vec4<bool>(true && !var_1, !var_1, !var_1, true));
    var var_4 = _wgslsmith_f_op_vec3_f32(global0.b.xwx - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.a.x))) * -545f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(811f, global0.a.x)), global0.a.x)) + global0.a.x), _wgslsmith_f_op_f32(func_1())));
    let var_5 = Struct_1(!var_3.zy, -2183f, vec3<u32>(~4294967295u, _wgslsmith_sub_u32(select(14050u >> (0u % 32u), ~26689u, var_1), 1u), _wgslsmith_div_u32(14337u, 48312u)));
    let x = u_input.a;
    s_output = StorageBuffer(-1851f, _wgslsmith_clamp_vec3_u32(vec3<u32>(reverseBits(_wgslsmith_clamp_u32(1u, 1u, var_5.c.x)), var_5.c.x, ~9304u >> (1u % 32u)), ~(~_wgslsmith_add_vec3_u32(vec3<u32>(20441u, 4294967295u, var_5.c.x), vec3<u32>(var_5.c.x, var_5.c.x, var_5.c.x))), _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(4294967295u, 1u), ~19684u, 4760u), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, var_5.c.x, 26624u), ~var_5.c))), -_wgslsmith_mod_i32(select(1i, -u_input.a.x, true), reverseBits(u_input.a.x) >> (66221u % 32u)));
}

