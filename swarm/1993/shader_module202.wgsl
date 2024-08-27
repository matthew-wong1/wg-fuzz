struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: f32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 8> = array<vec3<i32>, 8>(vec3<i32>(0i, 1i, 27429i), vec3<i32>(-44929i, -33254i, -33401i), vec3<i32>(2147483647i, -5457i, -1074i), vec3<i32>(i32(-2147483648), i32(-2147483648), 2147483647i), vec3<i32>(48867i, 35131i, 2147483647i), vec3<i32>(46718i, 39039i, -24278i), vec3<i32>(3765i, i32(-2147483648), 1i), vec3<i32>(i32(-2147483648), 15140i, 15969i));

var<private> global1: Struct_1 = Struct_1(vec3<u32>(0u, 1u, 62216u), vec4<u32>(0u, 61367u, 22829u, 29652u), 595f, vec4<u32>(98522u, 0u, 0u, 0u));

var<private> global2: array<vec4<u32>, 3> = array<vec4<u32>, 3>(vec4<u32>(58809u, 1u, 0u, 3471u), vec4<u32>(4294967295u, 0u, 1u, 1u), vec4<u32>(4294967295u, 46743u, 1u, 67695u));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec3_i32(vec3<i32>(~(-countOneBits(u_input.b)), u_input.a, -65734i), vec3<i32>(-_wgslsmith_add_i32(-u_input.b, -8886i), max(_wgslsmith_sub_i32(u_input.b, u_input.a >> (1u % 32u)), -_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 23959i, 1i, 2147483647i), vec4<i32>(-46237i, 15964i, u_input.b, 0i))), -2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global1.c, global1.c), vec2<f32>(global1.c, global1.c)))))), global1.b.xy, vec2<i32>(0i, var_0.x ^ var_0.x), abs(4907u), ~1i);
}

