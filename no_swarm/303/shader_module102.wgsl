struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec4<f32>,
    d: vec2<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 27>;

var<private> global1: array<vec4<i32>, 15>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: vec4<f32>) -> vec3<i32> {
    var var_0 = Struct_1(~(select(firstTrailingBit(vec4<u32>(51512u, u_input.c, arg_1, arg_1)), vec4<u32>(4294967295u, u_input.c, u_input.c, arg_1), vec4<bool>(true, false, false, true)) ^ ~vec4<u32>(0u, arg_1, 1u, 0u)), !(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false), select(vec2<bool>(true, true), vec2<bool>(false, false), false))), vec3<bool>(arg_0.a.x <= arg_0.a.x, !(u_input.e < 349u), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec4<bool>(false, true, true, false))))));
    global0 = array<vec3<f32>, 27>();
    var var_1 = global1[_wgslsmith_index_u32(reverseBits(4294967295u), 15u)];
    global0 = array<vec3<f32>, 27>();
    var var_2 = ~arg_1;
    return countOneBits(~vec3<i32>(_wgslsmith_clamp_i32(-61519i, -2039i, u_input.d.x), -51063i, max(1i, 0i))) << (var_0.a.wxx % vec3<u32>(32u));
}

fn func_2(arg_0: vec4<f32>) -> Struct_3 {
    global0 = array<vec3<f32>, 27>();
    let var_0 = Struct_2(func_3(Struct_2(vec3<i32>(_wgslsmith_sub_i32(u_input.d.x, -5157i), u_input.b, u_input.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0 * vec4<f32>(arg_0.x, 969f, arg_0.x, -467f))), _wgslsmith_f_op_vec4_f32(-arg_0), _wgslsmith_f_op_vec2_f32(arg_0.yz - vec2<f32>(-1451f, -171f))), ~0u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.x, 102f, 590f, 1403f), vec4<f32>(-999f, 1483f, arg_0.x, arg_0.x), vec4<bool>(true, true, true, true))) * vec4<f32>(483f, arg_0.x, arg_0.x, arg_0.x)) - _wgslsmith_div_vec4_f32(arg_0, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, 142f, -1000f))))), _wgslsmith_f_op_vec4_f32(arg_0 * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1301f, -670f, arg_0.x, -1545f)) * _wgslsmith_f_op_vec4_f32(select(arg_0, vec4<f32>(-389f, arg_0.x, -290f, 1108f), true)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-arg_0), vec4<f32>(arg_0.x, -2193f, arg_0.x, -1370f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-780f, arg_0.x, arg_0.x, arg_0.x)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1073f, arg_0.x, -715f, arg_0.x)) * arg_0), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.x, arg_0.x, 922f, 690f), arg_0)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.x, arg_0.x), vec2<f32>(1213f, arg_0.x))))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_0.c.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.c.x)))), _wgslsmith_f_op_f32(trunc(1577f))));
    var var_2 = u_input.c;
    var_2 = 14870u;
    return Struct_3(~(vec2<i32>(abs(u_input.d.x), -var_0.a.x) ^ (vec2<i32>(-7376i, u_input.a) & vec2<i32>(var_0.a.x, 0i))), var_0, u_input.e);
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: Struct_3) -> Struct_2 {
    global0 = array<vec3<f32>, 27>();
    global1 = array<vec4<i32>, 15>();
    global0 = array<vec3<f32>, 27>();
    var var_0 = Struct_4(arg_1, Struct_1(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.e, arg_1.c, 0u, u_input.e), ~vec4<u32>(arg_1.c, arg_1.c, arg_1.c, 33051u)), !select(vec2<bool>(true, false), vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, false)), !vec3<bool>(select(false, arg_0, true), all(vec4<bool>(false, true, arg_0, true)), arg_0)));
    var var_1 = -1366f;
    return Struct_2(~arg_1.b.a, _wgslsmith_f_op_vec4_f32(abs(var_0.a.b.c)), arg_2.b.b, _wgslsmith_f_op_vec2_f32(ceil(arg_2.b.b.wx)));
}

fn func_1(arg_0: u32, arg_1: vec4<u32>) -> f32 {
    global0 = array<vec3<f32>, 27>();
    var var_0 = vec2<u32>(~u_input.c, ~(~(arg_0 ^ ~arg_0)));
    let var_1 = func_4(all(select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), !select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), any(vec4<bool>(false, false, true, false)))), func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-386f, -1015f, -989f, -1709f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-124f, -619f, -1983f, -712f) + vec4<f32>(-1167f, -633f, 1216f, 667f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1439f, 250f, -1217f, 659f))) * vec4<f32>(1590f, 382f, -2015f, 644f)))), func_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1707f, -1083f, -239f, _wgslsmith_f_op_f32(select(694f, -357f, false))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(965f, 1161f, 442f, -1000f) + vec4<f32>(785f, 1294f, 1000f, -1830f)))), vec4<bool>(true, false, true, false)))));
    var var_2 = var_1.c;
    global1 = array<vec4<i32>, 15>();
    return _wgslsmith_div_f32(-208f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-532f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-110f, -280f, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 27>();
    let var_0 = vec2<bool>(true, !all(select(vec3<bool>(false, false, false), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, 1396f, true))), _wgslsmith_f_op_f32(func_1(1u << (u_input.e % 32u), select(vec4<u32>(u_input.e, 12883u, 0u, 4294967295u), vec4<u32>(33833u, u_input.e, 4294967295u, 11054u), false)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1189f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-1325f)), -206f, true))), !select(var_0, select(var_0, var_0, vec2<bool>(true, true)), !var_0))));
    let var_2 = max(vec4<i32>(59283i, _wgslsmith_add_i32(u_input.d.x, abs(u_input.d.x)), ~(-1i), -9073i), global1[_wgslsmith_index_u32(u_input.e, 15u)] >> (vec4<u32>(1u << (_wgslsmith_sub_u32(u_input.e, 4294967295u) % 32u), 4294967295u & u_input.e, ~u_input.e >> (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 46690u), vec2<u32>(u_input.c, u_input.c)) % 32u), firstLeadingBit(4294967295u)) % vec4<u32>(32u)));
    var var_3 = u_input.d.yz;
    let var_4 = _wgslsmith_f_op_vec3_f32(select(global0[_wgslsmith_index_u32(u_input.c, 27u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.x, -229f, var_1.x), _wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(17399u, 27u)]), any(var_0))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(17792u, 27u)] - global0[_wgslsmith_index_u32(25606u, 27u)]), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.c, 1u, 4294967295u), 27u)]), select(select(vec3<bool>(var_0.x, var_0.x, true), vec3<bool>(false, true, false), vec3<bool>(var_0.x, true, var_0.x)), !vec3<bool>(var_0.x, true, false), select(vec3<bool>(var_0.x, true, false), vec3<bool>(false, false, var_0.x), false))))), var_0.x));
    var var_5 = ~u_input.e;
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(1u, u_input.e));
}

