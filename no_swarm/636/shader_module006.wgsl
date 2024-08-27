struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: Struct_1,
    d: vec2<i32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(61394u, true), Struct_1(1u, false), Struct_1(11359u, false), Struct_1(7126u, false), Struct_1(66651u, true), Struct_1(19695u, false), Struct_1(73484u, false), Struct_1(1u, true), Struct_1(77325u, false), Struct_1(41498u, true), Struct_1(55289u, false), Struct_1(13962u, false), Struct_1(0u, true), Struct_1(60553u, false));

var<private> global1: Struct_2 = Struct_2(vec2<i32>(2147483647i, i32(-2147483648)), -1462f, Struct_1(60094u, true), vec2<i32>(43460i, -1035i), vec2<f32>(1090f, 1000f));

var<private> global2: array<vec2<bool>, 27>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(min(~_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, global1.c.a, 0u), vec4<u32>(u_input.c, global1.c.a, 2631u, u_input.c)), abs(vec4<u32>(59140u, global1.c.a, 61885u, 0u))), countOneBits(~select(vec4<u32>(u_input.b.x, global1.c.a, 1u, 61760u), vec4<u32>(4294967295u, u_input.c, 4294967295u, 18203u), vec4<bool>(global1.c.b, global1.c.b, false, true)))), vec3<u32>(firstLeadingBit(~abs(u_input.b.x)), ~(~4294967295u >> (global1.c.a % 32u)), ~(~u_input.c)));
}

