struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec2<i32>,
    d: vec4<bool>,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_3,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x;
    let var_1 = -1000f;
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1))) * 954f), -1550f, -772f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(var_1 * -2133f), -965f, _wgslsmith_f_op_f32(sign(-157f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-734f, 699f, -1283f) + vec3<f32>(var_1, 2209f, var_1))))))));
    let var_3 = -(~(-vec3<i32>(_wgslsmith_clamp_i32(-836i, u_input.c, -2147483647i), _wgslsmith_div_i32(u_input.c, 0i), -1122i)));
    var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-252f, var_2.x), var_1, var_2.x) + vec3<f32>(var_1, var_1, 541f));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(var_3.x, ~_wgslsmith_sub_i32(u_input.a.x & -1i, 0i), var_3.x, u_input.c), _wgslsmith_add_i32(u_input.c, u_input.c), _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(~u_input.b.wz, abs(vec2<u32>(89986u, var_0))) | (vec2<u32>(u_input.b.x, u_input.b.x) << (~vec2<u32>(40754u, var_0) % vec2<u32>(32u))), ~(~(~vec2<u32>(56955u, 4294967295u)))));
}

