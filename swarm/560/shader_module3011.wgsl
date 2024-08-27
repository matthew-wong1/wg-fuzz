struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: f32,
    d: vec2<bool>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-2705f, -1781f);

var<private> global1: array<i32, 15> = array<i32, 15>(0i, 2147483647i, i32(-2147483648), -10195i, 0i, -1i, 2147483647i, 0i, -49426i, -10932i, 1i, 81225i, 1i, 45432i, 1i);

var<private> global2: array<vec4<f32>, 24> = array<vec4<f32>, 24>(vec4<f32>(-562f, 587f, 925f, -967f), vec4<f32>(-719f, 679f, -112f, -940f), vec4<f32>(1649f, 1000f, -271f, 1431f), vec4<f32>(-542f, 601f, -283f, -260f), vec4<f32>(219f, 3047f, -352f, -768f), vec4<f32>(-1000f, 221f, -218f, 1941f), vec4<f32>(-686f, -522f, -1287f, -1000f), vec4<f32>(-1141f, 654f, 128f, 183f), vec4<f32>(989f, 1322f, 443f, 910f), vec4<f32>(1651f, -326f, -751f, 712f), vec4<f32>(-1000f, -1373f, -1000f, -226f), vec4<f32>(951f, -2036f, 667f, -3224f), vec4<f32>(-1120f, 384f, -907f, -501f), vec4<f32>(-401f, -2080f, 413f, 371f), vec4<f32>(351f, -312f, 1104f, 365f), vec4<f32>(1342f, 429f, 487f, -341f), vec4<f32>(-355f, 1000f, 830f, 1241f), vec4<f32>(1135f, 595f, -621f, -1704f), vec4<f32>(-642f, -490f, -670f, 859f), vec4<f32>(-297f, 1521f, -1342f, 1329f), vec4<f32>(-1360f, 570f, -895f, 897f), vec4<f32>(394f, -849f, -1585f, 1000f), vec4<f32>(-1098f, 437f, 408f, -268f), vec4<f32>(-470f, 547f, 156f, -1511f));

var<private> global3: vec3<bool> = vec3<bool>(false, false, false);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(ceil(global0.x)), global0.x, global0.x), _wgslsmith_mod_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(u_input.b, u_input.b) >> (~24543u % 32u), 24056i), 0i), -1539f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global0.x) + vec2<f32>(global0.x, -707f)))) + vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(floor(822f))))));
}

