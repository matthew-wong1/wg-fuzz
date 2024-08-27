struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: i32,
    c: vec2<bool>,
    d: vec2<i32>,
}

struct Struct_3 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: f32,
    d: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_2, 22>;

var<private> global2: vec2<u32> = vec2<u32>(49457u, 0u);

var<private> global3: array<Struct_3, 5> = array<Struct_3, 5>(Struct_3(13721u, vec4<u32>(4294967295u, 24145u, 1u, 1u)), Struct_3(12085u, vec4<u32>(0u, 66490u, 9675u, 64186u)), Struct_3(73225u, vec4<u32>(28023u, 90121u, 5840u, 0u)), Struct_3(0u, vec4<u32>(4294967295u, 11526u, 31189u, 81979u)), Struct_3(1331u, vec4<u32>(23057u, 4294967295u, 4294967295u, 35050u)));

var<private> global4: Struct_3;

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(min(select(select(vec4<i32>(global0.a, -21422i, 7435i, global0.a), u_input.e, vec4<bool>(false, false, true, false)), u_input.e, !select(vec4<bool>(true, global0.c.x, false, global0.c.x), vec4<bool>(global0.c.x, global0.c.x, true, global0.c.x), global0.c.x)), u_input.e));
}

