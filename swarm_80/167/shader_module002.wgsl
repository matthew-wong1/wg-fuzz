struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: i32,
    d: f32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-634f, vec2<i32>(78092i, 1i), 2147483647i, -436f, vec3<bool>(false, true, true));

var<private> global1: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(473f, vec2<i32>(0i, 2147483647i), 27851i, -680f, vec3<bool>(false, true, false)), Struct_1(-1342f, vec2<i32>(-1i, -6568i), i32(-2147483648), -289f, vec3<bool>(true, false, true)), Struct_1(3318f, vec2<i32>(i32(-2147483648), i32(-2147483648)), 1058i, 268f, vec3<bool>(false, false, false)), Struct_1(1000f, vec2<i32>(10798i, 22230i), 2147483647i, 152f, vec3<bool>(false, false, false)), Struct_1(345f, vec2<i32>(6137i, 0i), 2147483647i, 1000f, vec3<bool>(true, true, true)), Struct_1(335f, vec2<i32>(15076i, 0i), 2147483647i, -1686f, vec3<bool>(true, true, true)), Struct_1(1487f, vec2<i32>(30460i, 89832i), 1i, 276f, vec3<bool>(true, false, false)), Struct_1(502f, vec2<i32>(0i, -15287i), i32(-2147483648), -385f, vec3<bool>(false, true, true)), Struct_1(1480f, vec2<i32>(0i, 0i), -50662i, 1000f, vec3<bool>(true, true, true)), Struct_1(-979f, vec2<i32>(17189i, -1i), -35678i, -820f, vec3<bool>(false, false, false)), Struct_1(788f, vec2<i32>(i32(-2147483648), i32(-2147483648)), 2147483647i, -1000f, vec3<bool>(false, false, true)), Struct_1(2380f, vec2<i32>(38107i, 39326i), 31995i, -354f, vec3<bool>(false, true, true)), Struct_1(1218f, vec2<i32>(i32(-2147483648), i32(-2147483648)), 14773i, 1035f, vec3<bool>(false, true, true)), Struct_1(-1150f, vec2<i32>(32284i, -6451i), 1i, 1050f, vec3<bool>(false, true, false)), Struct_1(-840f, vec2<i32>(i32(-2147483648), -1i), -13215i, 1000f, vec3<bool>(true, false, false)), Struct_1(1000f, vec2<i32>(i32(-2147483648), i32(-2147483648)), 32276i, 1000f, vec3<bool>(false, true, false)), Struct_1(-376f, vec2<i32>(24927i, 4244i), 6653i, 2331f, vec3<bool>(true, false, false)), Struct_1(593f, vec2<i32>(1i, 2147483647i), 26400i, 289f, vec3<bool>(false, false, false)), Struct_1(1263f, vec2<i32>(2147483647i, -45665i), -1i, 491f, vec3<bool>(false, true, true)), Struct_1(196f, vec2<i32>(-17248i, 58119i), -1i, -1041f, vec3<bool>(false, true, true)), Struct_1(650f, vec2<i32>(2147483647i, -13160i), 15761i, -154f, vec3<bool>(false, true, false)), Struct_1(-612f, vec2<i32>(23064i, 0i), 22043i, 842f, vec3<bool>(false, false, false)), Struct_1(130f, vec2<i32>(16926i, -1i), -2367i, 335f, vec3<bool>(true, false, true)), Struct_1(-1638f, vec2<i32>(-1i, 25868i), 1i, -414f, vec3<bool>(false, true, false)), Struct_1(325f, vec2<i32>(0i, 2147483647i), 1i, -1121f, vec3<bool>(true, false, true)), Struct_1(-1000f, vec2<i32>(-26327i, 1i), -29490i, -198f, vec3<bool>(true, true, true)), Struct_1(204f, vec2<i32>(61890i, -9293i), -10550i, 761f, vec3<bool>(true, false, true)), Struct_1(450f, vec2<i32>(-56395i, 22684i), -18246i, 345f, vec3<bool>(false, false, true)), Struct_1(-1415f, vec2<i32>(-27823i, 47981i), 2147483647i, 943f, vec3<bool>(true, false, false)));

var<private> global2: array<Struct_1, 18>;

