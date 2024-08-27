struct Struct_1 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: f32,
    d: bool,
    e: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<u32>,
    d: f32,
    e: u32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct Struct_4 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_5 {
    a: u32,
    b: Struct_1,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 19> = array<Struct_5, 19>(Struct_5(22270u, Struct_1(vec3<bool>(false, true, true), vec2<u32>(33682u, 42019u), 1000f, false, vec4<bool>(false, true, false, true)), vec2<bool>(false, true)), Struct_5(0u, Struct_1(vec3<bool>(false, false, false), vec2<u32>(61757u, 0u), -1675f, true, vec4<bool>(true, true, true, true)), vec2<bool>(true, false)), Struct_5(78723u, Struct_1(vec3<bool>(false, false, true), vec2<u32>(4294967295u, 35138u), -1353f, true, vec4<bool>(false, false, true, false)), vec2<bool>(false, false)), Struct_5(0u, Struct_1(vec3<bool>(true, false, true), vec2<u32>(0u, 4588u), -361f, true, vec4<bool>(false, true, true, false)), vec2<bool>(false, false)), Struct_5(36903u, Struct_1(vec3<bool>(true, false, false), vec2<u32>(0u, 1u), -373f, true, vec4<bool>(true, true, true, false)), vec2<bool>(true, false)), Struct_5(4294967295u, Struct_1(vec3<bool>(true, false, false), vec2<u32>(16115u, 27304u), -1800f, true, vec4<bool>(false, false, true, true)), vec2<bool>(false, false)), Struct_5(26540u, Struct_1(vec3<bool>(true, true, false), vec2<u32>(12709u, 4294967295u), 1131f, false, vec4<bool>(true, true, true, false)), vec2<bool>(true, true)), Struct_5(43370u, Struct_1(vec3<bool>(true, false, false), vec2<u32>(576u, 1u), -1955f, false, vec4<bool>(true, true, true, false)), vec2<bool>(true, false)), Struct_5(26091u, Struct_1(vec3<bool>(false, false, false), vec2<u32>(80196u, 0u), -1182f, true, vec4<bool>(true, false, false, false)), vec2<bool>(false, true)), Struct_5(103731u, Struct_1(vec3<bool>(true, false, true), vec2<u32>(87224u, 0u), 584f, false, vec4<bool>(true, false, false, false)), vec2<bool>(true, true)), Struct_5(0u, Struct_1(vec3<bool>(true, true, true), vec2<u32>(56787u, 1u), -813f, false, vec4<bool>(true, true, true, true)), vec2<bool>(true, true)), Struct_5(48855u, Struct_1(vec3<bool>(true, true, true), vec2<u32>(0u, 0u), 2268f, false, vec4<bool>(false, true, false, true)), vec2<bool>(false, true)), Struct_5(0u, Struct_1(vec3<bool>(false, true, true), vec2<u32>(4294967295u, 156738u), -1579f, false, vec4<bool>(true, true, false, false)), vec2<bool>(false, true)), Struct_5(16926u, Struct_1(vec3<bool>(true, false, true), vec2<u32>(4294967295u, 29894u), 503f, true, vec4<bool>(false, true, true, true)), vec2<bool>(true, true)), Struct_5(0u, Struct_1(vec3<bool>(true, true, false), vec2<u32>(19575u, 20579u), 1904f, true, vec4<bool>(true, true, true, true)), vec2<bool>(false, false)), Struct_5(1u, Struct_1(vec3<bool>(false, false, false), vec2<u32>(61933u, 34111u), -1179f, false, vec4<bool>(false, false, false, true)), vec2<bool>(true, true)), Struct_5(0u, Struct_1(vec3<bool>(true, false, true), vec2<u32>(123109u, 16474u), -518f, false, vec4<bool>(false, true, true, true)), vec2<bool>(false, false)), Struct_5(79336u, Struct_1(vec3<bool>(false, true, true), vec2<u32>(13842u, 4294967295u), 2611f, false, vec4<bool>(true, true, true, false)), vec2<bool>(true, true)), Struct_5(4294967295u, Struct_1(vec3<bool>(false, true, true), vec2<u32>(4294967295u, 1u), -702f, false, vec4<bool>(true, false, true, true)), vec2<bool>(false, false)));

var<private> global1: array<i32, 2> = array<i32, 2>(2147483647i, 7628i);

var<private> global2: Struct_1;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1323f;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(global2.b.x, min(~u_input.b.x, ~105970u), reverseBits(~(~global2.b.x)), 1u << (max(_wgslsmith_div_u32(global2.b.x, 4294967295u), global2.b.x) % 32u)));
}

