struct Struct_1 {
    a: i32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 21> = array<Struct_3, 21>(Struct_3(Struct_2(Struct_1(-25060i, true, -932f), 4410u, Struct_1(0i, false, -1557f))), Struct_3(Struct_2(Struct_1(1i, false, 520f), 0u, Struct_1(-63213i, true, -614f))), Struct_3(Struct_2(Struct_1(0i, true, -706f), 1u, Struct_1(11031i, false, 931f))), Struct_3(Struct_2(Struct_1(-1i, true, 103f), 33525u, Struct_1(-2522i, false, 502f))), Struct_3(Struct_2(Struct_1(0i, true, 866f), 4294967295u, Struct_1(0i, true, 1143f))), Struct_3(Struct_2(Struct_1(-32326i, true, -912f), 1u, Struct_1(-55776i, true, 2231f))), Struct_3(Struct_2(Struct_1(-1i, true, 141f), 80286u, Struct_1(-1i, true, 1000f))), Struct_3(Struct_2(Struct_1(i32(-2147483648), true, -177f), 11340u, Struct_1(2147483647i, true, -450f))), Struct_3(Struct_2(Struct_1(2147483647i, false, -1539f), 12622u, Struct_1(9821i, false, 1294f))), Struct_3(Struct_2(Struct_1(1i, false, 367f), 0u, Struct_1(-12471i, false, -370f))), Struct_3(Struct_2(Struct_1(16544i, false, 554f), 11538u, Struct_1(2147483647i, false, 121f))), Struct_3(Struct_2(Struct_1(-58643i, false, -490f), 0u, Struct_1(2147483647i, true, 115f))), Struct_3(Struct_2(Struct_1(0i, true, 2113f), 39129u, Struct_1(44109i, false, 509f))), Struct_3(Struct_2(Struct_1(-2314i, true, 1000f), 95263u, Struct_1(29600i, false, 2283f))), Struct_3(Struct_2(Struct_1(-56984i, false, 205f), 0u, Struct_1(0i, true, -1818f))), Struct_3(Struct_2(Struct_1(8592i, false, -749f), 0u, Struct_1(936i, false, -1109f))), Struct_3(Struct_2(Struct_1(-1i, false, -712f), 9290u, Struct_1(-13802i, true, 786f))), Struct_3(Struct_2(Struct_1(1i, false, 481f), 4294967295u, Struct_1(38808i, true, -645f))), Struct_3(Struct_2(Struct_1(-44841i, true, -127f), 546u, Struct_1(2147483647i, false, 1152f))), Struct_3(Struct_2(Struct_1(-1i, true, -1061f), 55786u, Struct_1(1i, false, 365f))), Struct_3(Struct_2(Struct_1(-23540i, true, 131f), 61094u, Struct_1(-10482i, false, -1144f))));

var<private> global1: u32 = 4294967295u;

var<private> global2: array<i32, 16>;

var<private> global3: array<u32, 4>;

var<private> global4: array<Struct_2, 25>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~max(1u, global3[_wgslsmith_index_u32(select(1u, 15569u, false), 4u)]), 4294967295u));
}

