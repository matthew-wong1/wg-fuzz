struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7>;

var<private> global1: i32;

var<private> global2: vec4<f32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~32649u, _wgslsmith_mult_u32(~49677u ^ (u_input.a.x << (0u % 32u)), u_input.a.x), u_input.a.x), 1065f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.x + global2.x), _wgslsmith_f_op_f32(-global2.x)) - -105f), _wgslsmith_f_op_f32(-global2.x)), vec2<i32>(_wgslsmith_sub_i32(abs(-12990i), ~(-26810i)), ~_wgslsmith_dot_vec3_i32(select(vec3<i32>(20722i, -2147483647i, 67575i), vec3<i32>(0i, 35179i, -1i), vec3<bool>(true, false, true)), vec3<i32>(1i, 1i, 1i))));
}

