struct Struct_1 {
    a: f32,
    b: f32,
    c: bool,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: bool,
    d: vec4<u32>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: bool,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 19>;

var<private> global1: array<vec2<bool>, 30> = array<vec2<bool>, 30>(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false));

var<private> global2: bool;

var<private> global3: Struct_4 = Struct_4(0u);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_4, arg_1: vec4<i32>, arg_2: Struct_3) -> f32 {
    global2 = !(!arg_2.c | true);
    let var_0 = arg_2.a;
    var var_1 = arg_2.d.x;
    var var_2 = vec2<u32>(firstTrailingBit(~(arg_0.a >> (arg_0.a % 32u))), countOneBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a, global3.a, arg_2.d.x), firstLeadingBit(arg_2.d.yyz))));
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.b, _wgslsmith_div_f32(964f, 488f), 1852f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, 703f, var_0.a)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, var_0.a, var_0.b) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, var_0.b, arg_2.b) + vec3<f32>(var_0.a, arg_2.b, 506f)))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1073f - 1000f) + -259f), _wgslsmith_f_op_f32(ceil(arg_2.a.a)), 613f)));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.b - _wgslsmith_f_op_f32(-1177f - _wgslsmith_f_op_f32(floor(var_3.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b))));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: f32) -> u32 {
    global0 = array<vec2<bool>, 19>();
    let var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1647f, arg_2))) * arg_1.a.b), _wgslsmith_f_op_f32(func_3(Struct_4(_wgslsmith_clamp_u32(arg_1.d.x, global3.a, 9776u)), vec4<i32>(-5738i, ~(-1i), -2147483647i, -17480i), Struct_3(arg_1.a, _wgslsmith_f_op_f32(min(483f, arg_2)), any(global0[_wgslsmith_index_u32(arg_1.d.x, 19u)]), ~arg_1.d))), arg_1.c, select(!select(vec2<bool>(arg_1.a.c, true), global1[_wgslsmith_index_u32(10093u, 30u)], global1[_wgslsmith_index_u32(31472u, 30u)]), global1[_wgslsmith_index_u32(4294967295u, 30u)], vec2<bool>(arg_1.c, !arg_1.c))), _wgslsmith_f_op_f32(sign(arg_0.x)), any(global1[_wgslsmith_index_u32(~(~firstLeadingBit(18191u)), 30u)]), ~arg_1.d);
    let var_1 = vec3<i32>(~u_input.a, ~_wgslsmith_mod_i32(u_input.a, -4075i), abs(abs(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(1i, u_input.a, 0i)), select(vec3<i32>(u_input.a, u_input.a, -47275i), vec3<i32>(-21145i, -1i, -7516i), vec3<bool>(true, arg_1.c, true))))));
    global1 = array<vec2<bool>, 30>();
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1272f, arg_2));
    return max(global3.a, 0u);
}

fn func_2(arg_0: Struct_3, arg_1: u32) -> bool {
    var var_0 = arg_0;
    global3 = Struct_4(0u);
    var var_1 = _wgslsmith_f_op_f32(-1f);
    var_1 = arg_0.a.b;
    let var_2 = func_4(vec2<f32>(var_0.a.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1300f), _wgslsmith_f_op_f32(func_3(Struct_4(var_0.d.x), vec4<i32>(u_input.a, -2147483647i, u_input.a, 2147483647i), Struct_3(Struct_1(arg_0.b, var_0.a.b, arg_0.c, global1[_wgslsmith_index_u32(4385u, 30u)]), var_0.a.a, false, arg_0.d))))), Struct_3(Struct_1(_wgslsmith_f_op_f32(var_0.a.a + -183f), -249f, any(global1[_wgslsmith_index_u32(~3569u, 30u)]), vec2<bool>(true, true)), -730f, !(!all(vec3<bool>(false, true, false))), var_0.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(776f))))));
    return true;
}

fn func_5(arg_0: bool, arg_1: bool, arg_2: vec2<f32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, arg_2.x, arg_2.x, arg_2.x)), vec4<f32>(-231f, arg_2.x, 448f, _wgslsmith_div_f32(arg_2.x, arg_2.x))))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_2.x, arg_2.x, arg_2.x, arg_2.x))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_2.x, 1000f, 1000f, 407f)))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_2.x)), _wgslsmith_f_op_f32(arg_2.x + arg_2.x), _wgslsmith_f_op_f32(arg_2.x * 440f), _wgslsmith_f_op_f32(f32(-1f) * -659f)), vec4<f32>(_wgslsmith_div_f32(-1030f, -1117f), _wgslsmith_f_op_f32(arg_2.x + -1000f), _wgslsmith_f_op_f32(step(-157f, -1052f)), _wgslsmith_f_op_f32(arg_2.x - 341f)))))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-132f, arg_2.x)))))), arg_2.x, any(vec3<bool>(any(vec3<bool>(arg_0, arg_1, arg_0)), false, !any(vec3<bool>(false, true, arg_1)))), global0[_wgslsmith_index_u32(4294967295u, 19u)]);
    var var_2 = false;
    var_2 = any(vec3<bool>(!var_1.c, any(global0[_wgslsmith_index_u32(0u, 19u)]), func_2(Struct_3(var_1, -128f, true, reverseBits(vec4<u32>(4294967295u, 0u, global3.a, 6683u))), _wgslsmith_sub_u32(19969u, global3.a))));
    global1 = array<vec2<bool>, 30>();
    return arg_2.x;
}

