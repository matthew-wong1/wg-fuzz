struct Struct_1 {
    a: vec3<u32>,
    b: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 30> = array<vec4<f32>, 30>(vec4<f32>(-1017f, 354f, 1354f, -1000f), vec4<f32>(-212f, 465f, -329f, -1000f), vec4<f32>(1431f, 1000f, -233f, 937f), vec4<f32>(-263f, -450f, 1339f, -116f), vec4<f32>(-124f, 425f, 1767f, 1130f), vec4<f32>(477f, -861f, 833f, 960f), vec4<f32>(1000f, 1441f, 418f, 1000f), vec4<f32>(1000f, 2100f, -303f, -149f), vec4<f32>(-166f, -1288f, -565f, -1527f), vec4<f32>(-930f, -2843f, -230f, 622f), vec4<f32>(-743f, -1685f, 893f, 759f), vec4<f32>(-940f, -636f, -618f, 1000f), vec4<f32>(-2535f, 351f, -1361f, -753f), vec4<f32>(-166f, -588f, -679f, 1442f), vec4<f32>(-1000f, -448f, -887f, -362f), vec4<f32>(2212f, -440f, 243f, 316f), vec4<f32>(1274f, 1000f, -627f, -139f), vec4<f32>(-713f, -341f, 964f, -1000f), vec4<f32>(-777f, -324f, -536f, 502f), vec4<f32>(284f, -1543f, 1272f, 421f), vec4<f32>(633f, -173f, -1729f, 299f), vec4<f32>(1349f, 720f, -2268f, -190f), vec4<f32>(-1432f, 251f, 153f, 554f), vec4<f32>(2132f, 2600f, 465f, -984f), vec4<f32>(-1032f, 548f, -377f, 124f), vec4<f32>(1000f, -981f, 332f, 637f), vec4<f32>(443f, 589f, 711f, -981f), vec4<f32>(432f, -1056f, -1687f, 715f), vec4<f32>(-570f, 1000f, -1333f, 1027f), vec4<f32>(1540f, -1787f, -543f, 417f));

var<private> global1: i32;

var<private> global2: array<vec2<f32>, 6> = array<vec2<f32>, 6>(vec2<f32>(-1054f, 1463f), vec2<f32>(763f, -759f), vec2<f32>(-414f, -938f), vec2<f32>(127f, 216f), vec2<f32>(1000f, 451f), vec2<f32>(-1745f, 248f));

var<private> global3: u32 = 9878u;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: vec3<i32>, arg_1: f32, arg_2: vec3<bool>, arg_3: vec4<u32>) -> u32 {
    return arg_3.x;
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: Struct_1) -> vec4<f32> {
    global0 = array<vec4<f32>, 30>();
    var var_0 = all(select(vec2<bool>(!(false | arg_1.x), arg_3.b), arg_1, false));
    var var_1 = arg_2;
    global3 = u_input.a.x;
    global3 = ~4294967295u;
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(global0[_wgslsmith_index_u32(3045u, 30u)], global0[_wgslsmith_index_u32(arg_2.a.x, 30u)], vec4<bool>(false, var_1.b, arg_3.b, arg_3.b))), global0[_wgslsmith_index_u32(1u, 30u)])) + global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_2.a.x, arg_2.a.x), vec2<u32>(13916u, 29040u)), u_input.a.xz | var_1.a.yy), 30u)]) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - global0[_wgslsmith_index_u32(abs(arg_2.a.x), 30u)]))));
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(u_input.c, vec2<bool>(arg_2.b, arg_2.b), Struct_1(u_input.a, arg_2.b), arg_2))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global0[_wgslsmith_index_u32(21706u, 30u)], vec4<f32>(762f, arg_0, arg_0, arg_1))))));
    let var_1 = Struct_1(select(vec3<u32>(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), arg_2.a.x, 1u), max(arg_2.a, vec3<u32>(63227u, 4294967295u, u_input.a.x) >> (u_input.a % vec3<u32>(32u))), !(!select(vec3<bool>(true, false, arg_2.b), vec3<bool>(false, true, arg_2.b), vec3<bool>(false, true, arg_2.b)))), arg_2.b);
    global0 = array<vec4<f32>, 30>();
    var var_2 = reverseBits(~_wgslsmith_sub_u32(1u, max(_wgslsmith_add_u32(var_1.a.x, u_input.a.x), ~arg_2.a.x)));
    let var_3 = 1434u;
    return !(!(!var_1.b));
}

