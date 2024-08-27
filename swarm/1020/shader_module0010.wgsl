struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec4<f32>) -> vec2<bool> {
    var var_0 = 46431u;
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1066f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1205f + arg_3.x), arg_1.a.x)) * arg_2.a.x)), -967f, all(vec3<bool>(4294967295u <= u_input.d.x, countOneBits(u_input.d.x) == abs(u_input.d.x), select(1485f <= arg_3.x, true, true)))));
    let var_2 = _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(select(_wgslsmith_add_vec2_u32(vec2<u32>(15853u, u_input.d.x), u_input.d.xx | vec2<u32>(50432u, 4294967295u)), vec2<u32>(2796u, ~u_input.d.x), false), vec2<u32>(u_input.d.x, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(55507u, 4294967295u), u_input.d.yx), vec2<u32>(105580u, 24027u)))), u_input.d.zx);
    let var_3 = 1u;
    let var_4 = Struct_1(~reverseBits(1u));
    return select(vec2<bool>(true, true), !select(!select(vec2<bool>(true, false), vec2<bool>(true, false), true), select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), select(true, false, true)), vec2<bool>(true, true)), select(false, all(select(vec2<bool>(true, true), vec2<bool>(true, false), true)) & true, arg_3.x > _wgslsmith_f_op_f32(-1134f * arg_1.a.x)));
}

fn func_2(arg_0: f32, arg_1: bool) -> bool {
    let var_0 = Struct_2(func_3(vec3<i32>(~(-47304i), 2147483647i, -6796i), Struct_3(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0, arg_0), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 1672f))))), Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(823f, arg_0))))), vec4<f32>(arg_0, _wgslsmith_f_op_f32(arg_0 * 673f), _wgslsmith_div_f32(arg_0, arg_0), -1353f)));
    let var_1 = vec3<u32>(4294967295u, max(~(~1537u), _wgslsmith_mult_u32(36830u, 1u) & _wgslsmith_add_u32(~u_input.d.x, 30071u)), 34068u);
    let var_2 = Struct_5(abs(_wgslsmith_dot_vec4_i32(~vec4<i32>(34799i, -2147483647i, u_input.c, 23622i), vec4<i32>(1i, select(-2147483647i, u_input.a.x, arg_1), ~u_input.b.x, 17202i))), _wgslsmith_div_f32(arg_0, 1268f));
    var var_3 = var_0.a;
    var var_4 = u_input.d.x;
    return true;
}

fn func_1(arg_0: vec3<i32>) -> StorageBuffer {
    let var_0 = all(vec3<bool>(select(!all(vec3<bool>(false, false, false)), func_2(_wgslsmith_f_op_f32(round(-887f)), true), true), !func_3(-u_input.b.xwy, Struct_3(vec2<f32>(-110f, -593f)), Struct_3(vec2<f32>(1019f, -2911f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(746f, 687f, -1000f, -1000f), vec4<f32>(-1000f, 1652f, -1782f, -252f)))).x, _wgslsmith_f_op_f32(1904f - _wgslsmith_f_op_f32(trunc(-256f))) <= _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(min(1162f, 648f)))));
    var var_1 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1076f)))), u_input.d.x != abs(_wgslsmith_dot_vec2_u32(u_input.d.yz, vec2<u32>(76059u, u_input.d.x)))) & any(vec4<bool>(var_0, true, !(!var_0), false));
    var_1 = false;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(762f, -1695f, -779f) + vec3<f32>(405f, -1120f, 761f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1076f, -267f, -115f)))))));
    var_2 = vec3<f32>(var_2.x, -318f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.x))))));
    return StorageBuffer(62617u, ~(~u_input.d.x), vec2<i32>(arg_0.x, _wgslsmith_dot_vec4_i32(select(max(vec4<i32>(u_input.b.x, -1i, arg_0.x, u_input.b.x), vec4<i32>(-15305i, -38472i, arg_0.x, -2147483647i)), vec4<i32>(u_input.b.x, u_input.a.x, u_input.b.x, -2147483647i), !vec4<bool>(var_0, var_0, false, var_0)), vec4<i32>(-80266i, u_input.b.x, 6376i, firstTrailingBit(-55380i)))), u_input.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(vec3<i32>(u_input.b.x, ~(-1i), u_input.b.x));
}

