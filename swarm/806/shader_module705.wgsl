struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: i32,
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

var<private> global0: array<i32, 14>;

var<private> global1: array<f32, 8> = array<f32, 8>(779f, 1000f, 1000f, -1398f, -243f, 160f, 987f, -712f);

var<private> global2: vec2<f32>;

var<private> global3: array<Struct_1, 10>;

var<private> global4: Struct_2 = Struct_2(vec4<i32>(1i, 19686i, -38979i, -6575i), Struct_1(vec3<f32>(549f, -1287f, 806f)), 0u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global2.x)) - -581f));
}

