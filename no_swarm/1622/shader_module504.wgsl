struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct Struct_4 {
    a: i32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1) -> i32 {
    global0 = array<Struct_1, 22>();
    var var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(-668f)), _wgslsmith_f_op_f32(1458f - _wgslsmith_f_op_f32(f32(-1f) * -161f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1631f) + 1020f) - -445f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1000f, 984f, 599f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(640f, 1000f, 1068f))), vec3<f32>(_wgslsmith_div_f32(167f, 421f), _wgslsmith_f_op_f32(-742f + -251f), 857f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1012f, 301f, 382f), vec3<f32>(-706f, 669f, -259f)))))));
    var var_1 = 1u;
    global0 = array<Struct_1, 22>();
    global0 = array<Struct_1, 22>();
    return ~(-(~abs(-6873i)));
}

fn func_2(arg_0: u32, arg_1: Struct_4, arg_2: i32) -> i32 {
    return _wgslsmith_mod_i32(~(-18064i), -_wgslsmith_div_i32(_wgslsmith_mod_i32(arg_1.a | 2147483647i, ~9665i), _wgslsmith_mod_i32(func_3(vec4<bool>(false, arg_1.b.x, false, true), global0[_wgslsmith_index_u32(4294967295u, 22u)]), ~2147483647i)));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<i32>) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(arg_0.xx))))))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.x)))), -246f, -253f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-arg_0.x)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-143f)), -1202f)));
    var_0 = _wgslsmith_f_op_vec2_f32(step(var_1.zx, arg_0.xy));
    let var_2 = 60723u;
    let var_3 = vec4<f32>(2161f, _wgslsmith_div_f32(-376f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_0.x)), var_1.x)))), _wgslsmith_f_op_f32(abs(var_1.x)), arg_0.x);
    return max(vec4<i32>(i32(-1i) * -arg_1.x, -19143i, reverseBits(1i), ~1i), firstTrailingBit((~arg_1 | ~vec4<i32>(-23139i, 7282i, arg_1.x, 50992i)) << (select(_wgslsmith_mod_vec4_u32(u_input.a, u_input.a), ~u_input.a, select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true))) % vec4<u32>(32u))));
}

fn func_1(arg_0: vec3<bool>, arg_1: u32) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-674f))));
    global0 = array<Struct_1, 22>();
    var var_1 = true;
    let var_2 = abs(func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1464f, _wgslsmith_f_op_f32(min(var_0, var_0)), _wgslsmith_f_op_f32(249f + -203f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0, -131f, var_0), vec3<f32>(var_0, -1000f, -724f)))), vec4<i32>(-1i, abs(-34299i), func_2(u_input.a.x, Struct_4(25402i, arg_0.zz), 47653i), max(-27274i, 0i)) | reverseBits(~vec4<i32>(-5053i, 22881i, -20928i, 25044i))));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(-var_0));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(all(vec3<bool>(true, true, true)) && false, true, true);
    var var_1 = max(vec4<u32>(max(0u >> (u_input.a.x % 32u), 2514u), u_input.a.x, func_1(vec3<bool>(false, var_0.x, !var_0.x), 57715u), countOneBits(66534u)), select(vec4<u32>(u_input.a.x, _wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), firstTrailingBit(4294967295u)), _wgslsmith_div_u32(u_input.a.x, u_input.a.x) >> (1u % 32u), ~_wgslsmith_mod_u32(1u, u_input.a.x)), select(vec4<u32>(56497u, 0u, 72271u, 0u), max(u_input.a, u_input.a), vec4<bool>(false, var_0.x, true, true)) << (min(~u_input.a, ~vec4<u32>(21960u, 1u, u_input.a.x, u_input.a.x)) % vec4<u32>(32u)), true));
    var_1 = select(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 19647u, 0u), u_input.a)), ~u_input.a, vec4<bool>(true, false, !all(vec2<bool>(true, true)), true & all(vec3<bool>(false, var_0.x, var_0.x))));
    let var_2 = all(vec4<bool>(any(vec4<bool>(true, any(var_0.yy), all(vec4<bool>(false, var_0.x, true, var_0.x)), var_0.x)), !(!(var_0.x & var_0.x)), !var_0.x, true));
    let var_3 = 4294967295u;
    global0 = array<Struct_1, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~reverseBits(~47821u)), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-320f)) + 788f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-484f)))), vec2<f32>(995f, _wgslsmith_f_op_f32(-972f + -820f))));
}

