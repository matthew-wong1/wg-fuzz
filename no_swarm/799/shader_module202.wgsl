struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: f32,
    c: i32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-687f, 640f, 612f);

var<private> global1: vec2<u32> = vec2<u32>(61167u, 28633u);

var<private> global2: Struct_3;

var<private> global3: u32;

var<private> global4: array<bool, 31>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -925f) + _wgslsmith_f_op_f32(global0.x - global0.x))))));
}