fn func_1(arg_0: vec2<bool>) -> Struct_5 {
    var var_0 = _wgslsmith_f_op_f32(func_5(func_2(Struct_3(Struct_1(_wgslsmith_f_op_f32(floor(707f)), _wgslsmith_div_f32(-1373f, -728f), arg_0.x & arg_0.x, global1[_wgslsmith_index_u32(~36864u, 30u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-967f + 993f), _wgslsmith_f_op_f32(round(542f))), arg_0.x, select(max(vec4<u32>(global3.a, 0u, global3.a, global3.a), vec4<u32>(global3.a, 0u, global3.a, global3.a)), firstLeadingBit(vec4<u32>(global3.a, 4294967295u, 1u, global3.a)), false)), global3.a), any(!(!(!vec4<bool>(false, true, false, arg_0.x)))), vec2<f32>(_wgslsmith_f_op_f32(ceil(693f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1549f))))));
    var var_1 = vec3<i32>(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(~(-1i), 1i, u_input.a, ~9210i ^ ~u_input.a), vec4<i32>(-2147483647i, firstLeadingBit(u_input.a), -2147483647i ^ u_input.a, -max(u_input.a, u_input.a))), 20587i);
    var var_2 = any(!vec4<bool>(select(true, any(global0[_wgslsmith_index_u32(0u, 19u)]), true), true, arg_0.x, !any(vec2<bool>(arg_0.x, arg_0.x))));
    global3 = Struct_4(_wgslsmith_mult_u32(~_wgslsmith_div_u32(1126u, ~global3.a), _wgslsmith_mult_u32(firstLeadingBit(~global3.a), 4294967295u)));
    global2 = !(!(!arg_0.x));
    return Struct_5(~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(24640u, global3.a), max(vec2<u32>(4294967295u, global3.a), vec2<u32>(global3.a, global3.a))), 1u), select(select(select(vec3<bool>(arg_0.x, true, arg_0.x), select(vec3<bool>(arg_0.x, true, true), vec3<bool>(arg_0.x, arg_0.x, arg_0.x), arg_0.x), true), vec3<bool>(false, !arg_0.x, all(vec3<bool>(arg_0.x, arg_0.x, false))), vec3<bool>(true, true, true)), select(!select(vec3<bool>(arg_0.x, false, false), vec3<bool>(arg_0.x, arg_0.x, false), arg_0.x), select(vec3<bool>(true, arg_0.x, true), select(vec3<bool>(arg_0.x, false, arg_0.x), vec3<bool>(arg_0.x, true, false), arg_0.x), select(vec3<bool>(arg_0.x, false, arg_0.x), vec3<bool>(false, arg_0.x, false), vec3<bool>(false, true, true))), select(!vec3<bool>(arg_0.x, arg_0.x, true), !vec3<bool>(false, true, arg_0.x), !arg_0.x)), !vec3<bool>(true, 0u == global3.a, false | arg_0.x)), !arg_0.x, select(select(!vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), select(vec4<bool>(false, true, true, false), select(vec4<bool>(true, arg_0.x, false, false), vec4<bool>(arg_0.x, false, arg_0.x, true), vec4<bool>(false, false, arg_0.x, arg_0.x)), true), !arg_0.x), select(!vec4<bool>(true, true, arg_0.x, false), select(select(vec4<bool>(true, false, false, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, true, true), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false)), select(vec4<bool>(false, true, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), arg_0.x), true), all(global0[_wgslsmith_index_u32(~0u, 19u)])), select(vec4<bool>(arg_0.x, all(vec2<bool>(arg_0.x, arg_0.x)), arg_0.x, true), !vec4<bool>(true, arg_0.x, arg_0.x, true), !select(vec4<bool>(arg_0.x, false, arg_0.x, false), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(!vec2<bool>(all(vec3<bool>(true, true, true)), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(~1727u, select(_wgslsmith_mod_u32(10722u, 35435u), var_0.a.x, all(var_0.d)) >> ((~global3.a >> (~global3.a % 32u)) % 32u), _wgslsmith_mod_u32(_wgslsmith_mod_u32(var_0.a.x, ~global3.a), ~var_0.a.x >> (_wgslsmith_dot_vec3_u32(vec3<u32>(86140u, 0u, global3.a), vec3<u32>(27688u, var_0.a.x, var_0.a.x)) % 32u))), 12145i, _wgslsmith_clamp_vec3_u32(~vec3<u32>(~1u, global3.a, firstTrailingBit(56098u)), vec3<u32>(_wgslsmith_mult_u32(21289u, 0u), ~(~1u), _wgslsmith_dot_vec2_u32(var_0.a, ~vec2<u32>(global3.a, 9786u))), firstTrailingBit(~(~vec3<u32>(var_0.a.x, var_0.a.x, 0u)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-543f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(278f)) + _wgslsmith_f_op_f32(ceil(-368f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2181f * 152f) - _wgslsmith_f_op_f32(max(-725f, 718f))) + _wgslsmith_f_op_f32(abs(-198f)))));
}

