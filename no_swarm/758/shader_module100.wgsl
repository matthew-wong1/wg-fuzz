struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1864f;

var<private> global1: f32 = 338f;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.zzw;
    global0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -162f)));
    let var_1 = !any(vec4<bool>(any(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false))), true, true, true));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(1179f * _wgslsmith_f_op_f32(f32(-1f) * -778f)));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a, var_2.a)));
    let x = u_input.a;
    s_output = StorageBuffer(~1u, 4294967295u, -703f);
}

