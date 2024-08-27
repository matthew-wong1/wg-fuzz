struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(-1192f), Struct_1(-236f), Struct_1(-191f), Struct_1(-1206f), Struct_1(806f), Struct_1(-873f), Struct_1(-660f), Struct_1(358f), Struct_1(-1191f), Struct_1(679f), Struct_1(725f), Struct_1(-709f), Struct_1(-319f), Struct_1(465f), Struct_1(-520f), Struct_1(-2008f), Struct_1(-1199f), Struct_1(-180f), Struct_1(107f), Struct_1(169f), Struct_1(667f), Struct_1(2149f), Struct_1(-1843f), Struct_1(-851f), Struct_1(2246f), Struct_1(-380f), Struct_1(228f), Struct_1(799f), Struct_1(978f), Struct_1(-1250f), Struct_1(1000f));

var<private> global2: vec4<i32> = vec4<i32>(1i, 6898i, 1i, 56470i);

var<private> global3: array<i32, 26> = array<i32, 26>(-23056i, -10271i, -18740i, -1i, 2147483647i, 2278i, 30909i, 1i, 52240i, 13941i, 1i, 44476i, -2387i, 0i, i32(-2147483648), 1i, -35377i, 31874i, -4032i, -35243i, 1i, -55343i, 23020i, 7654i, 1i, 2147483647i);

var<private> global4: Struct_2 = Struct_2(vec3<i32>(2147483647i, -1i, 1i), Struct_1(1516f));

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global4.b.a;
    let var_1 = !((1u < select(4294967295u, u_input.b.x, true)) != true);
    let x = u_input.a;
    s_output = StorageBuffer(global4.b.a);
}

