struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: f32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(vec3<bool>(false, false, true), vec4<bool>(false, false, true, false), vec4<u32>(1u, 1u, 48687u, 62572u)), Struct_1(vec3<bool>(false, true, true), vec4<bool>(true, true, false, false), vec4<u32>(4294967295u, 0u, 38608u, 4294967295u)), Struct_1(vec3<bool>(false, false, true), vec4<bool>(false, true, true, false), vec4<u32>(4294967295u, 59377u, 1u, 1278u)), Struct_1(vec3<bool>(true, false, false), vec4<bool>(true, true, false, false), vec4<u32>(70205u, 12677u, 60204u, 17893u)), Struct_1(vec3<bool>(false, false, true), vec4<bool>(false, false, true, true), vec4<u32>(54803u, 7956u, 47293u, 22366u)), Struct_1(vec3<bool>(true, false, true), vec4<bool>(true, false, true, false), vec4<u32>(4294967295u, 0u, 28724u, 4294967295u)), Struct_1(vec3<bool>(false, true, false), vec4<bool>(true, true, true, true), vec4<u32>(21323u, 4294967295u, 4294967295u, 4294967295u)), Struct_1(vec3<bool>(false, true, false), vec4<bool>(false, false, true, true), vec4<u32>(22754u, 1u, 26863u, 12731u)), Struct_1(vec3<bool>(true, true, true), vec4<bool>(false, false, false, false), vec4<u32>(4294967295u, 1u, 5634u, 1u)), Struct_1(vec3<bool>(false, true, false), vec4<bool>(true, false, true, false), vec4<u32>(0u, 0u, 1u, 1u)), Struct_1(vec3<bool>(false, false, true), vec4<bool>(false, false, false, true), vec4<u32>(55218u, 0u, 4294967295u, 0u)), Struct_1(vec3<bool>(false, false, true), vec4<bool>(false, true, true, true), vec4<u32>(4294967295u, 63181u, 64211u, 5370u)), Struct_1(vec3<bool>(false, true, false), vec4<bool>(true, true, false, true), vec4<u32>(1u, 19647u, 0u, 4270u)), Struct_1(vec3<bool>(false, false, false), vec4<bool>(false, true, true, true), vec4<u32>(43601u, 4294967295u, 1u, 37u)), Struct_1(vec3<bool>(true, false, true), vec4<bool>(true, false, false, true), vec4<u32>(33594u, 25591u, 1u, 9294u)), Struct_1(vec3<bool>(true, true, false), vec4<bool>(true, false, false, true), vec4<u32>(16563u, 4294967295u, 0u, 54559u)), Struct_1(vec3<bool>(true, false, false), vec4<bool>(true, true, false, false), vec4<u32>(17966u, 62618u, 42403u, 0u)));

var<private> global1: Struct_1;

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(global1.c, global1.c.zw);
}

