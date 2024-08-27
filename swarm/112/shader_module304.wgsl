struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec4<u32>,
    d: u32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec2<i32>;

var<private> global2: vec2<u32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-30770i, global1.x, _wgslsmith_clamp_i32(u_input.e, global1.x, global1.x) | _wgslsmith_clamp_i32(global1.x, 49130i, -1i)), min(~(vec3<i32>(u_input.c, u_input.e, 1i) ^ vec3<i32>(-27074i, -20337i, 1i)), ~vec3<i32>(u_input.e, -1i, global1.x) | _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, -39903i, u_input.c), vec3<i32>(1i, global1.x, u_input.e)))), _wgslsmith_div_u32(24496u, 56741u), _wgslsmith_div_u32(global2.x, 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1954f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-2282f, -497f) * _wgslsmith_f_op_f32(sign(371f))))));
}

