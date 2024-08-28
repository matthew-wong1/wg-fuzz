struct Struct_1 {
    a: i32,
    b: f32,
    c: vec2<i32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<f32>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 7> = array<f32, 7>(-305f, -668f, 709f, -396f, 253f, -1317f, 556f);

var<private> global1: array<f32, 18>;

var<private> global2: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(Struct_1(7144i, 669f, vec2<i32>(-61791i, -31949i), 4294967295u), 50336u), Struct_2(Struct_1(2147483647i, 436f, vec2<i32>(-42090i, i32(-2147483648)), 4294967295u), 1u), Struct_2(Struct_1(i32(-2147483648), -1000f, vec2<i32>(-1i, 1i), 1u), 19814u), Struct_2(Struct_1(i32(-2147483648), 486f, vec2<i32>(45288i, -53404i), 4294967295u), 79139u), Struct_2(Struct_1(i32(-2147483648), -815f, vec2<i32>(-1i, 0i), 11962u), 1u), Struct_2(Struct_1(44251i, 466f, vec2<i32>(2147483647i, 1i), 4294967295u), 6692u), Struct_2(Struct_1(-1i, 1142f, vec2<i32>(2147483647i, 33501i), 35081u), 42642u), Struct_2(Struct_1(-4573i, 626f, vec2<i32>(2147483647i, 17787i), 11211u), 1u), Struct_2(Struct_1(44035i, 1046f, vec2<i32>(24887i, 2147483647i), 15982u), 56912u), Struct_2(Struct_1(-1i, -1562f, vec2<i32>(1i, 9155i), 16017u), 41253u), Struct_2(Struct_1(2147483647i, -777f, vec2<i32>(0i, 79870i), 0u), 1u), Struct_2(Struct_1(-10634i, 673f, vec2<i32>(12199i, -3952i), 0u), 0u), Struct_2(Struct_1(i32(-2147483648), 1000f, vec2<i32>(-1i, 0i), 31087u), 1u), Struct_2(Struct_1(i32(-2147483648), -1167f, vec2<i32>(-3821i, -1i), 0u), 1u), Struct_2(Struct_1(-71632i, -198f, vec2<i32>(33963i, 14152i), 5502u), 1u), Struct_2(Struct_1(-2502i, -692f, vec2<i32>(2147483647i, -28047i), 60123u), 11254u), Struct_2(Struct_1(2147483647i, 602f, vec2<i32>(19675i, -26830i), 35835u), 15245u));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.zxy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 18u)], global0[_wgslsmith_index_u32(0u, 7u)], 158f) + vec3<f32>(1433f, global0[_wgslsmith_index_u32(u_input.a.x, 7u)], global1[_wgslsmith_index_u32(u_input.a.x, 18u)]))))));
}

