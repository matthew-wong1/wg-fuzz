struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_3,
    c: i32,
    d: i32,
    e: f32,
}

struct Struct_5 {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: u32,
    d: vec3<f32>,
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2() -> bool {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -399f);
    return all(select(vec3<bool>(false, any(vec2<bool>(true, true)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true))) && true;
}

fn func_1() -> f32 {
    var var_0 = !vec2<bool>(true, !(!(u_input.c.x < u_input.c.x)));
    let var_1 = u_input.c.x;
    var_0 = !vec2<bool>(func_2(), !(all(vec3<bool>(var_0.x, true, true)) | !var_0.x));
    var_0 = !(!select(vec2<bool>(true, true), vec2<bool>(true, var_1 < 0i), true || any(vec3<bool>(var_0.x, true, true))));
    var_0 = vec2<bool>(false, true);
    return 344f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(665f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-607f, 465f)), _wgslsmith_f_op_f32(sign(-136f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -929f) + -1335f));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, -vec4<i32>(2147483647i, 1i, -16884i, _wgslsmith_div_i32(-2997i, 10590i)) & -vec4<i32>(~u_input.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), vec4<i32>(u_input.c.x, u_input.c.x, -28779i, -2147483647i)), -25892i, abs(u_input.c.x)), firstTrailingBit(u_input.b), vec3<f32>(-1346f, -1170f, _wgslsmith_f_op_f32(max(-473f, _wgslsmith_f_op_f32(func_1())))));
}

