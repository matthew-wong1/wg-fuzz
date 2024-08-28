struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
    c: i32,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 4> = array<vec4<f32>, 4>(vec4<f32>(1331f, 809f, 823f, -565f), vec4<f32>(124f, -620f, 715f, 1000f), vec4<f32>(-150f, -1738f, 964f, 317f), vec4<f32>(-846f, -470f, -769f, -686f));

var<private> global1: Struct_1;

var<private> global2: array<i32, 28> = array<i32, 28>(-65276i, -20826i, 0i, 2147483647i, 0i, i32(-2147483648), 2504i, i32(-2147483648), 51393i, 2147483647i, -29466i, 0i, 0i, 25240i, -4893i, 34828i, -23210i, -82393i, 1i, 0i, i32(-2147483648), -1i, i32(-2147483648), i32(-2147483648), 33284i, i32(-2147483648), 0i, -34466i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(-select(-(vec2<i32>(global2[_wgslsmith_index_u32(4294967295u, 28u)], global2[_wgslsmith_index_u32(u_input.b.x, 28u)]) & u_input.a.zz), ~abs(vec2<i32>(1i, -26829i)), vec2<bool>(global1.a.x, all(global1.a))));
}

