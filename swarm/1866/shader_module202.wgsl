struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: i32;

var<private> global2: f32;

var<private> global3: array<f32, 15>;

var<private> global4: array<u32, 12> = array<u32, 12>(4294967295u, 1u, 44692u, 12085u, 0u, 5414u, 15031u, 58799u, 1u, 20221u, 922u, 0u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3[_wgslsmith_index_u32(~global0.x, 15u)];
    let x = u_input.a;
    s_output = StorageBuffer(55382u);
}

