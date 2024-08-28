struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<f32>, 3>;

var<private> global2: array<vec3<i32>, 10>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<f32>, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(0u & ~(~u_input.b), global0.a.zz, countOneBits(~min(global0.a.x, _wgslsmith_dot_vec2_i32(global0.a.zx, vec2<i32>(u_input.a, u_input.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(global0.c.x)))) + _wgslsmith_div_f32(global0.c.x, _wgslsmith_f_op_f32(min(-633f, global0.c.x)))) * -225f));
}