fn func_4(arg_0: Struct_1) -> u32 {
    var var_0 = 37670u;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(12507u, 6u)]))) - global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(_wgslsmith_add_u32(1u, 35186u), _wgslsmith_div_u32(arg_0.a.x, u_input.e)), 6u)]) + _wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(4294967295u, 6u)]));
    var var_2 = var_1.x;
    let var_3 = firstLeadingBit(~vec2<u32>(_wgslsmith_div_u32(0u, 18161u) & countOneBits(arg_0.a.x), (17370u << (arg_0.a.x % 32u)) >> (min(u_input.e, 54416u) % 32u)));
    let var_4 = arg_0;
    return func_1(u_input.c, 1808f, vec3<bool>(!any(vec4<bool>(true, false, arg_0.b, false)), var_4.b, (abs(4233u) == var_3.x) & true), abs(abs(vec4<u32>(var_4.a.x, u_input.a.x, 58370u, arg_0.a.x >> (4294967295u % 32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_div_vec4_i32(vec4<i32>(3954i, ~(-u_input.c.x), -23965i, u_input.d), firstTrailingBit(~(vec4<i32>(u_input.b, u_input.b, u_input.c.x, u_input.c.x) ^ vec4<i32>(u_input.d, u_input.b, u_input.b, u_input.b))));
    var var_1 = global2[_wgslsmith_index_u32(min(4294967295u, select(_wgslsmith_sub_u32(func_1(u_input.c, _wgslsmith_f_op_f32(sign(-807f)), vec3<bool>(true, false, false), ~vec4<u32>(u_input.e, u_input.e, u_input.a.x, u_input.e)), ~15556u), func_4(Struct_1(abs(vec3<u32>(1u, u_input.a.x, 95297u)), func_2(-871f, 628f, Struct_1(vec3<u32>(40700u, u_input.e, 4294967295u), true)))), func_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -254f))), _wgslsmith_div_f32(-228f, _wgslsmith_f_op_f32(floor(-782f))), Struct_1(~u_input.a, false)))), 6u)];
    var var_2 = Struct_1(vec3<u32>(u_input.a.x, ~u_input.e, _wgslsmith_mult_u32(23699u, _wgslsmith_sub_u32(u_input.e, abs(u_input.a.x)))), all(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true))) & true);
    global0 = array<vec4<f32>, 30>();
    var var_3 = vec4<f32>(-777f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(285f, var_1.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(992f)), var_1.x, var_2.b && var_2.b))))), _wgslsmith_f_op_f32(f32(-1f) * -306f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -376f)));
    var var_4 = var_2.b;
    var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(992f)))), _wgslsmith_f_op_vec4_f32(func_3(~(var_0.yzw ^ u_input.c), vec2<bool>(all(vec2<bool>(true, var_2.b)), true), Struct_1(var_2.a ^ u_input.a, true), Struct_1(select(var_2.a, vec3<u32>(0u, var_2.a.x, 0u), vec3<bool>(var_2.b, true, var_2.b)), all(vec2<bool>(var_2.b, var_2.b))))).x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-501f, 2050f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(855f)) - _wgslsmith_f_op_f32(var_3.x * -2432f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_3.yzw)), vec3<f32>(_wgslsmith_f_op_f32(step(274f, 421f)), _wgslsmith_f_op_f32(select(var_3.x, var_3.x, var_2.b)), -3111f))) * var_3.yyz), 1u ^ var_2.a.x, ~(~(max(vec2<u32>(var_2.a.x, var_2.a.x), u_input.a.xy) | u_input.a.xy)), 1i);
}

