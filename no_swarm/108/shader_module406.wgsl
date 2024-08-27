struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: u32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 22> = array<vec4<f32>, 22>(vec4<f32>(-1611f, 611f, 1005f, 2026f), vec4<f32>(407f, -1143f, 791f, 2109f), vec4<f32>(448f, 266f, -1543f, -394f), vec4<f32>(227f, 535f, -586f, 2466f), vec4<f32>(-1215f, -1029f, 1437f, -1138f), vec4<f32>(478f, 1790f, -668f, 137f), vec4<f32>(1044f, -242f, 1012f, 188f), vec4<f32>(-109f, -155f, 1332f, -1000f), vec4<f32>(-1107f, -1722f, 623f, -1435f), vec4<f32>(800f, -549f, 1000f, 1064f), vec4<f32>(1000f, -427f, 580f, 481f), vec4<f32>(144f, -221f, -630f, -1504f), vec4<f32>(-746f, 869f, -1098f, -284f), vec4<f32>(350f, 1805f, 106f, 1369f), vec4<f32>(-1000f, -585f, -1000f, -1158f), vec4<f32>(184f, -795f, 1485f, -148f), vec4<f32>(-1191f, -1000f, 1000f, -1956f), vec4<f32>(103f, -1126f, 847f, -240f), vec4<f32>(-958f, -1505f, -1000f, 689f), vec4<f32>(-1173f, 193f, -567f, 1142f), vec4<f32>(666f, 726f, -897f, -764f), vec4<f32>(406f, -205f, -525f, 393f));

var<private> global1: array<bool, 19>;

var<private> global2: vec2<u32>;

var<private> global3: array<vec4<f32>, 13>;

var<private> global4: Struct_2;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_i32(global4.a, global4.a), ~min(max(vec3<u32>(63332u, 0u, 29501u) << (vec3<u32>(global2.x, 34374u, 4294967295u) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(vec3<u32>(53991u, 4294967295u, 4294967295u), vec3<u32>(6411u, 4294967295u, 83148u))), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.e, global2.x, u_input.e), ~vec3<u32>(97189u, u_input.e, 48826u))));
}

