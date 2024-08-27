struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 5>;

var<private> global1: bool;

var<private> global2: f32 = -1072f;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec4<bool>) -> vec4<f32> {
    global1 = arg_2.x;
    global0 = array<vec2<u32>, 5>();
    global2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-934f))));
    var var_0 = _wgslsmith_add_vec3_u32((~vec3<u32>(90473u, arg_0.a, 13834u) & ~_wgslsmith_mod_vec3_u32(vec3<u32>(13555u, 4294967295u, 15134u), vec3<u32>(188u, arg_1, arg_1))) << (max(~vec3<u32>(arg_1, arg_0.a, arg_0.a), min(vec3<u32>(2117u, arg_1, arg_1), ~vec3<u32>(16043u, arg_1, arg_0.a))) % vec3<u32>(32u)), select(firstTrailingBit(_wgslsmith_mod_vec3_u32(~vec3<u32>(arg_1, arg_1, arg_1), abs(vec3<u32>(8970u, arg_1, 3020u)))), ~vec3<u32>(1u, arg_1, ~arg_0.a), vec3<bool>(arg_2.x, true, all(vec4<bool>(arg_2.x, arg_2.x, arg_2.x, true)))));
    let var_1 = firstTrailingBit(_wgslsmith_clamp_vec3_u32(abs(firstLeadingBit(vec3<u32>(arg_1, 29542u, 0u))), ~min(vec3<u32>(arg_1, arg_1, 782u), vec3<u32>(var_0.x, arg_0.a, var_0.x)), vec3<u32>(firstTrailingBit(1u), var_0.x >> (0u % 32u), var_0.x >> (var_0.x % 32u))) << (select(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a, 0u, 0u), vec3<u32>(4294967295u, 4294967295u, arg_1)), ~3838u, firstTrailingBit(arg_0.a)), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, var_0.x, 0u), countOneBits(vec3<u32>(arg_0.a, 56345u, 6439u)), vec3<u32>(arg_0.a, 49451u, 40256u) << (vec3<u32>(arg_0.a, arg_0.a, arg_1) % vec3<u32>(32u))), arg_2.x) % vec3<u32>(32u)));
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(-1133f, -478f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(f32(-1f) * -342f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-722f, 1422f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1095f, 692f)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1769f))));
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -2099f);
    var var_1 = u_input.a.x;
    let var_2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(_wgslsmith_clamp_u32(7521u, 4294967295u, 14526u)), reverseBits(_wgslsmith_div_u32(4294967295u, 114358u)), vec4<bool>(any(vec3<bool>(false, true, true)), false, true, true))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + 509f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -248f) * _wgslsmith_f_op_f32(var_0 + 2118f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(var_0, -724f, true)), 242f)), _wgslsmith_f_op_f32(f32(-1f) * -777f)))));
    var var_3 = vec2<bool>(-41568i == _wgslsmith_mult_i32(u_input.a.x | 0i, u_input.a.x), select(all(vec4<bool>(true, true, true, true)), 4676i > _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -11875i), u_input.a), true));
    let var_4 = Struct_1(~_wgslsmith_mod_u32(42562u, ~1u));
    return var_4.a;
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = u_input.a;
    var var_1 = _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(28901u, ~_wgslsmith_sub_u32(4294967295u, 85485u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(35577u, arg_1.a, arg_2.a, 53609u), vec4<u32>(arg_2.a, arg_1.a, 9827u, 4294967295u))), vec3<u32>(min(~arg_1.a, arg_1.a), _wgslsmith_mod_u32(46015u, 49926u), ~_wgslsmith_sub_u32(arg_1.a, arg_1.a)), vec3<u32>(func_2(), reverseBits(select(arg_1.a, 4294967295u, false)), ~(4294967295u ^ arg_2.a))), countOneBits(abs(vec3<u32>(min(arg_2.a, 4294967295u), arg_2.a, _wgslsmith_div_u32(0u, 23493u)))));
    var var_2 = arg_1.a;
    global2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1314f * -1304f), _wgslsmith_f_op_f32(1255f + _wgslsmith_f_op_f32(f32(-1f) * -425f))))))));
    let var_3 = firstTrailingBit(var_1.zy);
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    return func_1(any(select(select(vec4<bool>(arg_1, false, true, false), vec4<bool>(arg_1, arg_1, arg_1, arg_1), !arg_1), !vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(true, true, true, true))), Struct_1(~arg_2.a), func_1(all(vec2<bool>(true, arg_1)), Struct_1(4294967295u), func_1(false, func_1(u_input.a.x <= u_input.a.x, func_1(arg_1, Struct_1(4294967295u), arg_0), arg_0), func_1(all(vec3<bool>(arg_1, true, false)), func_1(true, Struct_1(53876u), Struct_1(arg_2.a)), arg_0))));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> vec3<f32> {
    global0 = array<vec2<u32>, 5>();
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(-arg_0.x)) - _wgslsmith_f_op_f32(abs(-210f)));
    global0 = array<vec2<u32>, 5>();
    var var_0 = -(max(select(-vec4<i32>(2147483647i, u_input.a.x, arg_3, arg_3), -vec4<i32>(u_input.a.x, 0i, 4854i, u_input.a.x), true), max(vec4<i32>(arg_3, u_input.a.x, arg_3, arg_3), vec4<i32>(arg_3, -31703i, u_input.a.x, -1i)) ^ max(vec4<i32>(0i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(28664i, arg_3, u_input.a.x, u_input.a.x))) << (vec4<u32>(92715u, min(arg_2.a | arg_1.a, ~22741u), arg_1.a, ~(~0u)) % vec4<u32>(32u)));
    var var_1 = arg_0.yw;
    return _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.wzz)), arg_0.zwz))));
}

