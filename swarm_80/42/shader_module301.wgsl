struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: i32,
    c: Struct_3,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 27> = array<bool, 27>(true, false, true, false, true, true, false, false, false, true, true, true, false, false, true, true, true, false, true, true, false, false, true, false, true, false, false);

var<private> global1: array<u32, 4>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec2<u32>) -> vec2<i32> {
    var var_0 = ~29434u;
    global1 = array<u32, 4>();
    return vec2<i32>(~_wgslsmith_add_i32(u_input.c.x, u_input.c.x), ~27643i);
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> Struct_3 {
    global0 = array<bool, 27>();
    global1 = array<u32, 4>();
    let var_0 = -min(vec2<i32>((u_input.c.x >> (90133u % 32u)) & -28672i, -1i), (func_3(vec2<u32>(4294967295u, 4294967295u)) ^ vec2<i32>(u_input.c.x, u_input.c.x)) ^ -_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, -1i), vec2<i32>(u_input.a.x, -39098i)));
    var var_1 = global1[_wgslsmith_index_u32(u_input.b.x, 4u)];
    global1 = array<u32, 4>();
    return Struct_3(firstLeadingBit(var_0.x) << (_wgslsmith_div_u32(u_input.b.x, u_input.b.x) % 32u));
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: Struct_3, arg_3: u32) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-570f - _wgslsmith_f_op_f32(sign(657f))), -335f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-121f, 1789f, arg_0)) + _wgslsmith_f_op_f32(trunc(-1517f)))))));
    var var_1 = _wgslsmith_sub_vec2_i32(u_input.a.yy, firstLeadingBit(_wgslsmith_mult_vec2_i32(-firstLeadingBit(u_input.a.xy), u_input.c)));
    let var_2 = 19656i;
    let var_3 = Struct_5(var_1.x, 20499i, arg_2, 1u, Struct_2(Struct_1(_wgslsmith_div_f32(var_0.x, -1267f)), vec3<f32>(_wgslsmith_f_op_f32(sign(715f)), _wgslsmith_div_f32(var_0.x, -1125f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x)))), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), 355f))), Struct_1(-264f), reverseBits(vec2<i32>(i32(-1i) * -2147483647i, arg_2.a & 10812i))));
    let var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(657f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_3.e.c.a, _wgslsmith_f_op_f32(trunc(var_3.e.c.a)), true)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_3.e.d.a, _wgslsmith_f_op_f32(f32(-1f) * -304f))), 606f)));
    return _wgslsmith_div_vec4_i32(-_wgslsmith_clamp_vec4_i32(vec4<i32>(19903i, var_2, max(var_3.e.e.x, var_1.x), arg_1), vec4<i32>(_wgslsmith_sub_i32(-1585i, var_3.b), var_2, -14800i, _wgslsmith_mod_i32(-1i, var_3.e.e.x)), vec4<i32>(countOneBits(var_2), _wgslsmith_sub_i32(var_1.x, 7477i), 12563i, _wgslsmith_dot_vec2_i32(var_3.e.e, vec2<i32>(0i, -6090i)))), _wgslsmith_clamp_vec4_i32(u_input.a, _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(u_input.a, u_input.a) | u_input.a, vec4<i32>(arg_1 >> (var_3.d % 32u), ~(-19719i), abs(arg_2.a), -15260i ^ arg_2.a)), (~vec4<i32>(-2147483647i, arg_2.a, -2147483647i, -19645i) ^ _wgslsmith_sub_vec4_i32(u_input.a, u_input.a)) << (~(~vec4<u32>(17461u, 4294967295u, 6266u, 60183u)) % vec4<u32>(32u))));
}

