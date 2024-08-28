struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: bool,
    d: vec4<bool>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec3<i32>(2147483647i, -51316i, 2147483647i), vec4<i32>(-17078i, i32(-2147483648), 40364i, 41485i), true, vec4<bool>(false, false, false, true), vec4<u32>(4294967295u, 19002u, 39383u, 34947u)), Struct_1(vec3<i32>(i32(-2147483648), 11110i, -1i), vec4<i32>(1i, -24768i, 2147483647i, -4891i), false, vec4<bool>(false, false, true, true), vec4<u32>(4294967295u, 1u, 0u, 0u)), Struct_1(vec3<i32>(2147483647i, 2147483647i, -22598i), vec4<i32>(-54806i, 2147483647i, -1i, 1i), true, vec4<bool>(false, false, false, true), vec4<u32>(144147u, 37825u, 37513u, 1u)), Struct_1(vec3<i32>(1i, -21658i, 0i), vec4<i32>(1i, -8066i, 2147483647i, -1i), true, vec4<bool>(false, false, true, true), vec4<u32>(47649u, 4294967295u, 1u, 4294967295u)), Struct_1(vec3<i32>(0i, 12168i, 53743i), vec4<i32>(-34117i, -1i, -1i, 2919i), true, vec4<bool>(true, true, false, false), vec4<u32>(6842u, 4294967295u, 48146u, 18288u)), Struct_1(vec3<i32>(1i, i32(-2147483648), 7244i), vec4<i32>(1i, 27754i, 1i, -1i), true, vec4<bool>(false, false, true, true), vec4<u32>(1772u, 22441u, 1u, 65654u)), Struct_1(vec3<i32>(24658i, -32426i, 0i), vec4<i32>(-40040i, 50038i, 1i, 28719i), false, vec4<bool>(false, true, false, false), vec4<u32>(0u, 32604u, 4294967295u, 1u)), Struct_1(vec3<i32>(1i, 0i, 14843i), vec4<i32>(61778i, 4258i, -21510i, -6709i), true, vec4<bool>(false, true, false, false), vec4<u32>(62007u, 4294967295u, 57977u, 4294967295u)), Struct_1(vec3<i32>(1i, 13841i, 0i), vec4<i32>(-39162i, -28696i, i32(-2147483648), -20220i), false, vec4<bool>(true, true, false, true), vec4<u32>(0u, 1u, 46208u, 30248u)), Struct_1(vec3<i32>(-1i, i32(-2147483648), 14169i), vec4<i32>(-1i, -45888i, 54488i, 14975i), false, vec4<bool>(false, true, false, true), vec4<u32>(1u, 4294967295u, 31610u, 1u)), Struct_1(vec3<i32>(0i, 1230i, i32(-2147483648)), vec4<i32>(1i, 0i, 2147483647i, 132i), true, vec4<bool>(false, false, false, false), vec4<u32>(57632u, 32614u, 1u, 4294967295u)), Struct_1(vec3<i32>(-10953i, 2147483647i, 0i), vec4<i32>(18404i, i32(-2147483648), i32(-2147483648), i32(-2147483648)), false, vec4<bool>(true, false, true, true), vec4<u32>(0u, 0u, 1u, 4294967295u)), Struct_1(vec3<i32>(-53191i, 63644i, 0i), vec4<i32>(-1i, 5784i, 1i, 2777i), true, vec4<bool>(true, false, false, true), vec4<u32>(4294967295u, 67172u, 6815u, 10628u)), Struct_1(vec3<i32>(2147483647i, -8021i, 0i), vec4<i32>(i32(-2147483648), -50790i, 9639i, 2147483647i), false, vec4<bool>(true, true, true, true), vec4<u32>(0u, 364u, 1u, 27906u)), Struct_1(vec3<i32>(-47241i, 0i, 44196i), vec4<i32>(-38827i, -13444i, 1i, 48200i), true, vec4<bool>(false, true, true, false), vec4<u32>(0u, 4294967295u, 14312u, 88471u)), Struct_1(vec3<i32>(-24261i, i32(-2147483648), -42816i), vec4<i32>(0i, 21181i, 1i, 34586i), false, vec4<bool>(true, true, false, true), vec4<u32>(4294967295u, 1u, 4294967295u, 23852u)), Struct_1(vec3<i32>(i32(-2147483648), -30342i, -21142i), vec4<i32>(2147483647i, 1i, i32(-2147483648), -9769i), false, vec4<bool>(false, true, true, false), vec4<u32>(1u, 4086u, 50311u, 54732u)), Struct_1(vec3<i32>(2147483647i, -1i, -1i), vec4<i32>(i32(-2147483648), 57015i, i32(-2147483648), 72387i), false, vec4<bool>(true, true, false, true), vec4<u32>(29349u, 31643u, 14266u, 1322u)), Struct_1(vec3<i32>(-28527i, -33280i, -526i), vec4<i32>(-6253i, i32(-2147483648), -74677i, 13947i), true, vec4<bool>(true, true, false, false), vec4<u32>(4294967295u, 0u, 39028u, 4294967295u)), Struct_1(vec3<i32>(-12885i, 0i, -1i), vec4<i32>(1i, -42083i, 1i, i32(-2147483648)), false, vec4<bool>(true, true, true, true), vec4<u32>(0u, 1u, 0u, 20616u)));

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(-u_input.a), u_input.c);
}

