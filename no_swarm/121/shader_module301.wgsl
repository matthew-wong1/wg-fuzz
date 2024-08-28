struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
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

var<private> global0: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(1924f, vec2<f32>(276f, 523f), -104f), Struct_1(-2295f, vec2<f32>(1077f, 593f), -1444f), Struct_1(-113f, vec2<f32>(-322f, -1081f), -1076f), Struct_1(1433f, vec2<f32>(-289f, 1078f), -209f), Struct_1(320f, vec2<f32>(-547f, -1000f), 399f), Struct_1(680f, vec2<f32>(940f, 660f), -211f), Struct_1(-949f, vec2<f32>(255f, 1000f), 931f), Struct_1(1443f, vec2<f32>(1000f, -133f), 151f), Struct_1(-339f, vec2<f32>(503f, -453f), 1138f), Struct_1(-685f, vec2<f32>(1000f, 1000f), 312f), Struct_1(-1216f, vec2<f32>(124f, -453f), 970f), Struct_1(-2139f, vec2<f32>(-1851f, 717f), -987f), Struct_1(1806f, vec2<f32>(1235f, -1000f), 803f), Struct_1(-365f, vec2<f32>(-1000f, 295f), -213f), Struct_1(1167f, vec2<f32>(-153f, 530f), -325f));

var<private> global1: array<vec2<f32>, 15> = array<vec2<f32>, 15>(vec2<f32>(561f, 476f), vec2<f32>(-1998f, 701f), vec2<f32>(-993f, 839f), vec2<f32>(994f, 1309f), vec2<f32>(1000f, -295f), vec2<f32>(-715f, 511f), vec2<f32>(-1757f, -1851f), vec2<f32>(-506f, 1098f), vec2<f32>(670f, -623f), vec2<f32>(382f, 639f), vec2<f32>(146f, 751f), vec2<f32>(452f, -1732f), vec2<f32>(626f, 182f), vec2<f32>(-164f, -1354f), vec2<f32>(-1482f, 1988f));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(849f, 841f, arg_1.a, -486f))))));
    global0 = array<Struct_1, 15>();
    global1 = array<vec2<f32>, 15>();
    let var_1 = -888f;
    global1 = array<vec2<f32>, 15>();
    return _wgslsmith_f_op_f32(abs(186f));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1) -> vec3<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-932f * _wgslsmith_f_op_f32(f32(-1f) * -109f))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.b) * _wgslsmith_f_op_vec2_f32(vec2<f32>(101f, 1190f) * _wgslsmith_f_op_vec2_f32(-arg_1.b))), global1[_wgslsmith_index_u32(abs(_wgslsmith_clamp_u32(4294967295u, _wgslsmith_sub_u32(u_input.b, u_input.c), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 66141u, u_input.b), vec3<u32>(4294967295u, 4294967295u, u_input.b)))), 15u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.x) * _wgslsmith_f_op_f32(arg_1.a - 1059f))), arg_1.a));
    return select(vec3<bool>(true, all(vec4<bool>(var_0.b.x <= 160f, true, true, select(true, true, false))), all(vec3<bool>(true, true, all(vec2<bool>(true, true))))), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), !select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true)), !(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false)));
}

fn func_2() -> i32 {
    let var_0 = select(select(vec3<bool>(~u_input.b <= 89193u, true, true), vec3<bool>(-u_input.a.x != u_input.a.x, all(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true))), true), select(func_3(vec3<i32>(u_input.a.x, -53970i, -1506i), Struct_1(457f, global1[_wgslsmith_index_u32(64880u, 15u)], 1823f)), vec3<bool>(false, true, true), !func_3(vec3<i32>(u_input.a.x, u_input.a.x, 37408i), Struct_1(1831f, global1[_wgslsmith_index_u32(4672u, 15u)], -291f)).x)), select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, all(vec3<bool>(false, true, false))), true), vec3<bool>(true, true, true), false), vec3<bool>(true, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1104f + -1719f) - 488f) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-134f + -299f) * _wgslsmith_f_op_f32(ceil(559f)))));
    var var_1 = global0[_wgslsmith_index_u32(~abs(~countOneBits(_wgslsmith_sub_u32(29549u, u_input.b))), 15u)];
    var_1 = Struct_1(-455f, var_1.b, -401f);
    let var_2 = global0[_wgslsmith_index_u32(34276u, 15u)];
    global0 = array<Struct_1, 15>();
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1576f), global1[_wgslsmith_index_u32(abs(u_input.b), 15u)], _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(278f)), _wgslsmith_f_op_f32(func_1(u_input.d.x, global0[_wgslsmith_index_u32(u_input.b, 15u)])))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32((func_2() & abs(u_input.d.x)) << (0u % 32u), -_wgslsmith_clamp_i32(30922i, 22400i, -937i) >> (abs(1u) % 32u)));
}

