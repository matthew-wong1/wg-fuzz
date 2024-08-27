struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: i32,
    c: vec3<bool>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: u32,
    d: vec2<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec2<u32>, arg_3: Struct_1) -> f32 {
    return arg_3.a;
}

fn func_3() -> bool {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1714f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1560f - -896f) * _wgslsmith_f_op_f32(floor(132f)))))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-689f - _wgslsmith_div_f32(var_0.a, -725f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + var_0.a) - var_0.a)));
    var var_2 = var_1;
    let var_3 = var_1;
    var_0 = Struct_1(_wgslsmith_f_op_f32(var_3.a + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_3.a * _wgslsmith_f_op_f32(-var_3.a))))));
    return any(vec3<bool>(select(true, true, true) || true, all(vec3<bool>(true, true, true)), true));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec3<i32>, arg_2: Struct_2) -> Struct_2 {
    let var_0 = vec2<bool>(!(!(!any(vec4<bool>(false, false, false, false)))), !func_3());
    let var_1 = Struct_1(_wgslsmith_f_op_f32(ceil(arg_2.b)));
    let var_2 = arg_0;
    let var_3 = arg_2;
    var var_4 = _wgslsmith_mult_u32(arg_2.a, var_3.a);
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(abs(1u), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_3(vec2<i32>(-38926i, -1i), u_input.e, vec3<bool>(true, false, false), 13578i), Struct_3(vec2<i32>(u_input.e, -2147483647i), u_input.a, vec3<bool>(true, true, false), -34310i), vec2<u32>(0u, 4294967295u), Struct_1(-349f)))), _wgslsmith_f_op_f32(f32(-1f) * -473f)))));
    var_0 = func_2(vec4<f32>(_wgslsmith_f_op_f32(-var_0.b), 1129f, -210f, var_0.b), vec3<i32>(-20631i, -506i, u_input.e | u_input.a), Struct_2(u_input.b, _wgslsmith_f_op_f32(var_0.b - _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0.b, var_0.b), 621f)))));
    var var_1 = u_input.e;
    let var_2 = 1u;
    var var_3 = Struct_2(var_0.a, var_0.b);
    let var_4 = u_input.d;
    var_1 = min(_wgslsmith_dot_vec4_i32(-vec4<i32>(abs(-2147483647i), _wgslsmith_mod_i32(u_input.e, u_input.a), -u_input.a, u_input.a), abs(vec4<i32>(u_input.a, 0i, 2147483647i, -1i) | reverseBits(vec4<i32>(u_input.e, u_input.a, u_input.e, -13816i)))), _wgslsmith_mod_i32(u_input.a | select(u_input.a, reverseBits(9779i), true), abs(select(-u_input.e, u_input.a, true))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(~(-_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 13644i, u_input.e, u_input.a), vec4<i32>(u_input.e, u_input.a, -41091i, u_input.a))), 1i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-778f, var_0.b, 1113f, var_0.b)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1205f, -1686f, -1477f, 812f))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, 768f, 203f, -121f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, var_0.b, var_3.b, -676f) - vec4<f32>(var_3.b, 208f, var_3.b, var_0.b))))), ~(~reverseBits(_wgslsmith_mult_u32(var_2, var_2))), vec2<i32>(u_input.a, 0i), reverseBits(abs(reverseBits(u_input.c.zzz))));
}

