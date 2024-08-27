struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<u32>,
    d: i32,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 28> = array<i32, 28>(15095i, -36824i, -3403i, 3656i, 1061i, 1i, 19854i, 10733i, 0i, 22933i, 1i, -19988i, -18061i, -1i, i32(-2147483648), 0i, -8728i, -30003i, 0i, -13037i, 12748i, 858i, -17825i, 1i, i32(-2147483648), 1i, 34732i, 0i);

var<private> global1: Struct_1 = Struct_1(vec3<u32>(26399u, 47037u, 0u), vec3<u32>(3295u, 4294967295u, 4294967295u));

var<private> global2: array<vec4<bool>, 17>;

var<private> global3: vec4<i32>;

var<private> global4: array<bool, 3> = array<bool, 3>(false, true, true);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(863f, _wgslsmith_f_op_f32(ceil(139f)), _wgslsmith_f_op_f32(f32(-1f) * -2176f)) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(811f, -570f, -626f) + vec3<f32>(1223f, 246f, 853f)), vec3<f32>(1f, 1f, 1f), vec3<bool>(true, global4[_wgslsmith_index_u32(1u, 3u)], global4[_wgslsmith_index_u32(global1.b.x, 3u)])))))), _wgslsmith_add_vec3_u32(global1.a, ~_wgslsmith_mult_vec3_u32(vec3<u32>(global1.b.x, 4294967295u, global1.a.x), global1.b)), _wgslsmith_mod_u32(min(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, global1.a.x, 2651u), vec4<u32>(u_input.b.x, 66178u, global1.b.x, global1.a.x)), ~u_input.a), ~_wgslsmith_add_u32(8508u, 84970u)) | ~(~(~30653u)));
}

