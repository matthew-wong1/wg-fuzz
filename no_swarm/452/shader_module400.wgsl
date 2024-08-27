struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: Struct_1,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11>;

var<private> global1: array<i32, 27> = array<i32, 27>(i32(-2147483648), -9923i, -1i, -13221i, -949i, i32(-2147483648), -101131i, 2147483647i, 50989i, i32(-2147483648), -50773i, i32(-2147483648), 19573i, -24695i, 23571i, 19773i, 32886i, 12948i, 21462i, 1i, 1i, -1i, 30912i, 3261i, 2147483647i, 3303i, 0i);

var<private> global2: f32;

var<private> global3: i32 = 1i;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 11>();
    let var_0 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(1f * -798f), u_input.a.wxy);
}

