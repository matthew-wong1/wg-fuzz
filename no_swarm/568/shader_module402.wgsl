struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: f32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 28>;

var<private> global1: array<Struct_2, 8>;

var<private> global2: i32 = i32(-2147483648);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1063f - 363f) + _wgslsmith_f_op_f32(920f + 628f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(239f * 1055f), -138f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-448f * 1067f), _wgslsmith_f_op_f32(f32(-1f) * -532f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -220f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(2398f, -865f))))), ~u_input.b, -27678i);
}

