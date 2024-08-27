struct Struct_1 {
    a: bool,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: i32,
    d: i32,
    e: vec3<f32>,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: f32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 15> = array<vec3<u32>, 15>(vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(0u, 738u, 1u), vec3<u32>(2372u, 1u, 8244u), vec3<u32>(77u, 1667u, 1992u), vec3<u32>(9948u, 4294967295u, 20953u), vec3<u32>(116815u, 7093u, 0u), vec3<u32>(1u, 0u, 0u), vec3<u32>(1u, 77042u, 4294967295u), vec3<u32>(26911u, 31286u, 93586u), vec3<u32>(0u, 0u, 1u), vec3<u32>(5158u, 51777u, 5486u), vec3<u32>(0u, 0u, 42858u), vec3<u32>(23355u, 19167u, 1u), vec3<u32>(21797u, 63680u, 3420u), vec3<u32>(18216u, 1u, 7993u));

var<private> global1: array<Struct_3, 13>;

var<private> global2: array<Struct_2, 11>;

var<private> global3: array<vec2<bool>, 30> = array<vec2<bool>, 30>(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<i32>) -> vec3<f32> {
    let var_0 = select(firstLeadingBit(vec3<i32>(-1039i, -27208i, u_input.d)), select(vec3<i32>(_wgslsmith_add_i32(~4076i, 0i), -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 8114i, 2147483647i, -11164i), arg_1)), arg_1.xxy, !select(!vec3<bool>(true, false, arg_0.x), select(arg_0, vec3<bool>(arg_0.x, arg_0.x, arg_0.x), arg_0), vec3<bool>(true, arg_0.x, arg_0.x))), true);
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(812f, 856f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-463f + 1914f)), -323f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 1f));
    global3 = array<vec2<bool>, 30>();
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(-464f, _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-215f - _wgslsmith_f_op_f32(f32(-1f) * -165f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -659f)))), -2318f));
    var var_3 = Struct_3(692f);
    return var_1.yzx;
}

fn func_2(arg_0: Struct_3) -> i32 {
    global3 = array<vec2<bool>, 30>();
    global3 = array<vec2<bool>, 30>();
    global3 = array<vec2<bool>, 30>();
    var var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a), 211f, arg_0.a) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(vec3<bool>(true, false, false), vec4<i32>(u_input.d, 2617i, u_input.d, 48131i))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(441f, -1000f, arg_0.a))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.a, 2210f, arg_0.a)))))), vec3<bool>(!(u_input.a.x < u_input.c), any(global3[_wgslsmith_index_u32(min(u_input.a.x, 42377u), 30u)]), true || (u_input.d <= -1i))))));
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(floor(arg_0.a))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, 1479f))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(arg_0.a)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(f32(-1f) * -596f)), -2087f)))));
    return -(~firstTrailingBit(0i));
}

fn func_1(arg_0: vec2<bool>) -> vec4<bool> {
    let var_0 = arg_0.x;
    let var_1 = select(global3[_wgslsmith_index_u32(u_input.a.x, 30u)], vec2<bool>(true, true), (-func_2(global1[_wgslsmith_index_u32(1u, 13u)]) << (u_input.b.x % 32u)) != ~((-59503i >> (u_input.b.x % 32u)) | min(-1i, u_input.d)));
    let var_2 = vec3<bool>(!any(vec2<bool>(!var_0, all(global3[_wgslsmith_index_u32(0u, 30u)]))), select(true, false, arg_0.x), true);
    global3 = array<vec2<bool>, 30>();
    var var_3 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-222f, -348f, 1737f, 634f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-334f, -1283f, -865f, 2014f)))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(374f, 161f, 869f, 1879f) * vec4<f32>(-351f, 914f, -1000f, -1081f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, -307f, 1000f, 317f)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-2095f * 554f), -447f, _wgslsmith_f_op_f32(846f + 592f), _wgslsmith_f_op_f32(f32(-1f) * -1533f)) - vec4<f32>(1f, 1f, 1f, 1f))))));
    return vec4<bool>(true, !(u_input.d < 41045i), true, all(vec4<bool>(all(var_1), true & !var_1.x, all(vec3<bool>(var_2.x, var_1.x, true)), 1i >= _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, -2147483647i, u_input.d, u_input.d), vec4<i32>(1i, 84841i, -1i, u_input.d)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 11>();
    global3 = array<vec2<bool>, 30>();
    var var_0 = u_input.d;
    global3 = array<vec2<bool>, 30>();
    global1 = array<Struct_3, 13>();
    let var_1 = countOneBits(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(u_input.a.x, 15u)], _wgslsmith_sub_vec3_u32(global0[_wgslsmith_index_u32(0u, 15u)], global0[_wgslsmith_index_u32(0u, 15u)])), min(_wgslsmith_dot_vec3_u32(vec3<u32>(49270u, 1u, u_input.a.x), vec3<u32>(62170u, u_input.c, u_input.c)), _wgslsmith_dot_vec2_u32(u_input.a.yz, vec2<u32>(1u, 4294967295u)))) >> (abs(u_input.b.x) % 32u));
    let var_2 = !select(!func_1(vec2<bool>(true, true)), vec4<bool>(false, _wgslsmith_add_i32(-2147483647i, 0i) == (52357i ^ u_input.d), _wgslsmith_mod_i32(u_input.d, u_input.d) >= _wgslsmith_mod_i32(u_input.d, 8987i), func_1(vec2<bool>(false, false)).x), false);
    let var_3 = _wgslsmith_f_op_f32(-1916f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -384f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_vec3_f32(func_3(var_2.zyz, vec4<i32>(u_input.d, -22257i, u_input.d, u_input.d))).x)))));
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-207f, _wgslsmith_f_op_f32(sign(-760f)), _wgslsmith_f_op_f32(round(var_3)), _wgslsmith_f_op_f32(-759f * var_3))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-859f - 423f)) + var_3) * 982f), u_input.c, var_1);
}

