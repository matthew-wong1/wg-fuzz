struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: f32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: vec2<u32> = vec2<u32>(32586u, 4294967295u);

var<private> global2: array<Struct_1, 19>;

var<private> global3: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(-1i, Struct_1(vec2<f32>(695f, 715f)), 135f, vec2<u32>(18328u, 4294967295u)), Struct_2(-59793i, Struct_1(vec2<f32>(-133f, -557f)), 1000f, vec2<u32>(0u, 1u)), Struct_2(-9786i, Struct_1(vec2<f32>(-960f, -973f)), -1000f, vec2<u32>(33670u, 14735u)), Struct_2(-14908i, Struct_1(vec2<f32>(1843f, 885f)), -328f, vec2<u32>(0u, 10190u)), Struct_2(-9660i, Struct_1(vec2<f32>(1388f, 1069f)), 346f, vec2<u32>(1u, 20500u)), Struct_2(33632i, Struct_1(vec2<f32>(453f, 1156f)), 1401f, vec2<u32>(4294967295u, 1u)), Struct_2(-17165i, Struct_1(vec2<f32>(-203f, -255f)), 740f, vec2<u32>(1u, 4294967295u)), Struct_2(15743i, Struct_1(vec2<f32>(2008f, -1047f)), 241f, vec2<u32>(1u, 4294967295u)), Struct_2(2147483647i, Struct_1(vec2<f32>(646f, -846f)), -1364f, vec2<u32>(0u, 29308u)), Struct_2(-28537i, Struct_1(vec2<f32>(433f, 292f)), 1273f, vec2<u32>(62913u, 4294967295u)), Struct_2(1i, Struct_1(vec2<f32>(1103f, -1168f)), -1000f, vec2<u32>(21782u, 1u)), Struct_2(0i, Struct_1(vec2<f32>(-1458f, -1013f)), 2904f, vec2<u32>(1u, 15448u)), Struct_2(-27181i, Struct_1(vec2<f32>(-102f, -881f)), 498f, vec2<u32>(4294967295u, 1u)), Struct_2(6392i, Struct_1(vec2<f32>(-1271f, 541f)), 1000f, vec2<u32>(0u, 79948u)), Struct_2(-1i, Struct_1(vec2<f32>(-2125f, -946f)), -492f, vec2<u32>(1u, 110684u)), Struct_2(2147483647i, Struct_1(vec2<f32>(-271f, -1000f)), 1759f, vec2<u32>(0u, 75509u)), Struct_2(9459i, Struct_1(vec2<f32>(-1560f, -1430f)), 289f, vec2<u32>(4294967295u, 4294967295u)), Struct_2(-34985i, Struct_1(vec2<f32>(-1406f, -990f)), 807f, vec2<u32>(0u, 4294967295u)), Struct_2(-56114i, Struct_1(vec2<f32>(241f, 1919f)), 808f, vec2<u32>(1u, 17573u)), Struct_2(13636i, Struct_1(vec2<f32>(1746f, -121f)), -1441f, vec2<u32>(75496u, 0u)), Struct_2(2147483647i, Struct_1(vec2<f32>(105f, -879f)), 1000f, vec2<u32>(81616u, 8531u)), Struct_2(-1i, Struct_1(vec2<f32>(1000f, 710f)), -631f, vec2<u32>(0u, 4294967295u)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(select(vec3<u32>(global1.x, 43282u, ~(~68626u)), vec3<u32>(_wgslsmith_mod_u32(~13706u, 67673u), _wgslsmith_add_u32(0u, u_input.a << (1283u % 32u)), u_input.a ^ (u_input.a ^ 69945u)), global0.x));
}

