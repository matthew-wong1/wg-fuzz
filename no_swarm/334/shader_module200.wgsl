struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: f32,
    d: u32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 21> = array<i32, 21>(63098i, -26688i, -14720i, 0i, 2709i, -14239i, i32(-2147483648), -1220i, -1i, -81370i, -33006i, -20428i, 1i, i32(-2147483648), 28760i, i32(-2147483648), -1i, -5410i, 3863i, 33688i, -13986i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(1018f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1449f) + 380f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1203f)))), ~u_input.c.x, _wgslsmith_f_op_f32(max(489f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1168f))))));
}

