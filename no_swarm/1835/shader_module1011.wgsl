struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(false, false));

var<private> global1: array<vec4<u32>, 1> = array<vec4<u32>, 1>(vec4<u32>(82026u, 36607u, 4574u, 42543u));

var<private> global2: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(17670i, vec2<u32>(6114u, 4294967295u), vec2<i32>(2147483647i, i32(-2147483648)), Struct_1(vec2<bool>(true, true))), Struct_2(-34158i, vec2<u32>(1u, 7142u), vec2<i32>(1i, -18609i), Struct_1(vec2<bool>(true, true))), Struct_2(-1i, vec2<u32>(4294967295u, 43381u), vec2<i32>(0i, 73191i), Struct_1(vec2<bool>(false, true))), Struct_2(i32(-2147483648), vec2<u32>(4294967295u, 66751u), vec2<i32>(i32(-2147483648), 37782i), Struct_1(vec2<bool>(true, true))), Struct_2(1i, vec2<u32>(0u, 45738u), vec2<i32>(11073i, 1i), Struct_1(vec2<bool>(false, false))), Struct_2(2147483647i, vec2<u32>(1666u, 0u), vec2<i32>(-30503i, 0i), Struct_1(vec2<bool>(true, true))), Struct_2(0i, vec2<u32>(3707u, 416u), vec2<i32>(50608i, -1i), Struct_1(vec2<bool>(false, false))), Struct_2(0i, vec2<u32>(37973u, 76510u), vec2<i32>(1i, -1i), Struct_1(vec2<bool>(false, true))), Struct_2(1i, vec2<u32>(45292u, 20192u), vec2<i32>(-11261i, 1i), Struct_1(vec2<bool>(true, true))), Struct_2(-1i, vec2<u32>(60389u, 973u), vec2<i32>(-20256i, 22406i), Struct_1(vec2<bool>(true, false))), Struct_2(i32(-2147483648), vec2<u32>(1u, 4294967295u), vec2<i32>(i32(-2147483648), -5945i), Struct_1(vec2<bool>(false, true))), Struct_2(i32(-2147483648), vec2<u32>(11434u, 56406u), vec2<i32>(24023i, -58781i), Struct_1(vec2<bool>(true, false))), Struct_2(-58957i, vec2<u32>(4294967295u, 36176u), vec2<i32>(0i, i32(-2147483648)), Struct_1(vec2<bool>(false, true))), Struct_2(i32(-2147483648), vec2<u32>(4294967295u, 4294967295u), vec2<i32>(0i, 17301i), Struct_1(vec2<bool>(true, true))), Struct_2(63327i, vec2<u32>(3764u, 1u), vec2<i32>(42018i, 2147483647i), Struct_1(vec2<bool>(true, false))), Struct_2(32454i, vec2<u32>(115594u, 51486u), vec2<i32>(-39905i, -34644i), Struct_1(vec2<bool>(false, true))), Struct_2(18942i, vec2<u32>(4294967295u, 4294967295u), vec2<i32>(9870i, i32(-2147483648)), Struct_1(vec2<bool>(false, false))), Struct_2(2147483647i, vec2<u32>(32963u, 62367u), vec2<i32>(-9149i, 26288i), Struct_1(vec2<bool>(true, true))), Struct_2(2147483647i, vec2<u32>(4294967295u, 1u), vec2<i32>(-72443i, 0i), Struct_1(vec2<bool>(false, false))), Struct_2(0i, vec2<u32>(79369u, 4294967295u), vec2<i32>(-1i, -32996i), Struct_1(vec2<bool>(true, true))));

var<private> global3: i32;

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(-1i), u_input.b.x);
}

