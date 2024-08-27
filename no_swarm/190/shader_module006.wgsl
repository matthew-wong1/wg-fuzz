struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 27> = array<vec3<f32>, 27>(vec3<f32>(-1333f, -528f, -669f), vec3<f32>(1272f, 370f, 2243f), vec3<f32>(-1273f, 396f, 231f), vec3<f32>(987f, -177f, -1000f), vec3<f32>(-1293f, 666f, 838f), vec3<f32>(1329f, -888f, 143f), vec3<f32>(-1000f, 447f, 1000f), vec3<f32>(978f, 828f, 1918f), vec3<f32>(1884f, -770f, -1291f), vec3<f32>(-242f, 491f, 1208f), vec3<f32>(-764f, 1757f, 647f), vec3<f32>(-162f, -1019f, -1113f), vec3<f32>(-589f, 780f, -1000f), vec3<f32>(1756f, 1107f, 1431f), vec3<f32>(-1949f, 540f, -690f), vec3<f32>(-967f, -671f, 599f), vec3<f32>(818f, 473f, -145f), vec3<f32>(1338f, 1280f, 1750f), vec3<f32>(220f, 1120f, 848f), vec3<f32>(1422f, -121f, 104f), vec3<f32>(-1053f, 170f, -480f), vec3<f32>(-1540f, 229f, -244f), vec3<f32>(331f, 2584f, 1000f), vec3<f32>(-1139f, 705f, 1000f), vec3<f32>(635f, -488f, -411f), vec3<f32>(1555f, 465f, -324f), vec3<f32>(234f, -1000f, -1050f));

var<private> global1: bool;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 27>();
    let var_0 = countOneBits(u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(~(~firstTrailingBit(firstTrailingBit(u_input.d))), vec4<u32>(~_wgslsmith_sub_u32(u_input.b.x, u_input.b.x), ~_wgslsmith_dot_vec2_u32(u_input.e, vec2<u32>(u_input.e.x, 63093u)), u_input.b.x, ~select(u_input.b.x, u_input.e.x, false)) | _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.e.x, 48358u, 4294967295u, var_0) >> (~u_input.b % vec4<u32>(32u)), vec4<u32>(~9573u, _wgslsmith_sub_u32(var_0, 17105u), ~u_input.b.x, u_input.e.x ^ var_0)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, _wgslsmith_f_op_f32(min(407f, _wgslsmith_f_op_f32(min(-104f, 1008f))))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1000f, -689f))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-521f, 615f)))), false))));
}

