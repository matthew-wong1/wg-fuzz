struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
    c: u32,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: i32,
    d: Struct_2,
    e: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(sign(-672f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-321f)), -1000f))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(184f, 787f)))))), !any(select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(arg_0, true, false), arg_0)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-569f - -213f), 354f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(178f, 427f), vec2<f32>(1551f, -103f), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(222f, 243f))) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-185f, 1070f), vec2<f32>(1308f, -1134f)))))));
    var var_1 = Struct_4(select(!vec2<bool>(false, !arg_0), vec2<bool>(!arg_0, all(select(vec4<bool>(false, false, arg_0, true), vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(arg_0, false, arg_0, arg_0)))), !(!select(arg_0, true, false))));
    var_1 = Struct_4(select(var_1.a, select(vec2<bool>(true, true), vec2<bool>(false | var_1.a.x, any(var_1.a)), _wgslsmith_f_op_f32(step(560f, var_0.x)) != _wgslsmith_f_op_f32(f32(-1f) * -436f)), _wgslsmith_f_op_f32(-var_0.x) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(var_0.x * -1000f))));
    var var_2 = Struct_5(!var_1.a, vec3<i32>(~1i, ~1i, countOneBits(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 16799i), vec2<i32>(49623i, -2147483647i))))), -4521i, Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -151f)), vec2<f32>(1639f, var_0.x), var_1.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(535f, _wgslsmith_f_op_f32(var_0.x + -263f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -574f))), 53303u, vec3<i32>(countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -20560i), vec2<i32>(-19465i, -1i))), -firstTrailingBit(-1i), 1i), vec2<i32>(_wgslsmith_mult_i32(abs(45881i), ~0i), max(2147483647i, ~(-9416i)))), -countOneBits(1i));
    var var_3 = vec4<i32>(var_2.b.x, _wgslsmith_dot_vec2_i32(~(~(~vec2<i32>(-27458i, var_2.c))), var_2.d.e), 1i, 50282i);
    return select(!vec2<bool>(true, !arg_0), !var_2.a, select(var_2.a, var_1.a, vec2<bool>(true, all(vec4<bool>(var_2.a.x, var_2.a.x, true, true)))));
}

fn func_2(arg_0: vec2<i32>) -> Struct_5 {
    let var_0 = Struct_4(!(!func_3(false)));
    var var_1 = Struct_1(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-590f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(552f)) - _wgslsmith_f_op_f32(f32(-1f) * -507f)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-1000f)))), 417f)));
    var_1 = Struct_1(true, var_1.b);
    let var_2 = Struct_3(Struct_1(!var_0.a.x || var_1.a, _wgslsmith_f_op_f32(sign(var_1.b))), Struct_1(true, _wgslsmith_f_op_f32(114f - -2947f)), Struct_1(!var_1.a, _wgslsmith_f_op_f32(f32(-1f) * -1167f)));
    let var_3 = Struct_1(true, _wgslsmith_f_op_f32(min(437f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) - _wgslsmith_f_op_f32(f32(-1f) * -440f)) * _wgslsmith_f_op_f32(select(-192f, _wgslsmith_f_op_f32(abs(var_2.b.b)), u_input.a != u_input.a))))));
    return Struct_5(!(!(!vec2<bool>(true, var_0.a.x))), ~vec3<i32>(firstLeadingBit(arg_0.x), _wgslsmith_div_i32(arg_0.x, 2147483647i), arg_0.x), -2147483647i, Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-345f, var_3.b))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_2.b.b, -658f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-151f * _wgslsmith_f_op_f32(-1084f * var_3.b)))), ~(~(~77495u)), _wgslsmith_mult_vec3_i32(vec3<i32>(-31738i, -1i, -1i) << (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u)), vec3<i32>(arg_0.x, arg_0.x, arg_0.x) | countOneBits(vec3<i32>(arg_0.x, arg_0.x, arg_0.x))), ~arg_0), _wgslsmith_mult_i32(2147483647i, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(arg_0, arg_0), _wgslsmith_dot_vec2_i32(arg_0, arg_0))) | select((arg_0.x ^ arg_0.x) | -arg_0.x, _wgslsmith_clamp_i32(-1i, ~arg_0.x, -2147483647i), true));
}

fn func_1(arg_0: vec2<u32>, arg_1: bool, arg_2: Struct_2, arg_3: vec3<i32>) -> f32 {
    let var_0 = func_2(arg_3.yy);
    let var_1 = arg_0 | arg_0;
    let var_2 = true;
    let var_3 = arg_2.b;
    var var_4 = func_2(-min(-arg_3.xz, arg_2.d.yz)).d;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(select(var_0.d.a.x, _wgslsmith_f_op_f32(arg_2.a.x * _wgslsmith_div_f32(var_3, arg_2.b)), true))) + 301f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(1888f - -335f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1173f * -1686f), _wgslsmith_f_op_f32(func_1(vec2<u32>(u_input.a, 4294967295u), false, Struct_2(vec2<f32>(-269f, -180f), -1406f, 0u, vec3<i32>(2147483647i, -69396i, 24274i), vec2<i32>(-2147483647i, -71351i)), vec3<i32>(-40609i, -20893i, -2147483647i)))))))), _wgslsmith_f_op_f32(683f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-1142f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(283f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-243f, -257f))))))));
    let var_1 = Struct_4(select(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, false), true || func_2(min(vec2<i32>(-60683i, 23466i), vec2<i32>(-37640i, 1i))).a.x));
    var var_2 = Struct_1(false, 1281f);
    var var_3 = var_1.a;
    let var_4 = u_input.a & _wgslsmith_mult_u32(1u, _wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.a ^ u_input.a, u_input.a ^ u_input.a), _wgslsmith_sub_u32(u_input.a, 21714u)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, vec2<i32>(1i, _wgslsmith_dot_vec3_i32(select(vec3<i32>(1i, -2147483647i, 2147483647i), vec3<i32>(-21764i, 1i, 0i), vec3<bool>(true, false, var_1.a.x)), vec3<i32>(10374i, 28108i, -1i) >> (vec3<u32>(u_input.a, u_input.a, var_4) % vec3<u32>(32u)))) ^ vec2<i32>(1i, min(36158i, 1i)));
}

