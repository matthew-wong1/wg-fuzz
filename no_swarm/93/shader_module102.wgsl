struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: i32,
    d: i32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<Struct_1, 2>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(~4294967295u);
    let var_1 = any(vec4<bool>(true, !(global0.x >= _wgslsmith_f_op_f32(f32(-1f) * -841f)), any(vec2<bool>(true, true)), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(global0.zzx)) * global0.wxx), reverseBits(vec3<i32>(2511i, ~(-12500i), 1i)));
}

