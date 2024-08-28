struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: f32,
    d: vec2<i32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: i32,
    c: vec4<f32>,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
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

var<private> global0: array<vec3<i32>, 8> = array<vec3<i32>, 8>(vec3<i32>(i32(-2147483648), 31849i, 0i), vec3<i32>(-42389i, 35267i, 55661i), vec3<i32>(-12004i, i32(-2147483648), 2147483647i), vec3<i32>(-39943i, i32(-2147483648), -49944i), vec3<i32>(i32(-2147483648), 39477i, -22419i), vec3<i32>(7168i, 22182i, 0i), vec3<i32>(i32(-2147483648), 6986i, -27289i), vec3<i32>(-1i, -1i, -1i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 8>();
    let var_0 = -23641i;
    global0 = array<vec3<i32>, 8>();
    global0 = array<vec3<i32>, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1126f) + 299f) * 671f)));
}

