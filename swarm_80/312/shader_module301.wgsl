struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: f32,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<f32>,
    c: Struct_3,
    d: vec3<i32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3> = array<bool, 3>(true, false, true);

var<private> global1: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec3<u32>(0u, 4294967295u, 64059u), true, -810f, 15150i), Struct_1(vec3<u32>(23948u, 4294967295u, 40689u), true, 1375f, 0i), Struct_1(vec3<u32>(1u, 16660u, 4294967295u), true, -1014f, i32(-2147483648)), Struct_1(vec3<u32>(11308u, 11269u, 1u), false, 663f, 2147483647i), Struct_1(vec3<u32>(117424u, 84485u, 1u), true, -133f, -29577i), Struct_1(vec3<u32>(4294967295u, 27129u, 4294967295u), false, -256f, 2147483647i));

var<private> global2: Struct_4 = Struct_4(Struct_3(vec3<bool>(false, true, false), vec3<u32>(11099u, 4294967295u, 50717u), vec3<i32>(-18375i, 1i, -21504i)), vec3<f32>(-651f, -847f, -1098f), Struct_3(vec3<bool>(true, true, false), vec3<u32>(13151u, 2468u, 4294967295u), vec3<i32>(0i, -16232i, -6654i)), vec3<i32>(2147483647i, -43522i, 2147483647i), Struct_2(Struct_1(vec3<u32>(1u, 0u, 4294967295u), false, -1166f, 67303i), 100133u, 2337f, vec2<u32>(11815u, 32256u), vec3<u32>(65202u, 32488u, 1036u)));

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(global2.b.x, ~(~vec4<u32>(0u, 3584u, 35395u, global2.c.b.x)), global2.e.a.a.xz);
}

