struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: u32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec2<u32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_2,
}

struct Struct_5 {
    a: vec4<u32>,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 2>;

var<private> global1: array<vec2<f32>, 11>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_3, arg_1: i32) -> vec2<bool> {
    let var_0 = 12778u;
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1015f, -1936f, -892f, 338f) + vec4<f32>(-2170f, 1082f, -545f, 369f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(213f, 595f, 718f, -1000f) * vec4<f32>(-640f, 2675f, -417f, 215f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-624f, 764f, 437f, -324f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(582f + -268f) + _wgslsmith_f_op_f32(477f * -644f)), _wgslsmith_f_op_f32(min(646f, _wgslsmith_f_op_f32(-224f - 477f))), _wgslsmith_f_op_f32(sign(-417f)), _wgslsmith_f_op_f32(f32(-1f) * -3916f))));
    var var_2 = 696f;
    var var_3 = max(u_input.a, select(_wgslsmith_add_i32(u_input.a, 1i), arg_0.a.a, 93623u == firstTrailingBit(u_input.c.x))) ^ -arg_1;
    let var_4 = var_1;
    return select(select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), true))), vec2<bool>(true | any(vec2<bool>(false, true)), true), select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(false, false), all(vec2<bool>(true, false))), vec2<bool>(true, true))), vec2<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)), false), vec2<bool>(false, (_wgslsmith_f_op_f32(var_4.x - -616f) >= _wgslsmith_f_op_f32(sign(934f))) || (all(vec3<bool>(true, true, false)) || false)));
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-369f, -517f)), _wgslsmith_f_op_f32(abs(-374f)), false)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-1443f))))))));
    let var_1 = all(!func_3(Struct_3(Struct_2(-10713i), u_input.c.x ^ u_input.b, u_input.c), 2147483647i));
    var var_2 = Struct_1(vec4<bool>(var_1, all(!vec4<bool>(var_1, false, true, false)), !(!var_1), false), select(abs(_wgslsmith_div_vec2_u32(u_input.c, u_input.c)), u_input.c, vec2<bool>(var_1, var_1 && false)), _wgslsmith_mod_u32(u_input.d, ~(~23026u)));
    let var_3 = Struct_1(var_2.a, ~_wgslsmith_div_vec2_u32(var_2.b, _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 1u), u_input.c)) & _wgslsmith_mult_vec2_u32(~(~u_input.c), ~firstLeadingBit(vec2<u32>(var_2.b.x, u_input.b))), var_2.c);
    let var_4 = var_3;
    return Struct_2(-1i);
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: bool) -> bool {
    let var_0 = func_3(Struct_3(Struct_2(abs(~arg_0.a)), ~46462u, vec2<u32>(0u, _wgslsmith_mod_u32(32832u, u_input.d))), i32(-1i) * -2147483647i);
    return arg_1;
}

fn func_5(arg_0: bool, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: Struct_2) -> Struct_3 {
    global0 = array<vec3<i32>, 2>();
    global1 = array<vec2<f32>, 11>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1f))));
    var var_1 = abs(_wgslsmith_add_vec3_i32(global0[_wgslsmith_index_u32(arg_2.b.x, 2u)], countOneBits(select(global0[_wgslsmith_index_u32(arg_2.c, 2u)], vec3<i32>(arg_3.a, 12972i, -2147483647i), vec3<bool>(arg_2.a.x, false, arg_0)) & firstLeadingBit(global0[_wgslsmith_index_u32(u_input.d, 2u)]))));
    let var_2 = _wgslsmith_clamp_u32(arg_2.c, _wgslsmith_dot_vec4_u32(reverseBits(_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_2.b.x, 0u, 1440u, 1u), vec4<u32>(arg_2.b.x, 8424u, u_input.b, u_input.c.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.c, 1u, 1u, 38801u), vec4<u32>(46732u, 51776u, 0u, arg_2.b.x)), ~vec4<u32>(arg_2.b.x, 0u, 60480u, 55854u))), vec4<u32>(~arg_2.b.x, ~firstLeadingBit(4294967295u), min(u_input.c.x, 1u), arg_2.c)), select(arg_2.b.x, _wgslsmith_add_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 0u), vec2<u32>(0u, 0u)), _wgslsmith_add_u32(countOneBits(arg_2.b.x), ~u_input.c.x)), !arg_0));
    return Struct_3(func_2(), ~u_input.c.x, arg_2.b);
}

