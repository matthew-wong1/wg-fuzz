struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<bool>,
    d: vec2<bool>,
    e: vec3<i32>,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 14> = array<vec3<f32>, 14>(vec3<f32>(-2758f, -1703f, -1482f), vec3<f32>(-884f, -472f, -1376f), vec3<f32>(322f, 1067f, 744f), vec3<f32>(-1093f, 1000f, -327f), vec3<f32>(-1406f, -1224f, -951f), vec3<f32>(864f, 217f, 559f), vec3<f32>(-1346f, 1221f, -279f), vec3<f32>(-1090f, 854f, -1106f), vec3<f32>(-167f, -774f, -868f), vec3<f32>(-429f, 1203f, 396f), vec3<f32>(-1838f, -1139f, 800f), vec3<f32>(370f, 1093f, -609f), vec3<f32>(-679f, 1000f, 593f), vec3<f32>(206f, -110f, -335f));

var<private> global1: array<f32, 25>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> u32 {
    global1 = array<f32, 25>();
    var var_0 = -57176i;
    var var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 25u)]));
    global0 = array<vec3<f32>, 14>();
    return 8890u;
}

fn func_2() -> f32 {
    global1 = array<f32, 25>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(627f - -161f)), -2330f) + 1369f), countOneBits(vec2<i32>(u_input.c.x, firstTrailingBit(_wgslsmith_dot_vec3_i32(u_input.d.wxz, u_input.d.xxw)))), ~_wgslsmith_sub_vec3_u32(firstTrailingBit(_wgslsmith_sub_vec3_u32(u_input.b, u_input.b)), vec3<u32>(func_3(0u, Struct_1(594f, vec2<i32>(29623i, 2147483647i), u_input.b)), 23950u, 1u)));
    global1 = array<f32, 25>();
    let var_1 = _wgslsmith_add_vec4_u32(max(~_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 1u, 4294967295u, u_input.b.x), vec4<u32>(4294967295u, u_input.b.x, var_0.c.x, var_0.c.x)), min(vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 431u), vec4<u32>(u_input.a, var_0.c.x, var_0.c.x, 1u))), ~_wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, var_0.c.x, 4294967295u, u_input.a), ~vec4<u32>(var_0.c.x, var_0.c.x, u_input.b.x, 4148u), vec4<u32>(var_0.c.x, 1u, 4294967295u, 0u) & vec4<u32>(var_0.c.x, 83479u, 4294967295u, u_input.a))), _wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, var_0.c.x << (var_0.c.x % 32u), _wgslsmith_add_u32(0u, 76125u), 0u), vec4<u32>(1u, abs(abs(u_input.b.x)), _wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.b.x, 0u), max(var_0.c.x, var_0.c.x)), 15172u)));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(401f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(1000f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.a))), _wgslsmith_f_op_f32(min(var_0.a, _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(1u, 25u)])))))));
    return var_2.x;
}

fn func_1(arg_0: vec2<bool>) -> vec2<bool> {
    let var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_2()), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1148f), global1[_wgslsmith_index_u32(~u_input.b.x, 25u)], arg_0.x)))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(1497f - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 25u)])), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 25u)]), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(109004u, 25u)]))), -1272f))));
    global0 = array<vec3<f32>, 14>();
    global0 = array<vec3<f32>, 14>();
    global0 = array<vec3<f32>, 14>();
    global0 = array<vec3<f32>, 14>();
    return !arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -560f))), -vec2<i32>(u_input.d.x, -1i) ^ (firstLeadingBit(u_input.c) << (u_input.b.yy % vec2<u32>(32u))), vec3<u32>(_wgslsmith_div_u32(1u, _wgslsmith_mod_u32(0u, u_input.a)), u_input.b.x, u_input.a)), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(60475u, 14u)] + global0[_wgslsmith_index_u32(~u_input.b.x, 14u)])), true), !select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)), !(!func_1(vec2<bool>(true, true))), firstLeadingBit(u_input.d.wzz));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-1724f, -1256f), -297f))), _wgslsmith_mod_vec2_i32(var_0.a.b, ~_wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(u_input.c, var_0.a.b), var_0.e.yz & var_0.a.b)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(var_0.b.a.yy)))))));
}

