struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec2<f32>(700f, 1371f), vec3<i32>(1295i, 8138i, 69273i)), Struct_1(vec2<f32>(226f, 161f), vec3<i32>(2147483647i, 1i, 1i)), Struct_1(vec2<f32>(921f, 1000f), vec3<i32>(2147483647i, 2147483647i, i32(-2147483648))));

var<private> global1: f32 = -503f;

var<private> global2: Struct_1;

var<private> global3: vec2<f32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global0[_wgslsmith_index_u32(1u, 3u)];
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, u_input.a, u_input.a);
}

