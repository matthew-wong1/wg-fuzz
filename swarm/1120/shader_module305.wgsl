struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 20>;

var<private> global1: Struct_1 = Struct_1(true, vec3<u32>(0u, 32936u, 0u), 32229u);

var<private> global2: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(true, vec3<u32>(21238u, 4294967295u, 25028u), 58147u), Struct_1(true, vec3<u32>(4294967295u, 1u, 66082u), 33579u), Struct_1(true, vec3<u32>(1u, 42010u, 10165u), 17847u), Struct_1(false, vec3<u32>(1u, 29463u, 1u), 31038u), Struct_1(true, vec3<u32>(42079u, 4294967295u, 4294967295u), 0u), Struct_1(true, vec3<u32>(82594u, 1u, 24472u), 1u));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(800f, 589f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1234f, 949f) + vec2<f32>(-1539f, 2668f))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-551f, 463f)), vec2<f32>(1020f, 533f), vec2<bool>(true, global1.a))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1635f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(768f, 569f))), _wgslsmith_f_op_f32(select(1304f, _wgslsmith_f_op_f32(513f - -928f), select(global1.a, true, global1.a))))), 1059f));
}

