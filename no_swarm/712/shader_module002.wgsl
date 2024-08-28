struct Struct_1 {
    a: f32,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: vec3<bool>,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1175f;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>) -> Struct_2 {
    let var_0 = arg_0.a;
    global0 = _wgslsmith_f_op_f32(exp2(arg_0.a));
    var var_1 = _wgslsmith_f_op_f32(-var_0);
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -847f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)), arg_0.a, false)), var_0), false));
    var_1 = _wgslsmith_f_op_f32(max(-726f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + 1384f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)))));
    return Struct_2(var_0, false, vec3<bool>(true, false, (all(vec4<bool>(arg_0.b, arg_0.b, arg_0.b, arg_0.b)) && arg_0.b) || all(vec2<bool>(false, true))), Struct_1(var_0, arg_0.b, firstLeadingBit(~(~u_input.c.x))), _wgslsmith_f_op_f32(select(767f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, 1092f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -491f) - _wgslsmith_div_f32(arg_0.a, arg_0.a))), arg_0.b)));
}

fn func_3(arg_0: vec2<bool>, arg_1: f32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-221f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1, -1600f, arg_0.x))))));
    var var_1 = 4294967295u;
    let var_2 = var_0.x;
    let var_3 = select(select(vec2<bool>(false, any(!vec4<bool>(true, false, arg_0.x, true))), vec2<bool>(false, true), true), arg_0, arg_0);
    let var_4 = var_3.x | all(func_1(Struct_1(var_0.x, all(vec4<bool>(arg_0.x, true, arg_0.x, false)), ~1u), u_input.c.xy).c.zx);
    return arg_1;
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: u32) -> bool {
    global0 = _wgslsmith_div_f32(arg_0.d.a, 632f);
    var var_0 = func_1(Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_0.d.a, arg_0.e))), _wgslsmith_f_op_f32(func_3(!arg_0.c.zx, arg_0.a)), false)), arg_1, ~min(1u, arg_0.d.c) << (3557u % 32u)), vec2<u32>(u_input.c.x, ~1u)).d;
    var var_1 = _wgslsmith_div_i32(_wgslsmith_mult_i32(3567i, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(u_input.b, -63375i, 1i) << (u_input.c.xzx % vec3<u32>(32u))), vec3<i32>(~(-2147483647i), -u_input.d, min(1i, u_input.b)))), abs(abs(abs(u_input.b))) << (_wgslsmith_dot_vec3_u32(vec3<u32>(1u << (arg_2 % 32u), 25527u, 4294967295u), select(~u_input.c.xzx, ~u_input.c.yyx, select(arg_0.c, arg_0.c, arg_1))) % 32u));
    var_0 = func_1(arg_0.d, ~vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.c.wyw, countOneBits(u_input.c.wxx)), 0u)).d;
    let var_2 = Struct_3(Struct_1(arg_0.e, !(!(!arg_1)), ~countOneBits(_wgslsmith_mult_u32(0u, arg_2))), abs(-vec4<i32>(_wgslsmith_add_i32(-1i, u_input.a.x), u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(-20854i, -13709i)), _wgslsmith_mod_i32(u_input.a.x, u_input.b))), vec3<bool>(!(!arg_1), false, !all(vec2<bool>(var_0.b, arg_0.d.b))));
    return ~var_2.b.x == (var_2.b.x ^ (firstTrailingBit(0i << (var_2.a.c % 32u)) >> (~12965u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec3<bool>(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1511f)) + -645f) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-352f)) + _wgslsmith_f_op_f32(sign(-392f))), true && any(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false)))), !vec3<bool>(true, func_2(func_1(Struct_1(-1865f, true, 1u), vec2<u32>(u_input.c.x, 47802u)), u_input.c.x <= 0u, 4294967295u), false), vec3<bool>(true, true, true));
    let var_1 = Struct_4(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1174f + _wgslsmith_f_op_f32(f32(-1f) * -878f))), !(var_0.x | (var_0.x | false)), !var_0, Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(738f + 264f))), func_2(Struct_2(-1090f, var_0.x, vec3<bool>(var_0.x, true, true), Struct_1(-192f, false, 0u), 425f), var_0.x, u_input.c.x), ~4294967295u), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(147f))))))), vec4<i32>(-_wgslsmith_add_i32(i32(-1i) * -2147483647i, 0i), _wgslsmith_add_i32(1i, -abs(u_input.d)), firstLeadingBit(abs(u_input.d)), ~(-1i)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.e, -731f, var_1.a.a) - vec3<f32>(var_1.a.e, 543f, var_1.a.e)))))));
    var var_3 = var_1.b.x;
    let var_4 = var_1.a.d;
    var_3 = firstLeadingBit(_wgslsmith_mult_i32(-9006i, ~u_input.d));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1191f + _wgslsmith_f_op_f32(trunc(func_1(Struct_1(138f, true, 70174u), vec2<u32>(u_input.c.x, var_4.c) >> (u_input.c.zx % vec2<u32>(32u))).e))));
    let var_5 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.c, 77776u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -408f) - var_4.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-696f, var_1.a.e, -860f, -832f)))), vec4<f32>(_wgslsmith_div_f32(402f, 847f), var_1.a.e, _wgslsmith_f_op_f32(var_4.a * var_4.a), _wgslsmith_f_op_f32(f32(-1f) * -449f))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.d.a, 920f, var_4.a, var_1.a.d.a))))));
}

