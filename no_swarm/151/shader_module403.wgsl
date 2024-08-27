struct Struct_1 {
    a: bool,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: u32,
    b: vec3<f32>,
    c: vec3<u32>,
    d: u32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 21>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<u32>, arg_2: bool, arg_3: i32) -> f32 {
    let var_0 = Struct_3(true);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.x)) - arg_0.x);
}

fn func_2(arg_0: vec4<u32>, arg_1: f32, arg_2: Struct_3) -> f32 {
    global0 = array<vec2<bool>, 21>();
    global0 = array<vec2<bool>, 21>();
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1042f, _wgslsmith_f_op_f32(min(arg_1, -534f)), _wgslsmith_f_op_f32(-arg_1)), vec3<f32>(_wgslsmith_f_op_f32(arg_1 + -2173f), arg_1, _wgslsmith_f_op_f32(-921f + -320f))))), arg_1, arg_2.a, Struct_1(arg_2.a, ~arg_0.x, _wgslsmith_f_op_f32(sign(1f))));
    var var_1 = arg_1;
    global0 = array<vec2<bool>, 21>();
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-376f)) - _wgslsmith_f_op_f32(var_0.d.c - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1229f))))));
}

fn func_3(arg_0: vec4<f32>, arg_1: i32, arg_2: Struct_4) -> bool {
    var var_0 = Struct_1(select(~1u < arg_2.d, any(global0[_wgslsmith_index_u32(~1u, 21u)]), arg_2.e.x), reverseBits(firstLeadingBit(~arg_2.d)), -935f);
    var var_1 = Struct_1(any(select(select(select(arg_2.e, arg_2.e, arg_2.e), !arg_2.e, vec4<bool>(true, false, true, true)), !vec4<bool>(var_0.a, arg_2.e.x, var_0.a, arg_2.e.x), !(!var_0.a))), 1u, _wgslsmith_f_op_f32(f32(-1f) * -600f));
    let var_2 = arg_2.e;
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(784f, var_0.c) * _wgslsmith_f_op_f32(ceil(var_0.c))), _wgslsmith_f_op_f32(530f * _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(arg_2.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1284f)), -498f), arg_2.b.x))), var_2.x, Struct_1(arg_2.e.x, _wgslsmith_mod_u32(~_wgslsmith_add_u32(arg_2.a, var_1.b), ~1u), -1488f));
    global0 = array<vec2<bool>, 21>();
    return !((_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, arg_1, arg_1), -vec3<i32>(-1i, 1i, -2147483647i)) < u_input.a.x) && any(vec4<bool>(var_1.a && true, true, var_0.a, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-484f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(754f * -648f))) - -320f), -129f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(1f)) - _wgslsmith_f_op_f32(func_1(vec3<f32>(301f, _wgslsmith_f_op_f32(2271f + 1544f), _wgslsmith_f_op_f32(257f - 2150f)), vec3<u32>(1u, _wgslsmith_sub_u32(0u, 0u), 1u), all(vec3<bool>(true, true, true)), select(abs(u_input.a.x), -41794i, select(false, true, false))))), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-564f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(vec4<u32>(4294967295u, 4294967295u, 36560u, 1u), -781f, Struct_3(false))), _wgslsmith_f_op_f32(1426f - -1194f)))));
    let var_1 = Struct_2(var_0.wyz, var_0.x, select(func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(-320f, -554f, 894f, var_0.x) - vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)), 1i, Struct_4(7965u, var_0.yxz, vec3<u32>(5998u, 1u, 0u), 35652u, vec4<bool>(false, false, false, false))), true, false) | false, Struct_1(!any(vec4<bool>(true, false, true, true)), 57051u, var_0.x));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(649f, 386f)), _wgslsmith_f_op_f32(796f - var_1.d.c)) - _wgslsmith_div_vec2_f32(var_0.xy, _wgslsmith_f_op_vec2_f32(var_1.a.zx + var_0.xw))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(var_0.xz)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.a.xz)))));
    let var_3 = Struct_3(var_1.c);
    let var_4 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(467f - -103f) * _wgslsmith_f_op_f32(var_2.x + var_2.x)), -614f), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1615f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.x)) + var_1.b)))));
    var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d.c, 1053f, -824f, 1000f)))))));
    var var_5 = var_1.d;
    var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec3<f32>(var_2.x, -918f, var_0.x), ~vec3<u32>(var_1.d.b, 0u, 15936u), true, _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(-2147483647i, -2147483647i, u_input.a.x, u_input.a.x)))))), 184f, -412f, _wgslsmith_f_op_f32(ceil(1000f)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, ~(~(~(~vec2<u32>(var_5.b, 3741u)))), vec2<u32>(~var_1.d.b, ~(~var_5.b)));
}

