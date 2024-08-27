struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec4<f32>,
    d: vec3<bool>,
    e: vec2<u32>,
}

struct Struct_4 {
    a: u32,
    b: vec3<bool>,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-28516i, 2147483647i, -492i);

var<private> global1: Struct_2;

var<private> global2: array<Struct_3, 28>;

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
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1859f, 1755f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(746f, 861f) * vec2<f32>(657f, 468f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2450f, 1000f)) * vec2<f32>(-1303f, 700f)) - vec2<f32>(_wgslsmith_f_op_f32(118f - 665f), 987f)))));
}

