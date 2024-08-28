struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: f32,
    c: vec4<i32>,
    d: vec4<bool>,
    e: vec3<i32>,
}

struct Struct_4 {
    a: i32,
    b: vec2<f32>,
    c: i32,
    d: vec4<u32>,
    e: f32,
}

struct Struct_5 {
    a: i32,
    b: bool,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 8>;

var<private> global1: f32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: i32, arg_1: Struct_4, arg_2: i32, arg_3: i32) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(round(arg_1.e)) > arg_1.b.x;
    let var_1 = vec2<u32>(53816u, _wgslsmith_mod_u32(69864u, 1u));
    global0 = array<vec3<f32>, 8>();
    var var_2 = -479f;
    let var_3 = Struct_5(arg_2, !(arg_1.e != arg_1.e), arg_2, false);
    return ~(-((u_input.a & select(u_input.a, vec4<i32>(-11932i, -2282i, var_3.c, 6206i), var_3.d)) ^ u_input.a));
}

fn func_2() -> StorageBuffer {
    global0 = array<vec3<f32>, 8>();
    global0 = array<vec3<f32>, 8>();
    global0 = array<vec3<f32>, 8>();
    var var_0 = !(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec3<bool>(true, false, true)))));
    var var_1 = -u_input.a & vec4<i32>(u_input.a.x, _wgslsmith_dot_vec4_i32(reverseBits(func_3(1i, Struct_4(u_input.a.x, vec2<f32>(-164f, 1265f), u_input.a.x, vec4<u32>(u_input.d, u_input.b, 5150u, 14263u), 129f), u_input.a.x, u_input.a.x)), vec4<i32>(u_input.a.x, u_input.a.x, ~33093i, ~u_input.a.x)), _wgslsmith_sub_i32(0i, 1i), ~2147483647i);
    return StorageBuffer(u_input.c, vec3<i32>(-9965i, -9058i, var_1.x), 31646u);
}

fn func_1(arg_0: vec2<i32>) -> StorageBuffer {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-858f))))), -640f, all(vec4<bool>(-1i <= arg_0.x, true, all(vec4<bool>(true, false, true, true)), true)))));
    let var_0 = select(_wgslsmith_sub_u32(u_input.d, ~u_input.b), _wgslsmith_add_u32(1u, 26168u), !(!(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b, u_input.c), vec3<u32>(0u, 29281u, 62602u)) >= ~u_input.b)));
    let var_1 = -811f;
    global0 = array<vec3<f32>, 8>();
    let var_2 = var_0;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -3235f) * _wgslsmith_f_op_f32(step(-1449f, 471f))), _wgslsmith_f_op_f32(-1462f - 808f))));
    var var_0 = 572f;
    var var_1 = i32(-1i) * -abs(u_input.a.x);
    global1 = 322f;
    var_1 = ~(~(~_wgslsmith_sub_i32(-2147483647i, ~(-1i))));
    let x = u_input.a;
    s_output = func_1(min(u_input.a.xx, vec2<i32>(u_input.a.x, ~(2147483647i | u_input.a.x))));
}

