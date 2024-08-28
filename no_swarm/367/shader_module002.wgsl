struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec4<u32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<i32>,
    e: f32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: vec4<f32>) -> i32 {
    var var_0 = arg_0.x;
    let var_1 = max(vec2<i32>(61974i, 0i), u_input.b.yw);
    return u_input.b.x ^ _wgslsmith_add_i32(_wgslsmith_div_i32(-1i & (var_1.x ^ var_1.x), _wgslsmith_dot_vec3_i32(u_input.b.xzw, u_input.b.zxy) & (1i | var_1.x)), -min(53457i, ~var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(abs(-1i), u_input.b.x, _wgslsmith_add_i32(~(~(i32(-1i) * -39304i)), u_input.b.x & firstLeadingBit(_wgslsmith_mod_i32(u_input.c, 0i))), ~(-(u_input.b.x >> (~u_input.a % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -994f), 1000f, -212f, _wgslsmith_f_op_f32(sign(1000f)))))), 0i, _wgslsmith_f_op_f32(round(161f)), abs(_wgslsmith_clamp_i32(firstLeadingBit(-2147483647i), _wgslsmith_clamp_i32(var_0.x, u_input.c, var_0.x), -var_0.x)) << (~_wgslsmith_mod_u32(u_input.a & 19418u, _wgslsmith_mult_u32(u_input.a, 76491u)) % 32u), u_input.c);
}

