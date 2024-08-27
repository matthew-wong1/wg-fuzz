struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec4<u32>,
    d: vec3<bool>,
    e: vec3<u32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: f32,
    c: Struct_2,
    d: bool,
    e: vec4<f32>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
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

var<private> global0: array<i32, 6> = array<i32, 6>(-9411i, 2147483647i, i32(-2147483648), 1i, 2147483647i, 0i);

var<private> global1: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(vec3<u32>(0u, 4294967295u, 1u), false), Struct_2(vec3<u32>(33513u, 58148u, 82213u), true), Struct_2(vec3<u32>(0u, 19747u, 24231u), true), Struct_2(vec3<u32>(43471u, 0u, 1u), true), Struct_2(vec3<u32>(4294967295u, 67459u, 4294967295u), false), Struct_2(vec3<u32>(78635u, 1u, 22875u), false), Struct_2(vec3<u32>(4294967295u, 94352u, 4294967295u), false), Struct_2(vec3<u32>(1u, 0u, 10747u), false), Struct_2(vec3<u32>(1u, 30866u, 7002u), true), Struct_2(vec3<u32>(32216u, 14377u, 7813u), false), Struct_2(vec3<u32>(40394u, 4294967295u, 1u), false), Struct_2(vec3<u32>(0u, 36416u, 8869u), true), Struct_2(vec3<u32>(50372u, 40420u, 1u), true), Struct_2(vec3<u32>(4294967295u, 46605u, 1u), true), Struct_2(vec3<u32>(48670u, 16313u, 23474u), true), Struct_2(vec3<u32>(44817u, 1u, 25129u), true), Struct_2(vec3<u32>(21099u, 0u, 0u), true), Struct_2(vec3<u32>(1u, 65802u, 6781u), false), Struct_2(vec3<u32>(8954u, 90307u, 4294967295u), false));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(1i, 23440i, u_input.b, -(~(u_input.b | global0[_wgslsmith_index_u32(4294967295u, 6u)]))));
}

