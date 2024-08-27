struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: vec2<f32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: i32,
    d: bool,
    e: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: vec4<f32>,
    d: vec3<f32>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 8> = array<vec3<u32>, 8>(vec3<u32>(22726u, 1u, 1u), vec3<u32>(16531u, 5808u, 33528u), vec3<u32>(4294967295u, 4294967295u, 70014u), vec3<u32>(9182u, 94677u, 4294967295u), vec3<u32>(4294967295u, 1u, 59069u), vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(69791u, 9099u, 1u), vec3<u32>(1u, 4294967295u, 0u));

var<private> global1: array<f32, 27> = array<f32, 27>(-614f, -349f, 104f, 1000f, -116f, 844f, -1032f, 1902f, 1127f, -1077f, 1492f, 1000f, -1089f, 632f, -2137f, 638f, 110f, 1000f, 134f, -1464f, 646f, 412f, 468f, -1000f, 724f, 636f, -1266f);

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(~vec4<i32>(i32(-1i) * -7648i, u_input.e.x, -(~(-17221i)), u_input.a.x));
    var_0 = _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(min(vec4<i32>(1362i, u_input.a.x, -75964i, var_0.x), vec4<i32>(u_input.e.x, 4015i, 0i, -2147483647i)) >> (u_input.c % vec4<u32>(32u)), -select(vec4<i32>(u_input.e.x, var_0.x, var_0.x, 2147483647i), vec4<i32>(u_input.e.x, -2147483647i, u_input.a.x, u_input.d.x), vec4<bool>(false, true, true, false))) << (~select(vec4<u32>(u_input.b.x, u_input.c.x, u_input.b.x, 88710u) | u_input.c, ~u_input.b, true) % vec4<u32>(32u)), min(-(~(-vec4<i32>(-2147483647i, u_input.e.x, var_0.x, -23789i))), ~_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, u_input.d.x, -1i, u_input.d.x), vec4<i32>(-1397i, var_0.x, var_0.x, u_input.e.x))));
    let var_1 = vec3<i32>(reverseBits(21137i), var_0.x, ~(~_wgslsmith_sub_i32(-2147483647i, u_input.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(var_0.xyz, var_0.xwy));
}

