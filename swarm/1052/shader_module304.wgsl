struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec3<f32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: vec3<u32>,
    d: i32,
    e: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<bool>,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: u32 = 7742u;

var<private> global2: vec2<u32>;

var<private> global3: array<vec3<f32>, 26> = array<vec3<f32>, 26>(vec3<f32>(-541f, 588f, 1563f), vec3<f32>(-1000f, 1239f, -515f), vec3<f32>(1000f, 160f, -747f), vec3<f32>(722f, 1078f, -1470f), vec3<f32>(-449f, 242f, -1000f), vec3<f32>(509f, 1000f, 1073f), vec3<f32>(1000f, 519f, 1017f), vec3<f32>(571f, -1655f, -1000f), vec3<f32>(338f, -1237f, -521f), vec3<f32>(-466f, -590f, -318f), vec3<f32>(-1000f, -238f, 459f), vec3<f32>(1296f, -247f, -287f), vec3<f32>(649f, 1582f, -1117f), vec3<f32>(-1715f, 1000f, -361f), vec3<f32>(191f, 2208f, -1120f), vec3<f32>(-1034f, 217f, -816f), vec3<f32>(1000f, -529f, 1599f), vec3<f32>(-1000f, -1000f, 118f), vec3<f32>(1663f, 2559f, -691f), vec3<f32>(-739f, 1229f, -1364f), vec3<f32>(105f, -495f, -263f), vec3<f32>(-832f, 1020f, -257f), vec3<f32>(-312f, 1000f, 1000f), vec3<f32>(1057f, -681f, 2435f), vec3<f32>(-896f, -1998f, -690f), vec3<f32>(1517f, 1689f, -798f));

var<private> global4: array<i32, 2> = array<i32, 2>(68663i, 9132i);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1() -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -326f);
    let var_1 = vec2<f32>(-1749f, -1000f);
    let var_2 = var_1.x;
    var_0 = _wgslsmith_f_op_f32(1799f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.x)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-880f)) * _wgslsmith_f_op_f32(-var_1.x)) * _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(-var_1.x)))));
    let var_3 = ~global4[_wgslsmith_index_u32(abs(_wgslsmith_mult_u32(0u, 1u)), 2u)];
    return StorageBuffer(1157u, 4428i >> (~global2.x % 32u), global4[_wgslsmith_index_u32(13541u, 2u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-538f, 1356f, -1928f, 456f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1854f, 122f, 1383f, 1000f)))))));
    let var_1 = global0.x;
    let x = u_input.a;
    s_output = func_1();
}

