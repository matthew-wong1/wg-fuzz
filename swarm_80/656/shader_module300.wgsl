struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec4<u32>,
    d: f32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_1,
    d: Struct_2,
    e: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<i32>,
    c: u32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: i32, arg_1: vec2<i32>) -> vec3<u32> {
    var var_0 = u_input.a.zx;
    var_0 = vec2<i32>(arg_1.x, var_0.x);
    var var_1 = any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(select(true, true, true) && any(vec3<bool>(false, false, false)), true)));
    return _wgslsmith_sub_vec3_u32(~vec3<u32>(0u | _wgslsmith_mult_u32(u_input.c.x, u_input.c.x), min(46104u, u_input.c.x) << (u_input.c.x % 32u), 1u), _wgslsmith_mod_vec3_u32(abs(_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.d, u_input.c.x, u_input.d), vec3<u32>(u_input.d, 29434u, 0u))), firstLeadingBit(vec3<u32>(u_input.c.x, u_input.c.x & 0u, 17836u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~_wgslsmith_dot_vec3_u32(max(vec3<u32>(u_input.c.x, 27941u, u_input.c.x) << (vec3<u32>(u_input.c.x, u_input.c.x, u_input.d) % vec3<u32>(32u)), func_1(15217i, vec2<i32>(u_input.a.x, u_input.a.x))), vec3<u32>(~1u, ~1215u, ~u_input.d)));
    var_0 = u_input.d;
    var_0 = 8170u;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1000f)), -585f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(157f + 641f) * 1f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(399f))))));
    var var_2 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(u_input.b, i32(-1i) * -2147483647i));
}

