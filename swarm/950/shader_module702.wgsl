struct Struct_1 {
    a: vec2<bool>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 4> = array<u32, 4>(5114u, 0u, 0u, 36164u);

var<private> global1: i32 = -1i;

var<private> global2: f32;

var<private> global3: array<vec4<f32>, 23> = array<vec4<f32>, 23>(vec4<f32>(1000f, 341f, 530f, -926f), vec4<f32>(219f, 1000f, -476f, 530f), vec4<f32>(-842f, -1001f, -2002f, -965f), vec4<f32>(-1046f, -1866f, -1038f, -547f), vec4<f32>(-965f, -148f, 605f, 1107f), vec4<f32>(-1048f, 1605f, -362f, 534f), vec4<f32>(537f, 900f, 149f, -625f), vec4<f32>(-575f, -1649f, 162f, -2823f), vec4<f32>(561f, -309f, 1100f, -1707f), vec4<f32>(-1450f, 1342f, 1083f, 604f), vec4<f32>(-169f, -999f, -1294f, -1133f), vec4<f32>(583f, -152f, 557f, -542f), vec4<f32>(140f, 818f, 875f, -1581f), vec4<f32>(-187f, -191f, -2983f, 677f), vec4<f32>(-725f, -358f, -776f, 1627f), vec4<f32>(-474f, 945f, -711f, -1042f), vec4<f32>(1000f, -2337f, 568f, -405f), vec4<f32>(-1000f, 991f, -1000f, 213f), vec4<f32>(-171f, -1087f, -133f, -426f), vec4<f32>(450f, -659f, -214f, 1075f), vec4<f32>(-665f, -490f, -492f, -1380f), vec4<f32>(1410f, -582f, -148f, 352f), vec4<f32>(1306f, 595f, -1615f, 1715f));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: f32) -> Struct_1 {
    global3 = array<vec4<f32>, 23>();
    return Struct_1(vec2<bool>(true, true), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(518f - arg_0), _wgslsmith_f_op_f32(f32(-1f) * -763f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * arg_0) + arg_0)), _wgslsmith_f_op_f32(-579f + -200f), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(268f)), _wgslsmith_f_op_f32(-1320f + 108f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(-arg_0)) - _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1746f, 271f), _wgslsmith_f_op_f32(741f + arg_0))))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> vec2<bool> {
    let var_0 = arg_1;
    var var_1 = Struct_2(arg_1.a, !arg_1.a.a.x);
    let var_2 = var_1.a.b.x;
    global3 = array<vec4<f32>, 23>();
    global0 = array<u32, 4>();
    return var_1.a.a;
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: vec4<i32>) -> f32 {
    let var_0 = !select(!(!select(vec3<bool>(false, true, arg_1.b), vec3<bool>(arg_0.x, true, false), false)), !select(!vec3<bool>(arg_1.b, arg_1.b, arg_0.x), vec3<bool>(true, arg_1.a.a.x, arg_1.a.a.x), vec3<bool>(arg_0.x, arg_1.b, arg_1.a.a.x)), arg_0.x);
    global3 = array<vec4<f32>, 23>();
    var var_1 = Struct_1(vec2<bool>(arg_1.a.a.x, false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(u_input.a.x, 23u)])));
    global1 = -2147483647i;
    var var_2 = Struct_1(func_3(Struct_1(arg_1.a.a, _wgslsmith_f_op_vec4_f32(-arg_1.a.b)), arg_1), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1.a.b.x, 861f, 925f, 130f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1407f)), _wgslsmith_f_op_f32(sign(1659f)), 686f, arg_1.a.b.x), any(var_0))));
    return arg_1.a.b.x;
}

fn func_4(arg_0: f32) -> StorageBuffer {
    global2 = -564f;
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1152f, -198f), vec2<f32>(arg_0, 1472f))) + _wgslsmith_div_vec2_f32(vec2<f32>(arg_0, 233f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)))))));
    var var_1 = _wgslsmith_mod_vec3_i32(~vec3<i32>(0i, ~(-u_input.c.x), u_input.b), vec3<i32>(-2147483647i, u_input.d, u_input.c.x));
    var_1 = u_input.c.yww;
    return StorageBuffer(u_input.a.x, vec2<f32>(-216f, arg_0), ~abs(firstTrailingBit(~u_input.a.wwy)), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1551f)))), 1000f, -1478f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - 609f) * _wgslsmith_f_op_f32(-arg_0))), u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = min(1i << (firstLeadingBit(_wgslsmith_dot_vec4_u32(firstTrailingBit(u_input.a), u_input.a)) % 32u), -_wgslsmith_mod_i32(_wgslsmith_sub_i32(abs(u_input.b), firstLeadingBit(u_input.d)), abs(u_input.c.x)));
    global1 = 8143i;
    let var_0 = func_1(-445f);
    var var_1 = ~global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.a.x, global0[_wgslsmith_index_u32(1u, 4u)] ^ _wgslsmith_div_u32(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], 36913u)), u_input.a.x), 4u)];
    global3 = array<vec4<f32>, 23>();
    let x = u_input.a;
    s_output = func_4(_wgslsmith_f_op_f32(func_2(select(vec2<bool>(var_0.a.x || var_0.a.x, !var_0.a.x), select(vec2<bool>(var_0.a.x, true), var_0.a, var_0.a.x), !vec2<bool>(var_0.a.x, true)), Struct_2(func_1(-1000f), all(select(vec4<bool>(true, false, false, false), vec4<bool>(true, var_0.a.x, false, false), false))), u_input.c)));
}

