struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec3<f32>,
    d: i32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 23> = array<Struct_4, 23>(Struct_4(false), Struct_4(true), Struct_4(false), Struct_4(true), Struct_4(false), Struct_4(true), Struct_4(true), Struct_4(true), Struct_4(true), Struct_4(true), Struct_4(true), Struct_4(true), Struct_4(true), Struct_4(false), Struct_4(false), Struct_4(true), Struct_4(false), Struct_4(true), Struct_4(false), Struct_4(true), Struct_4(true), Struct_4(false), Struct_4(false));

var<private> global1: vec2<bool> = vec2<bool>(false, false);

var<private> global2: Struct_3;

var<private> global3: array<vec3<u32>, 15> = array<vec3<u32>, 15>(vec3<u32>(68525u, 1u, 2382u), vec3<u32>(4294967295u, 67341u, 4294967295u), vec3<u32>(34073u, 0u, 1u), vec3<u32>(98253u, 48413u, 8559u), vec3<u32>(4294967295u, 1u, 41437u), vec3<u32>(4294967295u, 1u, 96163u), vec3<u32>(35839u, 25121u, 0u), vec3<u32>(4294967295u, 1u, 17293u), vec3<u32>(1u, 0u, 49617u), vec3<u32>(0u, 16026u, 0u), vec3<u32>(4294967295u, 30048u, 82266u), vec3<u32>(0u, 13197u, 29407u), vec3<u32>(1u, 0u, 5974u), vec3<u32>(1u, 777u, 49043u), vec3<u32>(18424u, 19875u, 12588u));

var<private> global4: u32 = 52835u;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<u32>, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_i32(~(~(-vec4<i32>(1i, 1i, 0i, 0i))), vec4<i32>(firstLeadingBit(select(770i, -2147483647i, global1.x)), ~(i32(-1i) * -30668i), ~abs(5052i), -1i)), min(firstTrailingBit(~7963i), 2147483647i), abs(vec3<u32>(~1u, _wgslsmith_mod_u32(0u, 1u), u_input.a.x)) & ~u_input.a.xzx);
}