fn func_5(arg_0: bool, arg_1: vec3<i32>, arg_2: vec4<i32>, arg_3: bool) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-915f, _wgslsmith_f_op_f32(-1000f - 1367f), -1461f, _wgslsmith_f_op_f32(min(-1016f, -1370f))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1084f, -804f, -486f, 1000f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(3095f, -655f, -700f, 355f), vec4<f32>(1254f, 207f, 330f, 684f), vec4<bool>(arg_0, global0[_wgslsmith_index_u32(u_input.b.x, 27u)], arg_0, true))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1994f, -423f, -313f, -1262f) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(977f, 829f, -1239f, -2428f), vec4<f32>(-1988f, 1458f, 569f, 668f)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1943f, -878f, -147f, 2828f) * vec4<f32>(841f, -541f, 1001f, -1341f)), vec4<f32>(275f, -959f, -1000f, 208f), any(vec4<bool>(true, false, arg_3, true)))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-863f, 1750f, 202f, -582f), vec4<f32>(966f, 859f, -144f, 437f), false))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1417f, 1275f, -586f, 278f) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1692f, -981f, -1072f, -1000f), vec4<f32>(-1251f, -1019f, 1000f, -1194f), vec4<bool>(false, arg_0, false, false)))))))));
    let var_1 = !(!(all(!vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 27u)], false, arg_3)) && true));
    let var_2 = vec4<bool>(all(!(!(!vec4<bool>(false, true, arg_3, false)))), true, _wgslsmith_f_op_f32(step(-1965f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, var_0.x)))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(312f, var_0.x))), true);
    let var_3 = arg_1.xy;
    let var_4 = vec2<f32>(334f, var_0.x);
    return arg_1.x;
}

fn func_6(arg_0: i32, arg_1: f32, arg_2: Struct_5) -> Struct_2 {
    var var_0 = func_2(any(vec4<bool>(!all(vec4<bool>(false, global0[_wgslsmith_index_u32(5565u, 27u)], global0[_wgslsmith_index_u32(1u, 27u)], true)), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~(~u_input.b.x), 4u)], 27u)], any(vec4<bool>(global0[_wgslsmith_index_u32(arg_2.d, 27u)], global0[_wgslsmith_index_u32(50064u, 27u)], true, global0[_wgslsmith_index_u32(u_input.b.x, 27u)])), global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_2.d, 4u)], 27u)] | all(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 27u)], true)))), Struct_1(arg_2.e.d.a));
    var var_1 = arg_2.c;
    var var_2 = 38814i >> (~select(~_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(14597u, 4u)], 26828u, 58427u, 0u), vec4<u32>(1u, u_input.b.x, global1[_wgslsmith_index_u32(u_input.b.x, 4u)], u_input.b.x)), ~(~u_input.b.x), !global0[_wgslsmith_index_u32(arg_2.d, 27u)]) % 32u);
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -496f);
    global1 = array<u32, 4>();
    return arg_2.e;
}

