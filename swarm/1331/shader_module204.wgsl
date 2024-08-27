struct Struct_1 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_2) -> bool {
    return any(!arg_2.a.a.xxz);
}

fn func_2(arg_0: u32) -> vec4<f32> {
    global0 = all(vec4<bool>(any(vec4<bool>(true, select(true, false, true), true, all(vec4<bool>(true, true, true, true)))), func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1857f, 716f, -515f, 1312f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1138f, 263f, -1199f, 1103f) - vec4<f32>(-1018f, -724f, 408f, -1094f))), Struct_1(vec4<bool>(false, true, true, false), ~u_input.b), Struct_2(Struct_1(vec4<bool>(true, true, false, false), 58994u), Struct_1(vec4<bool>(true, true, false, true), 25587u), -1211f)), all(vec4<bool>(false, true, all(vec2<bool>(false, false)), true)), true));
    global0 = any(select(vec3<bool>((-2147483647i <= u_input.a.x) | all(vec3<bool>(true, true, true)), true, false), !(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true)), vec3<bool>(false, _wgslsmith_div_u32(0u, u_input.e) >= ~1026u, true)));
    let var_0 = any(vec2<bool>(false, any(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false))));
    global0 = all(select(vec2<bool>(_wgslsmith_f_op_f32(round(595f)) < _wgslsmith_div_f32(-1551f, 782f), false), vec2<bool>(func_3(vec4<f32>(-1134f, -796f, -257f, -178f), Struct_1(vec4<bool>(true, var_0, var_0, var_0), 1u), Struct_2(Struct_1(vec4<bool>(var_0, true, var_0, var_0), 19312u), Struct_1(vec4<bool>(var_0, false, false, true), arg_0), 1046f)), true), select(!vec2<bool>(var_0, var_0), !(!vec2<bool>(var_0, var_0)), max(u_input.c, u_input.d.x) == firstLeadingBit(4294967295u))));
    let var_1 = u_input.d;
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-1186f, -976f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -363f), -259f, any(!vec2<bool>(false, var_0))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1745f - -1096f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(851f - -697f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-107f * -1256f)) - 1f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(482f)))));
}

fn func_4(arg_0: vec4<f32>, arg_1: f32, arg_2: f32, arg_3: vec3<i32>) -> Struct_2 {
    let var_0 = -_wgslsmith_dot_vec3_i32(arg_3, ~u_input.a.zyz);
    let var_1 = _wgslsmith_dot_vec3_u32(~u_input.d.wzw, ~_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.c, u_input.c, u_input.b), vec3<u32>(8066u, u_input.e, 1u))) ^ u_input.e;
    global0 = true;
    let var_2 = select(select(select(select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), false)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true))), vec3<bool>(true, true, false), any(select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true), any(vec4<bool>(false, false, false, true))))), vec3<bool>(true, true, true), !vec3<bool>(!(u_input.c > 44015u), (0u < u_input.d.x) & true, !(-865i > arg_3.x)));
    var var_3 = Struct_1(vec4<bool>(all(!vec3<bool>(var_2.x, true, var_2.x)), all(var_2.zy), true, all(vec2<bool>(var_2.x, var_2.x)) | (firstLeadingBit(arg_3.x) != 1i)), 0u);
    return Struct_2(Struct_1(vec4<bool>(~var_1 >= 29388u, _wgslsmith_div_f32(arg_2, 568f) > -295f, var_3.a.x, !all(var_3.a.yx)), u_input.d.x), Struct_1(vec4<bool>(true, all(vec2<bool>(var_3.a.x, var_3.a.x)) == var_2.x, ~u_input.a.x > -2147483647i, any(select(var_2, vec3<bool>(false, var_2.x, true), true))), 4294967295u), 672f);
}

fn func_1(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_1) -> i32 {
    var var_0 = arg_2.a.yw;
    var var_1 = arg_2.b ^ 1u;
    let var_2 = func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(614f)), 767f)), 171f, arg_0.x, arg_0.x) * _wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_add_u32(21467u, u_input.c)))), 986f, arg_0.x, u_input.a.yyx);
    let var_3 = arg_2.b >> (~arg_2.b % 32u);
    var var_4 = Struct_1(var_2.a.a, ~_wgslsmith_div_u32(1u, 1u));
    return max(firstTrailingBit(min(0i, abs(u_input.a.x))), -4443i) >> (~1u % 32u);
}

fn func_5(arg_0: vec4<i32>, arg_1: vec4<f32>) -> Struct_2 {
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), 1283f) > _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-func_4(arg_1, arg_1.x, arg_1.x, vec3<i32>(u_input.a.x, u_input.a.x, 3999i)).c)))));
    let var_0 = arg_1.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0, -844f, arg_1.x, 2359f))) * _wgslsmith_f_op_vec4_f32(select(arg_1, arg_1, vec4<bool>(false, true, true, true))))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(339f, -2254f, var_0, -644f))), arg_1))));
    var var_2 = -566f;
    global0 = (max(0i, _wgslsmith_mod_i32(0i, u_input.a.x)) >> ((_wgslsmith_div_u32(4294967295u, 98350u) | ~u_input.e) % 32u)) <= _wgslsmith_sub_i32(abs(-30151i | _wgslsmith_mod_i32(u_input.a.x, arg_0.x)), _wgslsmith_add_i32(abs(i32(-1i) * -2147483647i), 0i));
    return func_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-259f, _wgslsmith_f_op_f32(-var_1.x), -1467f, _wgslsmith_f_op_f32(-1027f + -859f))), _wgslsmith_f_op_vec4_f32(select(arg_1, arg_1, all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false)))))), 1000f, 923f, ~vec3<i32>(u_input.a.x, _wgslsmith_mod_i32(u_input.a.x, u_input.a.x), select(func_1(vec3<f32>(-598f, arg_1.x, 744f), false, Struct_1(vec4<bool>(true, true, false, true), 29879u)), func_1(var_1.zxw, true, Struct_1(vec4<bool>(true, true, true, false), 1u)), all(vec3<bool>(true, false, false)))));
}

fn func_6(arg_0: Struct_2, arg_1: i32, arg_2: i32) -> StorageBuffer {
    global0 = 97312u >= ~u_input.b;
    return StorageBuffer(_wgslsmith_mult_vec3_u32(u_input.d.wwz, ~countOneBits(~u_input.d.yzz)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = false;
    let x = u_input.a;
    s_output = func_6(func_5(vec4<i32>(firstLeadingBit(_wgslsmith_add_i32(46748i, 6750i)), -51893i, u_input.a.x, ~func_1(vec3<f32>(1057f, 1848f, 1776f), false, Struct_1(vec4<bool>(true, false, true, true), 105975u))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(619f, -268f, -794f, 770f)))))), u_input.a.x, ~(abs(-u_input.a.x) & select(-1i >> (u_input.e % 32u), u_input.a.x, true)));
}

