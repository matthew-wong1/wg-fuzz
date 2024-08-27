struct Struct_1 {
    a: vec3<bool>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 8> = array<i32, 8>(-1i, i32(-2147483648), 3349i, -2470i, 0i, -48627i, 37462i, i32(-2147483648));

var<private> global1: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec3<bool>(true, false, true), vec4<u32>(8158u, 4294967295u, 944u, 4294967295u)), Struct_1(vec3<bool>(false, true, false), vec4<u32>(15136u, 43194u, 1u, 0u)), Struct_1(vec3<bool>(true, true, true), vec4<u32>(1u, 1u, 71707u, 4294967295u)), Struct_1(vec3<bool>(false, false, false), vec4<u32>(1u, 27188u, 62863u, 1u)), Struct_1(vec3<bool>(false, false, false), vec4<u32>(0u, 4294967295u, 479u, 1u)), Struct_1(vec3<bool>(true, true, false), vec4<u32>(28860u, 0u, 4294967295u, 69764u)), Struct_1(vec3<bool>(true, false, true), vec4<u32>(4294967295u, 0u, 1u, 4294967295u)), Struct_1(vec3<bool>(true, false, true), vec4<u32>(4294967295u, 28848u, 4294967295u, 72422u)), Struct_1(vec3<bool>(true, false, false), vec4<u32>(40753u, 0u, 1u, 20660u)), Struct_1(vec3<bool>(false, true, true), vec4<u32>(0u, 55046u, 4294967295u, 16153u)));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec3<bool> {
    var var_0 = Struct_1(vec3<bool>(true, false, all(vec4<bool>(true, true, true, true))), ~_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(53119u, 19515u, 0u, 5841u)), countOneBits(vec4<u32>(85165u, 4294967295u, 42240u, 0u))), vec4<u32>(~4165u, firstLeadingBit(0u), 18447u, 1u), vec4<u32>(1u, 1u, 1u, 1u)));
    var var_1 = Struct_1(var_0.a, abs(max(~(~var_0.b), _wgslsmith_mult_vec4_u32(var_0.b, ~var_0.b))));
    let var_2 = global1[_wgslsmith_index_u32(4294967295u & var_0.b.x, 10u)];
    var var_3 = true;
    global1 = array<Struct_1, 10>();
    return !select(!vec3<bool>(var_2.a.x, var_2.a.x, !var_2.a.x), !select(select(var_1.a, var_2.a, var_1.a), !vec3<bool>(true, var_1.a.x, var_0.a.x), false), false);
}

fn func_2() -> vec4<u32> {
    let var_0 = func_3();
    var var_1 = vec3<u32>(~19491u, ~(select(~0u, 62512u, var_0.x & var_0.x) ^ _wgslsmith_clamp_u32(~3754u, 54862u, _wgslsmith_dot_vec4_u32(vec4<u32>(83513u, 96870u, 3628u, 52108u), vec4<u32>(32411u, 106078u, 12002u, 38153u)))), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(10109u, 46465u, 1u), vec3<u32>(260u, 36210u, 29148u)), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 6899u, 9858u), vec4<u32>(1u, 20159u, 0u, 7507u))), reverseBits(firstLeadingBit(vec2<u32>(4294967295u, 1u)))) & ~1u);
    global0 = array<i32, 8>();
    let var_2 = Struct_1(var_0, vec4<u32>(var_1.x, var_1.x, _wgslsmith_clamp_u32(var_1.x, ~(~48320u), min(~1u, 4294967295u)), 64605u));
    var var_3 = u_input.b.yxy;
    return vec4<u32>(4294967295u, var_1.x, 100u, _wgslsmith_dot_vec2_u32(select(select(select(vec2<u32>(var_1.x, 0u), vec2<u32>(0u, var_2.b.x), vec2<bool>(var_2.a.x, false)), ~var_2.b.wz, vec2<bool>(true, true)), _wgslsmith_div_vec2_u32(var_1.xy, var_2.b.ww) | var_2.b.xy, 23469u < _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_1.x, var_2.b.x, 4294967295u), vec4<u32>(var_2.b.x, 0u, var_1.x, var_2.b.x))), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(16871u, var_1.x, 72192u), var_2.b.xxy)), ~(~vec2<u32>(0u, 1u)))));
}

fn func_1(arg_0: vec3<bool>) -> Struct_1 {
    var var_0 = Struct_1(!select(!(!arg_0), select(arg_0, select(vec3<bool>(arg_0.x, false, arg_0.x), vec3<bool>(true, arg_0.x, false), arg_0), arg_0), arg_0), min(_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 18544u, 4333u, 72645u), vec4<u32>(1u, 27026u, 1u, 4294967295u), vec4<u32>(2982u, 4790u, 922u, 15159u)), select(func_2(), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 25673u, 1u), vec4<u32>(0u, 47214u, 1u, 4294967295u)), !arg_0.x)), vec4<u32>(1u, 1u, 1u, 1u)));
    return Struct_1(select(func_3(), vec3<bool>(!any(vec4<bool>(true, true, true, var_0.a.x)), true, arg_0.x), false), select(func_2(), var_0.b, vec4<bool>(true, true, true, true)));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = func_1(func_1(!select(vec3<bool>(false, arg_1.a.x, arg_2.a.x), arg_3.a, true)).a).a.xy;
    var_0 = !(!(!select(vec2<bool>(false, var_0.x), arg_2.a.zx, arg_1.a.x)));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-2252f, -1000f, -1472f)))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(539f + 1114f)), 1470f, -312f)) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(959f, _wgslsmith_div_f32(1f, _wgslsmith_div_f32(1000f, 1450f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(2044f * -1150f), -1540f, global0[_wgslsmith_index_u32(14505u, 8u)] > 58810i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-115f, -205f, -1000f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1895f, 998f, -182f) + vec3<f32>(1746f, -128f, 1042f)))) + vec3<f32>(1f, 1f, 1f)))));
    var_1 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(2203f - var_1.x), -370f)));
    var var_2 = global1[_wgslsmith_index_u32(select(~14616u, arg_2.b.x, (-_wgslsmith_add_i32(0i, 2147483647i) | ~global0[_wgslsmith_index_u32(~arg_2.b.x, 8u)]) == ~(~(-12147i))), 10u)];
    return arg_3.a.xy;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(!vec2<bool>(true, all(vec4<bool>(false, false, false, false))), vec2<bool>(true, true), func_4(~vec2<u32>(1u, 1u), func_1(vec3<bool>(false, true, false)), global1[_wgslsmith_index_u32(func_2().x, 10u)], global1[_wgslsmith_index_u32(7062u, 10u)])), func_4(_wgslsmith_add_vec2_u32(vec2<u32>(abs(6843u), countOneBits(4294967295u)), vec2<u32>(1u, 1u)), func_1(func_3()), global1[_wgslsmith_index_u32(20743u, 10u)], Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true)), vec4<u32>(~1u, 0u, 4294967295u, ~92173u))), true);
    let var_1 = global1[_wgslsmith_index_u32(55035u, 10u)];
    let var_2 = func_1(!vec3<bool>(any(!vec2<bool>(false, var_0.x)), func_3().x || true, all(!var_1.a)));
    let var_3 = func_2().xy;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1770f * 1112f));
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.c, var_4, _wgslsmith_add_i32(max(1i, abs(470i)), global0[_wgslsmith_index_u32(58088u, 8u)]), ~u_input.b);
}

