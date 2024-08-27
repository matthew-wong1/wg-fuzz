struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: vec3<i32>,
    d: vec2<f32>,
    e: f32,
}

struct Struct_5 {
    a: vec3<f32>,
    b: i32,
    c: bool,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 27> = array<vec3<i32>, 27>(vec3<i32>(2147483647i, -40982i, -1i), vec3<i32>(1i, -25439i, -3619i), vec3<i32>(27395i, 754i, -4191i), vec3<i32>(8865i, -1i, -74958i), vec3<i32>(-60858i, -1i, -13498i), vec3<i32>(-29005i, 2147483647i, 16389i), vec3<i32>(0i, 0i, 2147483647i), vec3<i32>(-22244i, 29432i, 42124i), vec3<i32>(2147483647i, 6799i, -1i), vec3<i32>(999i, 0i, i32(-2147483648)), vec3<i32>(2147483647i, -5745i, 39701i), vec3<i32>(-45707i, 0i, -1i), vec3<i32>(2147483647i, -18804i, -11022i), vec3<i32>(-35861i, 1i, -20265i), vec3<i32>(-1i, -13282i, 59449i), vec3<i32>(25453i, i32(-2147483648), 0i), vec3<i32>(1i, 22376i, -1i), vec3<i32>(2147483647i, 0i, 2147483647i), vec3<i32>(1i, -11301i, 21569i), vec3<i32>(30060i, 0i, 51783i), vec3<i32>(0i, 2147483647i, -1i), vec3<i32>(-25491i, i32(-2147483648), 1i), vec3<i32>(-19124i, 77172i, 1i), vec3<i32>(-51153i, 35502i, -20801i), vec3<i32>(-12962i, 19870i, 2147483647i), vec3<i32>(0i, -1i, 1383i), vec3<i32>(43285i, 15848i, -22289i));

var<private> global1: Struct_4;

var<private> global2: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(true), Struct_2(false), Struct_2(true), Struct_2(true));

var<private> global3: u32;

var<private> global4: vec2<f32> = vec2<f32>(128f, 788f);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = ~u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(min(~61019u, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.a, 25747u, u_input.a, u_input.a), vec4<u32>(1u, 81290u, u_input.a, u_input.a), vec4<bool>(false, global1.b.a, global1.b.a, true)), abs(vec4<u32>(u_input.a, u_input.a, 1u, 3083u))), ~_wgslsmith_div_u32(u_input.a, u_input.a))));
}

