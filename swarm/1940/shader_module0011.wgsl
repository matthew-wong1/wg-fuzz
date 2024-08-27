struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<i32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: f32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<f32>,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: vec4<f32>) -> f32 {
    var var_0 = u_input.b;
    var var_1 = (-2147483647i != (-2147483647i & u_input.c.x)) && arg_1.d;
    var_1 = false;
    let var_2 = 59033i;
    let var_3 = ~u_input.a;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(522f - arg_0)))))), arg_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(-674f, 1808f, max(_wgslsmith_clamp_vec2_i32(~vec2<i32>(u_input.c.x, u_input.c.x), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c.x, u_input.a), u_input.c.yx, vec2<i32>(u_input.c.x, u_input.a)), ~vec2<i32>(u_input.c.x, u_input.c.x)), vec2<i32>(_wgslsmith_sub_i32(u_input.a, u_input.c.x), _wgslsmith_dot_vec3_i32(u_input.c, u_input.c))), true), firstLeadingBit(vec3<u32>(countOneBits(u_input.b), u_input.b, 4294967295u)), _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), vec3<bool>(true, true, true));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, _wgslsmith_dot_vec3_i32(u_input.c, _wgslsmith_mod_vec3_i32(u_input.c, _wgslsmith_clamp_vec3_i32(vec3<i32>(-54520i, u_input.c.x, -2147483647i), u_input.c, vec3<i32>(u_input.a, var_0.a.c.x, var_0.a.c.x))) | u_input.c), vec4<f32>(700f, -1497f, var_0.c, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2393f), _wgslsmith_f_op_f32(var_0.c - -255f)))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-754f + var_0.a.a) - var_0.c)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(345f - var_0.c), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1(var_0.a.b, var_0.a, vec4<f32>(1000f, var_0.c, var_0.a.b, 1625f)))))), _wgslsmith_f_op_f32(exp2(var_0.a.a))), _wgslsmith_mult_u32(var_0.b.x, max(firstLeadingBit(0u >> (0u % 32u)), ~var_0.b.x)));
}

