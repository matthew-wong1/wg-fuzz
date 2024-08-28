struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: vec2<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct Struct_5 {
    a: bool,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 23189u;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(ceil(-1129f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -659f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-735f, 1395f)))), _wgslsmith_f_op_f32(f32(-1f) * -612f)));
}