fn func_6(arg_0: vec3<f32>, arg_1: Struct_1) -> bool {
    var var_0 = ~countOneBits(vec3<u32>(1u, 984u, func_1(true, Struct_1(arg_1.a), arg_1).a));
    global2 = -644f;
    var var_1 = _wgslsmith_mult_i32(_wgslsmith_mult_i32(select(~(-1i), u_input.a.x, any(vec2<bool>(false, true))), u_input.a.x), ~(-_wgslsmith_add_i32(2147483647i, -2147483647i)) & (_wgslsmith_mult_i32(u_input.a.x ^ -13011i, max(u_input.a.x, u_input.a.x)) >> (~0u % 32u)));
    global2 = _wgslsmith_f_op_f32(580f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, true)))) - _wgslsmith_f_op_f32(-arg_0.x)) - arg_0.x));
    var var_2 = ~vec2<i32>(u_input.a.x, u_input.a.x);
    return !all(vec2<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), any(vec2<bool>(true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_6(_wgslsmith_f_op_vec3_f32(func_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2487f, 236f, 368f, -1000f)), func_4(func_1(true, Struct_1(33333u), Struct_1(21100u)), true, Struct_1(4294967295u)), func_1(select(false, true, true), func_1(true, Struct_1(107904u), Struct_1(0u)), func_4(Struct_1(35105u), false, Struct_1(1u))), _wgslsmith_sub_i32(2147483647i, u_input.a.x))), Struct_1(1u >> (countOneBits(1u) % 32u))) | any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false))));
    global2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1651f + 694f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(1000f)), -2162f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-1051f, -2059f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1839f, -486f)) - _wgslsmith_f_op_f32(floor(1000f))))), all(vec3<bool>(true, true, 2147483647i != _wgslsmith_sub_i32(6275i, u_input.a.x)))));
    let var_0 = func_4(func_4(func_4(Struct_1(1u), all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true)), Struct_1(_wgslsmith_add_u32(7629u, 0u))), true, Struct_1(~1u)), 6928u < select(1u, _wgslsmith_add_u32(1u, 1u), false), func_4(Struct_1(_wgslsmith_dot_vec3_u32(~vec3<u32>(18538u, 39812u, 1u), ~vec3<u32>(22242u, 1u, 52263u))), !(!all(vec3<bool>(true, false, false))), Struct_1(reverseBits(func_4(Struct_1(4294967295u), false, Struct_1(4294967295u)).a))));
    let var_1 = Struct_1(abs(~abs(reverseBits(6901u))));
    var var_2 = func_4(var_1, true, Struct_1(37342u));
    global2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1300f - 1125f))), -302f, u_input.a.x < _wgslsmith_sub_i32(62042i, u_input.a.x >> (~1046u % 32u))));
    var_2 = var_0;
    global2 = 744f;
    let x = u_input.a;
    s_output = StorageBuffer(select(vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.a, 4294967295u, 60886u, var_0.a), vec4<u32>(var_2.a, var_0.a, var_2.a, var_1.a)), vec4<u32>(var_0.a, var_2.a, var_0.a, var_2.a)), func_2(), _wgslsmith_mod_u32(4294967295u, max(4294967295u, 23047u))), vec3<u32>(1u, _wgslsmith_sub_u32(var_0.a, countOneBits(var_0.a)), var_0.a), select(vec3<bool>(all(vec4<bool>(true, false, true, false)), true, true), vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), vec3<bool>(true, false, false), vec3<bool>(true, true, true)))), vec2<u32>(46830u, func_1(func_4(Struct_1(31220u), false, var_0).a <= 4294967295u, func_4(var_1, true, var_0), var_0).a), _wgslsmith_f_op_f32(1390f + _wgslsmith_f_op_vec4_f32(func_3(var_1, var_2.a, vec4<bool>(any(vec4<bool>(true, true, true, true)), true, all(vec2<bool>(false, false)), true))).x), u_input.a.x);
}

