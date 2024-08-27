struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: f32,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -2147483647i;
    var_0 = _wgslsmith_mod_i32(_wgslsmith_div_i32(0i, _wgslsmith_mult_i32(max(0i, _wgslsmith_dot_vec2_i32(u_input.a.yy, u_input.a.xx)), 1i)), u_input.c & -9117i);
    global0 = abs(_wgslsmith_mult_u32(~(_wgslsmith_mod_u32(0u, u_input.e.x) ^ 4294967295u), u_input.d));
    var_0 = -u_input.a.x;
    let var_1 = 1f;
    global0 = u_input.e.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(1i, 35457i, select(u_input.c, ~u_input.c, true)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1127f - var_1) * _wgslsmith_f_op_f32(-var_1)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(209f)) - 617f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1 + -1594f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(var_1)), _wgslsmith_f_op_f32(-var_1), all(vec4<bool>(true, true, false, true)))))), max(abs(4294967295u), _wgslsmith_div_u32(u_input.e.x, _wgslsmith_div_u32(select(u_input.b, 1u, true), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.d, u_input.d, 14136u), vec4<u32>(36728u, 37489u, u_input.b, 50010u))))));
}