var<private> global3: array<vec4<u32>, 26> = array<vec4<u32>, 26>(vec4<u32>(117808u, 110130u, 0u, 0u), vec4<u32>(1u, 1u, 1042u, 40262u), vec4<u32>(4294967295u, 38696u, 50080u, 0u), vec4<u32>(1u, 5798u, 1u, 54020u), vec4<u32>(19789u, 0u, 0u, 4114u), vec4<u32>(4294967295u, 17294u, 1u, 4294967295u), vec4<u32>(59985u, 4294967295u, 9998u, 33683u), vec4<u32>(0u, 33113u, 57562u, 1u), vec4<u32>(34127u, 38877u, 6758u, 34849u), vec4<u32>(15171u, 8250u, 30591u, 46241u), vec4<u32>(1u, 33909u, 45818u, 1u), vec4<u32>(65478u, 1u, 1u, 1033u), vec4<u32>(0u, 31545u, 17516u, 1u), vec4<u32>(0u, 4294967295u, 9111u, 9831u), vec4<u32>(4294967295u, 40473u, 80391u, 4294967295u), vec4<u32>(4294967295u, 13324u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 29529u, 155197u, 0u), vec4<u32>(0u, 0u, 16743u, 65588u), vec4<u32>(4294967295u, 1u, 19486u, 47701u), vec4<u32>(4294967295u, 3129u, 4294967295u, 36267u), vec4<u32>(76849u, 0u, 22971u, 58825u), vec4<u32>(40655u, 758u, 10578u, 1u), vec4<u32>(32325u, 90933u, 42668u, 6457u), vec4<u32>(40379u, 28772u, 42569u, 26056u), vec4<u32>(75958u, 1u, 59909u, 4294967295u), vec4<u32>(4294967295u, 1u, 12623u, 0u));

