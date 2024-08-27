struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: bool,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<u32>,
    c: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<u32>,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 18> = array<bool, 18>(true, false, true, true, false, true, true, false, false, false, false, false, true, true, false, true, true, false);

var<private> global1: array<vec3<f32>, 5>;

var<private> global2: array<vec4<i32>, 14>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -186f;
    global2 = array<vec4<i32>, 14>();
    let var_1 = !(!(!vec2<bool>(true, all(vec3<bool>(true, false, global0[_wgslsmith_index_u32(43904u, 18u)])))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-firstTrailingBit(~30500i), -18428i, -1i));
}