fn func_1(arg_0: vec3<f32>, arg_1: u32, arg_2: Struct_2) -> bool {
    global1 = array<vec2<f32>, 11>();
    var var_0 = func_5(func_4(func_2(), !all(vec2<bool>(false, true)), !(4294967295u != arg_1) && func_3(Struct_3(Struct_2(arg_2.a), 4294967295u, u_input.c), u_input.e).x), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true))), Struct_1(vec4<bool>(true, !func_4(Struct_2(7062i), false, false), false, all(vec4<bool>(true, true, true, false)) && any(vec4<bool>(true, false, false, true))), u_input.c, 16029u), Struct_2(arg_2.a));
    global1 = array<vec2<f32>, 11>();
    let var_1 = 59653u;
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(647f, -922f, -1000f, arg_0.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1057f, arg_0.x, arg_0.x, -2820f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1351f, -2133f, arg_0.x, 1126f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1062f, -262f, 642f, -773f))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(277f)) + arg_0.x) * _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(1455f + -491f))), -479f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -249f) + arg_0.x), 395f), -191f), func_3(Struct_3(func_2(), 1u, (u_input.c ^ var_0.c) | vec2<u32>(0u, 47632u)), var_0.a.a).x));
    return true;
}

fn func_6(arg_0: vec3<i32>, arg_1: i32, arg_2: vec3<bool>) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(835f, _wgslsmith_f_op_f32(select(-1573f, -240f, func_1(vec3<f32>(-494f, -968f, -411f), u_input.c.x, Struct_2(u_input.e))))) - 351f)));
    return ~_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, reverseBits(42219u), ~38587u, ~u_input.d), select(vec4<u32>(u_input.b, 0u, 1u, 1u), vec4<u32>(u_input.d, u_input.c.x, 4294967295u, u_input.b), any(vec4<bool>(arg_2.x, true, false, arg_2.x)))), ~vec4<u32>(~12717u, ~u_input.d, 1u, 17095u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<f32>, 11>();
    let var_0 = func_6(global0[_wgslsmith_index_u32(u_input.d, 2u)] >> (_wgslsmith_clamp_vec3_u32(~min(vec3<u32>(44853u, u_input.d, u_input.b), vec3<u32>(0u, u_input.c.x, u_input.d)), vec3<u32>(1u, ~u_input.d, select(u_input.d, u_input.b, true)), vec3<u32>(72692u, u_input.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 1u, u_input.b), vec4<u32>(38851u, u_input.d, 5687u, u_input.b)))) % vec3<u32>(32u)), 1i, select(vec3<bool>(false, false, u_input.e == select(u_input.a, u_input.e, true)), select(vec3<bool>(func_1(vec3<f32>(345f, -991f, 1074f), 37394u, Struct_2(-24617i)), true, true), !select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false)))), select(vec3<bool>(all(vec3<bool>(true, true, true)), true, 9798u > u_input.c.x), vec3<bool>(true, true, true), !(u_input.a >= -35445i))));
    let var_1 = ~u_input.a;
    var var_2 = Struct_5(_wgslsmith_div_vec4_u32(var_0, var_0), true, var_0.x);
    global0 = array<vec3<i32>, 2>();
    global0 = array<vec3<i32>, 2>();
    let var_3 = !vec4<bool>(var_2.b, func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(168f, -262f, -1000f))), countOneBits(4294967295u), Struct_2(firstTrailingBit(-20026i))), true | all(vec4<bool>(var_2.b, var_2.b, var_2.b, false)), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(u_input.e, _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(2147483647i, -1i, u_input.e, 14101i)) ^ -vec4<i32>(var_1, u_input.e, 44066i, 55579i), select(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, -2147483647i, var_1, u_input.a), vec4<i32>(2147483647i, 2147483647i, 6694i, -1i)), reverseBits(vec4<i32>(-2147483647i, 1i, -2147483647i, 0i)), !var_3))), ~u_input.c.x, vec3<u32>(~func_5(func_1(vec3<f32>(1769f, 1507f, -690f), var_2.c, Struct_2(u_input.a)), select(var_3.zzz, vec3<bool>(true, true, var_2.b), var_2.b), Struct_1(var_3, var_0.yx, var_0.x), func_5(true, var_3.xzz, Struct_1(var_3, var_2.a.zx, var_0.x), Struct_2(u_input.a)).a).b, _wgslsmith_dot_vec3_u32(vec3<u32>(29641u, select(73016u, var_2.a.x, false), 4294967295u), _wgslsmith_mult_vec3_u32(vec3<u32>(44892u, 0u, var_0.x) | vec3<u32>(13462u, var_2.c, var_2.a.x), ~vec3<u32>(var_0.x, 60523u, 0u))), func_5(func_3(func_5(false, var_3.yzz, Struct_1(vec4<bool>(true, var_3.x, var_3.x, var_3.x), var_0.yy, u_input.c.x), Struct_2(1i)), select(u_input.a, var_1, var_2.b)).x, !vec3<bool>(false, false, var_2.b), Struct_1(vec4<bool>(var_2.b, var_2.b, var_3.x, true), u_input.c ^ var_2.a.yw, firstTrailingBit(42196u)), Struct_2(48457i | u_input.e)).c.x), global0[_wgslsmith_index_u32(var_0.x, 2u)]);
}