var<private> global4: array<f32, 7> = array<f32, 7>(707f, 139f, 471f, 315f, 870f, 516f, 1166f);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    global4 = array<f32, 7>();
    global2 = array<Struct_1, 18>();
    var var_0 = vec4<u32>(~1u, 4294967295u, firstLeadingBit(0u), u_input.a.x);
    let var_1 = global2[_wgslsmith_index_u32(~var_0.x, 18u)];
    let var_2 = _wgslsmith_f_op_f32(floor(-415f));
    return u_input.a.x;
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = 276f;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_2.a, _wgslsmith_f_op_f32(arg_2.d * arg_2.d)))) + arg_2.a), vec2<i32>(-9534i, -global0.b.x << (func_3(true, Struct_1(3213f, global0.b, -1i, -1964f, arg_2.e), Struct_1(global4[_wgslsmith_index_u32(u_input.a.x, 7u)], arg_1.b, 15671i, global0.d, vec3<bool>(true, false, arg_0.x))) % 32u)), 46941i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(580f, 304f, global0.e.x))))), select(select(vec3<bool>(any(vec4<bool>(global0.e.x, true, global0.e.x, arg_0.x)), select(arg_0.x, false, false), arg_1.e.x), select(arg_1.e, global0.e, arg_0.x & arg_0.x), all(select(arg_2.e, global0.e, global0.e))), !(!(!arg_1.e)), false));
    var var_2 = arg_2;
    let var_3 = global0.a;
    let var_4 = vec2<i32>(-13415i, 1i);
    return var_1;
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> vec2<i32> {
    var var_0 = (i32(-1i) * -(select(global0.b.x, global0.b.x, global0.e.x) << (u_input.a.x % 32u))) <= _wgslsmith_add_i32(-2147483647i, _wgslsmith_mult_i32(firstLeadingBit(select(arg_1.b.x, arg_1.b.x, false)), global0.b.x));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d) * arg_1.a);
    global2 = array<Struct_1, 18>();
    global4 = array<f32, 7>();
    global1 = array<Struct_1, 29>();
    return _wgslsmith_add_vec2_i32(((max(vec2<i32>(global0.c, arg_1.b.x), vec2<i32>(global0.b.x, -1i)) << (~vec2<u32>(u_input.a.x, 0u) % vec2<u32>(32u))) >> (vec2<u32>(arg_0, ~85114u) % vec2<u32>(32u))) | func_2(vec2<bool>(global0.e.x, true), Struct_1(var_1, vec2<i32>(-1i, arg_1.b.x), -6722i ^ global0.b.x, _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(u_input.a.x, 7u)]), func_2(vec2<bool>(global0.e.x, arg_1.e.x), Struct_1(149f, vec2<i32>(-1i, arg_1.c), arg_1.c, global4[_wgslsmith_index_u32(75585u, 7u)], vec3<bool>(false, arg_1.e.x, arg_1.e.x)), arg_1).e), Struct_1(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(arg_0, 7u)] - -490f), vec2<i32>(arg_1.c, 18282i), -1i, _wgslsmith_f_op_f32(-var_1), func_2(vec2<bool>(global0.e.x, arg_1.e.x), Struct_1(155f, arg_1.b, -63233i, arg_1.a, vec3<bool>(true, false, true)), global1[_wgslsmith_index_u32(arg_0, 29u)]).e)).b, global0.b);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    let var_0 = Struct_1(1493f, vec2<i32>(_wgslsmith_div_i32(-1i, arg_1.c), firstTrailingBit(-15070i)), ~_wgslsmith_mult_i32(0i, min(-2147483647i, -arg_0.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(17713u, 7u)] - arg_1.a)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_0.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(883f * global4[_wgslsmith_index_u32(u_input.a.x, 7u)]) * global4[_wgslsmith_index_u32(1u, 7u)]))), global0.e);
    let var_1 = 34039u;
    let var_2 = Struct_1(arg_1.d, -_wgslsmith_sub_vec2_i32(abs(vec2<i32>(-2488i, -16958i)) & (vec2<i32>(arg_0.b.x, 1i) >> (u_input.a % vec2<u32>(32u))), func_4(1u, func_2(vec2<bool>(false, true), global2[_wgslsmith_index_u32(54019u, 18u)], Struct_1(arg_0.d, vec2<i32>(68992i, 35212i), -2605i, global0.d, vec3<bool>(true, global0.e.x, false))))), global0.b.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(arg_0.a)))), !(!vec3<bool>(true, false, any(vec2<bool>(true, arg_2.e.x)))));
    var var_3 = _wgslsmith_add_i32(firstTrailingBit(_wgslsmith_clamp_i32(firstTrailingBit(var_0.b.x), _wgslsmith_clamp_i32(~2147483647i, arg_2.b.x, arg_1.c), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, var_2.b.x, 668i, arg_2.c), vec4<i32>(arg_1.b.x, arg_0.b.x, global0.b.x, var_0.b.x)) | ~6385i)), global0.c);
    let var_4 = min(vec4<u32>(u_input.a.x, 4033u, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(21499u, 0u, u_input.a.x, u_input.a.x), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, var_1, 1u), vec4<u32>(var_1, 63752u, 4294967295u, u_input.a.x)))), _wgslsmith_mod_u32(u_input.a.x >> (4294967295u % 32u), ~_wgslsmith_div_u32(u_input.a.x, 7912u))), global3[_wgslsmith_index_u32(firstLeadingBit(max(1u, (u_input.a.x | u_input.a.x) << (64068u % 32u))), 26u)]);
    return !global0.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 18>();
    global4 = array<f32, 7>();
    var var_0 = global1[_wgslsmith_index_u32(u_input.a.x, 29u)];
    global0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) + var_0.d) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.d * 108f), -354f)) * -501f)), var_0.b, -(~(-2147483647i)), _wgslsmith_f_op_f32(ceil(-296f)), vec3<bool>(global0.e.x, func_1(Struct_1(_wgslsmith_f_op_f32(-global0.d), vec2<i32>(var_0.b.x, -1i), global0.c | var_0.b.x, global0.d, !global0.e), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(9682u, 4294967295u, 0u), 76630u << (u_input.a.x % 32u)), 18u)], global2[_wgslsmith_index_u32(77531u, 18u)]), global0.e.x));
    global0 = func_2(!global0.e.zz, global1[_wgslsmith_index_u32(u_input.a.x, 29u)], global1[_wgslsmith_index_u32(func_3(all(select(select(global0.e, vec3<bool>(global0.e.x, false, true), var_0.e.x), var_0.e, global0.d >= -447f)), Struct_1(func_2(vec2<bool>(true, true), func_2(vec2<bool>(var_0.e.x, global0.e.x), Struct_1(global4[_wgslsmith_index_u32(1u, 7u)], vec2<i32>(var_0.c, -4584i), -23416i, global0.a, vec3<bool>(global0.e.x, var_0.e.x, true)), global2[_wgslsmith_index_u32(u_input.a.x, 18u)]), Struct_1(-1000f, global0.b, 1008i, -1173f, var_0.e)).a, vec2<i32>(15191i, -1i) << (_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, 35950u), u_input.a) % vec2<u32>(32u)), 1i, _wgslsmith_f_op_f32(func_2(global0.e.xx, global1[_wgslsmith_index_u32(u_input.a.x, 29u)], global2[_wgslsmith_index_u32(u_input.a.x, 18u)]).d + _wgslsmith_f_op_f32(-global0.a)), vec3<bool>(any(var_0.e.zz), var_0.e.x, global0.b.x < var_0.b.x)), Struct_1(-1531f, firstTrailingBit(var_0.b ^ vec2<i32>(10651i, 2147483647i)), 1i, -201f, !(!vec3<bool>(true, var_0.e.x, false)))), 29u)]);
    global2 = array<Struct_1, 18>();
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1418f))), vec2<i32>((i32(-1i) * -27736i) << ((~u_input.a.x ^ _wgslsmith_mod_u32(0u, u_input.a.x)) % 32u), 2147483647i), ~global0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a - -985f) + -612f), vec3<bool>(!(min(78516u, u_input.a.x) != _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(102818u, 4294967295u, u_input.a.x))), !any(vec3<bool>(false, true, false)), false));
    let var_1 = Struct_1(global4[_wgslsmith_index_u32(0u, 7u)], select(_wgslsmith_mult_vec2_i32(firstTrailingBit(global0.b), -(~vec2<i32>(23213i, var_0.c))), countOneBits(vec2<i32>(global0.c, global0.b.x)) >> (~u_input.a % vec2<u32>(32u)), vec2<bool>(var_0.e.x, func_2(vec2<bool>(true, false), global2[_wgslsmith_index_u32(firstTrailingBit(u_input.a.x), 18u)], func_2(var_0.e.zz, global1[_wgslsmith_index_u32(4294967295u, 29u)], Struct_1(var_0.d, vec2<i32>(global0.b.x, global0.c), global0.b.x, 1188f, var_0.e))).e.x)), ~func_2(vec2<bool>(true, true), Struct_1(692f, var_0.b, 2147483647i, 1074f, global0.e), Struct_1(1000f, var_0.b, 30616i, global4[_wgslsmith_index_u32(u_input.a.x, 7u)], vec3<bool>(true, var_0.e.x, true))).c & (-35331i | firstTrailingBit(func_4(u_input.a.x, Struct_1(-150f, vec2<i32>(var_0.b.x, global0.c), -42519i, global0.d, var_0.e)).x)), -1000f, vec3<bool>(var_0.e.x || func_1(Struct_1(1217f, vec2<i32>(-10773i, 0i), -2147483647i, -386f, var_0.e), Struct_1(var_0.d, var_0.b, 19054i, global0.a, vec3<bool>(global0.e.x, global0.e.x, true)), Struct_1(global0.a, vec2<i32>(-1i, 0i), global0.c, -1392f, var_0.e)), (1u < ~u_input.a.x) && global0.e.x, select(func_2(func_2(var_0.e.xx, global1[_wgslsmith_index_u32(u_input.a.x, 29u)], global2[_wgslsmith_index_u32(34009u, 18u)]).e.zz, Struct_1(494f, global0.b, 0i, global4[_wgslsmith_index_u32(1u, 7u)], vec3<bool>(var_0.e.x, true, global0.e.x)), global2[_wgslsmith_index_u32(1u, 18u)]).e.x, false, !(u_input.a.x >= u_input.a.x))));
    let var_2 = func_2(!var_0.e.zz, global2[_wgslsmith_index_u32(u_input.a.x, 18u)], func_2(select(var_1.e.xz, vec2<bool>(func_2(var_0.e.zy, Struct_1(global0.a, vec2<i32>(var_0.b.x, -2147483647i), var_1.b.x, var_1.a, var_0.e), Struct_1(global4[_wgslsmith_index_u32(u_input.a.x, 7u)], var_0.b, -80946i, -1051f, vec3<bool>(false, global0.e.x, true))).e.x, all(var_0.e)), !var_0.e.zy), global1[_wgslsmith_index_u32(4294967295u, 29u)], func_2(vec2<bool>(select(false, false, global0.e.x), 29262u == u_input.a.x), Struct_1(-621f, firstTrailingBit(vec2<i32>(var_0.c, var_0.b.x)), -1462i << (u_input.a.x % 32u), _wgslsmith_f_op_f32(-var_0.a), var_1.e), func_2(var_0.e.yx, func_2(var_0.e.zx, Struct_1(var_0.d, vec2<i32>(-1i, var_1.c), var_1.c, var_0.a, vec3<bool>(var_1.e.x, true, var_0.e.x)), global1[_wgslsmith_index_u32(u_input.a.x, 29u)]), func_2(var_1.e.xy, Struct_1(var_1.d, var_0.b, 2147483647i, 651f, var_1.e), global1[_wgslsmith_index_u32(4294967295u, 29u)])))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(var_2.c, -85332i), ~var_1.b.x, var_1.c, vec4<u32>(u_input.a.x & 142646u, 1u, 7496u, u_input.a.x), countOneBits(u_input.a.x));
}

