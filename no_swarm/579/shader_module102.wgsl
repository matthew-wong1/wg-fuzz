struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-438f + _wgslsmith_f_op_f32(1179f - -2264f)), _wgslsmith_f_op_f32(select(-1000f, -1412f, true))) * _wgslsmith_f_op_f32(1f - 233f)), 1i, vec3<u32>(~(~(~0u)), abs(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(34565u, u_input.a.x, u_input.b), vec3<u32>(1u, u_input.a.x, 61177u)), ~vec3<u32>(u_input.a.x, u_input.b, 0u))), _wgslsmith_dot_vec2_u32(~(u_input.a >> (u_input.a % vec2<u32>(32u))), vec2<u32>(~4294967295u, _wgslsmith_clamp_u32(1u, 1u, 0u)))), min(_wgslsmith_mod_vec3_i32(firstLeadingBit(select(vec3<i32>(2147483647i, 2147483647i, -4230i), vec3<i32>(2147483647i, -2147483647i, 2147483647i), true)), vec3<i32>(_wgslsmith_mult_i32(3470i, -8672i), 1i, 1i)), _wgslsmith_mod_vec3_i32(abs(vec3<i32>(-1i, 2147483647i, 52449i)), -vec3<i32>(1i, 1i, 1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(200f * -837f)))));
}