fn func_1(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_mult_vec3_u32(~u_input.b, vec3<u32>(u_input.b.x, ~u_input.b.x, 17025u)) | ~(~(~u_input.b));
    global1 = array<u32, 4>();
    let var_1 = func_6(func_5(global0[_wgslsmith_index_u32(~u_input.b.x, 27u)], vec3<i32>(u_input.a.x, select(u_input.a.x, u_input.a.x, false), 70564i), func_4(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, u_input.b.x), 27u)], u_input.a.x, func_2(global0[_wgslsmith_index_u32(59277u, 27u)], Struct_1(arg_0.x)), 39201u), global0[_wgslsmith_index_u32(countOneBits(43516u), 27u)]) ^ u_input.a.x, _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.x)) * _wgslsmith_f_op_f32(floor(760f))))), Struct_5(~_wgslsmith_add_i32(u_input.c.x, u_input.c.x), u_input.a.x, func_2(true, Struct_1(_wgslsmith_f_op_f32(abs(arg_0.x)))), var_0.x, Struct_2(Struct_1(arg_0.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0)), Struct_1(_wgslsmith_f_op_f32(arg_0.x + 156f)), Struct_1(arg_0.x), -vec2<i32>(-32875i, u_input.c.x))));
    var var_2 = var_1;
    var_2 = func_6(-41407i, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2340f + var_2.a.a)))), Struct_5(var_1.e.x, func_2(all(vec2<bool>(global0[_wgslsmith_index_u32(1u, 27u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(20508u, 4u)], 27u)])) && false, func_6(1i, arg_0.x, Struct_5(1i, 2147483647i, Struct_3(var_2.e.x), 55994u, var_1)).a).a, func_2(all(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 27u)], global0[_wgslsmith_index_u32(var_0.x, 27u)])), func_6(firstLeadingBit(u_input.a.x), -734f, Struct_5(1206i, 7010i, Struct_3(var_1.e.x), u_input.b.x, var_1)).a), global1[_wgslsmith_index_u32(var_0.x, 4u)], var_1));
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 4>();
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-1000f * _wgslsmith_div_f32(-1068f, -808f))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-554f, 321f, 1964f)))))), func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1194f, -1231f, 291f)))) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-935f, 2046f, -3374f))))), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1265f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1096f), -948f))), _wgslsmith_mod_vec2_i32(countOneBits(vec2<i32>(_wgslsmith_mult_i32(1i, u_input.c.x), ~35248i)), vec2<i32>(~u_input.c.x, u_input.a.x)));
    let var_1 = select(vec4<bool>(true, global0[_wgslsmith_index_u32(~71982u, 27u)], true, any(vec2<bool>(false, true))), select(!select(vec4<bool>(true, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(14340u, 4u)], 27u)], true, global0[_wgslsmith_index_u32(4294967295u, 27u)]), !vec4<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 4u)], 27u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 4u)], 27u)], false, global0[_wgslsmith_index_u32(11067u, 27u)]), !global0[_wgslsmith_index_u32(u_input.b.x, 27u)]), !(!(!vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 27u)], false, global0[_wgslsmith_index_u32(0u, 27u)]))), select(select(vec4<bool>(global0[_wgslsmith_index_u32(0u, 27u)], global0[_wgslsmith_index_u32(u_input.b.x, 27u)], global0[_wgslsmith_index_u32(u_input.b.x, 27u)], global0[_wgslsmith_index_u32(u_input.b.x, 27u)]), !vec4<bool>(global0[_wgslsmith_index_u32(67506u, 27u)], global0[_wgslsmith_index_u32(1u, 27u)], false, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 4u)], 27u)]), select(false, false, global0[_wgslsmith_index_u32(9314u, 27u)])), !vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 27u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(15372u, 4u)], 27u)], false, global0[_wgslsmith_index_u32(4294967295u, 27u)]), !all(vec4<bool>(global0[_wgslsmith_index_u32(54614u, 27u)], global0[_wgslsmith_index_u32(4294967295u, 27u)], global0[_wgslsmith_index_u32(4294967295u, 27u)], true)))), vec4<bool>(!all(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 27u)], true)), any(select(select(vec2<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 4u)], 27u)], global0[_wgslsmith_index_u32(u_input.b.x, 27u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 4u)], 27u)]), vec2<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 4u)], 27u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 4u)], 27u)])), vec2<bool>(global0[_wgslsmith_index_u32(52782u, 27u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(61621u, 4u)], 27u)]), false)), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(4093u, reverseBits(u_input.b.x)), 4u)] >= 36709u, select(true, !global0[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(43303u, 4u)], 27u)], false)));
    global0 = array<bool, 27>();
    let var_2 = var_1;
    global0 = array<bool, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_add_i32(var_0.e.x, 2147483647i), 0i), select(u_input.a.zy, vec2<i32>(65348i, -64708i), false)), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i | _wgslsmith_mult_i32(2147483647i, var_0.e.x), ~max(var_0.e.x, -14256i), -(u_input.c.x << (1u % 32u))), ~vec3<i32>(_wgslsmith_add_i32(9645i, 0i), _wgslsmith_mod_i32(u_input.a.x, var_0.e.x), -u_input.a.x)), u_input.b.x, _wgslsmith_dot_vec3_i32(u_input.a.zww, -u_input.a.yzz << (vec3<u32>(global1[_wgslsmith_index_u32(65844u, 4u)], _wgslsmith_sub_u32(u_input.b.x, global1[_wgslsmith_index_u32(0u, 4u)]), 4294967295u) % vec3<u32>(32u))));
}

