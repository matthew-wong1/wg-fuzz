struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: u32,
}

struct Struct_3 {
    a: f32,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 23>;

var<private> global1: array<vec2<i32>, 8> = array<vec2<i32>, 8>(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-15082i, 0i), vec2<i32>(1i, 0i), vec2<i32>(-1i, 19119i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(-491i, 1i), vec2<i32>(-1i, -5082i), vec2<i32>(-29186i, 51258i));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> f32 {
    global0 = array<bool, 23>();
    var var_0 = vec3<bool>(true, !global0[_wgslsmith_index_u32(~reverseBits(4294967295u), 23u)], true);
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-304f + -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(248f, 1228f))))));
}

fn func_2() -> Struct_2 {
    let var_0 = 1i;
    let var_1 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * -452f), _wgslsmith_f_op_f32(trunc(471f))), select(1u & abs(~u_input.a), _wgslsmith_clamp_u32(~0u, firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 4294967295u, u_input.d), vec3<u32>(32325u, u_input.d, 6210u))), ~u_input.d), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(u_input.d) >> (34376u % 32u), ~reverseBits(56195u)), 23u)]), u_input.a);
    global1 = array<vec2<i32>, 8>();
    global1 = array<vec2<i32>, 8>();
    var var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.a, 479f, var_1.a), vec3<f32>(var_1.a, var_1.a, var_1.a), vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 23u)], global0[_wgslsmith_index_u32(50646u, 23u)]))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1535f, 1000f, 1304f)), vec3<f32>(1374f, -1000f, 1475f), select(vec3<bool>(false, true, global0[_wgslsmith_index_u32(var_1.c, 23u)]), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(1u, 23u)], global0[_wgslsmith_index_u32(var_1.c, 23u)]), global0[_wgslsmith_index_u32(4294967295u, 23u)]))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(var_1.a)), _wgslsmith_f_op_f32(-1116f - var_1.a), _wgslsmith_f_op_f32(-123f + -883f)) + vec3<f32>(_wgslsmith_f_op_f32(sign(-942f)), _wgslsmith_f_op_f32(f32(-1f) * -557f), _wgslsmith_f_op_f32(-var_1.a))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a, var_1.a) * 780f), _wgslsmith_f_op_f32(ceil(-643f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, var_1.a) * _wgslsmith_f_op_f32(var_1.a - var_1.a))))));
    return var_1;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>) -> f32 {
    var var_0 = Struct_3(-205f, u_input.b, _wgslsmith_mult_vec2_u32(arg_1, ~arg_1 | ~arg_1));
    var_0 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -674f), u_input.c, var_0.c);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -297f))));
    var var_2 = vec4<bool>(true, !all(!(!vec2<bool>(global0[_wgslsmith_index_u32(arg_0.b, 23u)], global0[_wgslsmith_index_u32(1u, 23u)]))), true | (all(!vec4<bool>(false, global0[_wgslsmith_index_u32(arg_0.c, 23u)], global0[_wgslsmith_index_u32(0u, 23u)], false)) && (_wgslsmith_f_op_f32(func_3()) == var_0.a)), -24915i < countOneBits(~(~u_input.b.x)));
    let var_3 = 1i;
    return var_0.a;
}

fn func_5(arg_0: f32, arg_1: i32, arg_2: Struct_1) -> Struct_2 {
    return func_2();
}

fn func_6(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: f32, arg_3: vec2<bool>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-arg_0), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, -938f, 507f, 1087f))), _wgslsmith_div_vec4_f32(vec4<f32>(-879f, func_5(arg_2, u_input.e.x, Struct_1(2431f)).a, 347f, _wgslsmith_f_op_f32(f32(-1f) * -1610f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-125f, 912f, -1064f, arg_2)) - arg_0)))), false));
    global0 = array<bool, 23>();
    return Struct_3(-212f, vec4<i32>(_wgslsmith_mult_i32(0i, u_input.c.x), 1i, u_input.c.x << (arg_1.c % 32u), min(u_input.c.x, reverseBits(u_input.b.x) & abs(1056i))), vec2<u32>(~abs(~arg_1.b), firstLeadingBit(1u)));
}

fn func_1() -> Struct_3 {
    global0 = array<bool, 23>();
    let var_0 = func_6(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1296f, 140f, 1000f, 1258f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(2281f, 1439f, 617f, -1277f)))), func_5(_wgslsmith_f_op_f32(func_4(func_2(), firstLeadingBit(min(vec2<u32>(u_input.d, u_input.d), vec2<u32>(u_input.d, u_input.d))))), ~countOneBits(1i), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(404f))))), _wgslsmith_f_op_f32(sign(318f)), select(vec2<bool>(false, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(54430u, 1u), 23u)] & global0[_wgslsmith_index_u32(1u, 23u)]), select(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.d, 23u)], global0[_wgslsmith_index_u32(4294967295u, 23u)]), select(select(vec2<bool>(false, true), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(11313u, 23u)]), global0[_wgslsmith_index_u32(1u, 23u)]), vec2<bool>(true, true), all(vec3<bool>(global0[_wgslsmith_index_u32(47581u, 23u)], global0[_wgslsmith_index_u32(1u, 23u)], false))), true), vec2<bool>(true, _wgslsmith_div_u32(28986u, 34207u) != u_input.d)));
    var var_1 = func_6(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1495f - var_0.a), _wgslsmith_f_op_f32(abs(var_0.a)), _wgslsmith_f_op_f32(floor(var_0.a)), func_2().a) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1205f, -640f, 765f)))))), Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2052f))), _wgslsmith_f_op_f32(-352f - var_0.a)), ~(~0u) << (u_input.d % 32u), u_input.a), _wgslsmith_f_op_f32(func_4(Struct_2(-876f, _wgslsmith_sub_u32(0u, var_0.c.x) | _wgslsmith_add_u32(10009u, 6272u), u_input.a), ~vec2<u32>(firstTrailingBit(u_input.d), var_0.c.x))), !vec2<bool>(all(vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 23u)])), false));
    let var_2 = vec2<i32>(-10059i, var_0.b.x);
    let var_3 = var_0;
    return Struct_3(-476f, -vec4<i32>(reverseBits(~var_2.x), ~(-2147483647i), _wgslsmith_mod_i32(var_2.x, ~38552i), u_input.e.x), vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c.x, 0u, 69565u), ~vec3<u32>(var_0.c.x, 4294967295u, 4294967295u)), abs(~2559u)), 0u));
}

fn func_7(arg_0: Struct_3, arg_1: Struct_2) -> Struct_2 {
    return func_5(490f, -25548i, Struct_1(438f));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<i32>, 8>();
    global0 = array<bool, 23>();
    global0 = array<bool, 23>();
    global1 = array<vec2<i32>, 8>();
    let var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1537f, _wgslsmith_f_op_f32(-1f))), 1000f), _wgslsmith_f_op_f32(-532f - -689f));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-637f, 933f))))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -741f)), vec2<f32>(var_0.x, 837f), true)))));
    var var_2 = func_7(func_1(), Struct_2(var_1.x, 1u, 15855u));
    global0 = array<bool, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_div_i32((i32(-1i) * -7810i) & -u_input.c.x, 12486i), 0i), var_0.x);
}

