struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: bool,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(Struct_1(vec3<i32>(2147483647i, i32(-2147483648), -23128i)), 31117u, Struct_1(vec3<i32>(-30479i, 2147483647i, 34146i)), true, i32(-2147483648)), Struct_2(Struct_1(vec3<i32>(-12843i, i32(-2147483648), i32(-2147483648))), 0u, Struct_1(vec3<i32>(0i, i32(-2147483648), 2147483647i)), false, 24516i), vec4<f32>(-160f, 815f, -128f, 477f), Struct_1(vec3<i32>(-37777i, 501i, i32(-2147483648))));

var<private> global1: array<vec4<i32>, 4>;

var<private> global2: array<Struct_1, 17>;

var<private> global3: Struct_3;

var<private> global4: array<Struct_1, 27>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(abs(1u) << (~_wgslsmith_add_u32(71255u, u_input.a) % 32u), countOneBits(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(global3.a.b, 44666u)), vec2<u32>(19786u, global3.b.b) & vec2<u32>(u_input.a, global3.b.b)))), 27054i);
}

