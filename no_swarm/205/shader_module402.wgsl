struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
    c: bool,
    d: vec3<bool>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
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

var<private> global0: array<u32, 11> = array<u32, 11>(60429u, 28924u, 4378u, 9839u, 44223u, 4294967295u, 17262u, 27598u, 0u, 4294967295u, 49353u);

var<private> global1: i32 = 13751i;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -450f), _wgslsmith_f_op_f32(-2623f + -264f), true)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - 570f), _wgslsmith_f_op_f32(abs(-1774f))))), -1176f, u_input.c.x, ~_wgslsmith_clamp_i32(u_input.c.x, u_input.d, -firstTrailingBit(u_input.c.x)));
}

