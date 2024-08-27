struct Struct_1 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: f32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(Struct_1(true, vec2<u32>(51081u, 51870u)), true, -1132f, vec3<f32>(1000f, 322f, 1368f)), Struct_3(Struct_1(true, vec2<u32>(613u, 8916u)), false, -1316f, vec3<f32>(-122f, -1137f, -170f)), Struct_3(Struct_1(false, vec2<u32>(39721u, 1u)), true, 894f, vec3<f32>(-744f, 2341f, 909f)), Struct_3(Struct_1(true, vec2<u32>(13863u, 1u)), false, 208f, vec3<f32>(-219f, -1030f, 1360f)), Struct_3(Struct_1(false, vec2<u32>(23856u, 1u)), true, 1284f, vec3<f32>(-1547f, -1228f, -303f)), Struct_3(Struct_1(true, vec2<u32>(0u, 4294967295u)), true, -1667f, vec3<f32>(982f, -1055f, 290f)), Struct_3(Struct_1(false, vec2<u32>(17330u, 80772u)), false, 1443f, vec3<f32>(1244f, 262f, 205f)), Struct_3(Struct_1(true, vec2<u32>(36778u, 28051u)), true, 1496f, vec3<f32>(1308f, -576f, 1571f)), Struct_3(Struct_1(true, vec2<u32>(0u, 7283u)), true, -3446f, vec3<f32>(1423f, -1182f, 371f)), Struct_3(Struct_1(false, vec2<u32>(4294967295u, 1u)), false, 732f, vec3<f32>(405f, 1000f, -1204f)), Struct_3(Struct_1(false, vec2<u32>(0u, 1u)), true, -625f, vec3<f32>(483f, 207f, -1483f)), Struct_3(Struct_1(false, vec2<u32>(0u, 0u)), true, 145f, vec3<f32>(866f, -549f, -2238f)), Struct_3(Struct_1(false, vec2<u32>(42258u, 0u)), false, -532f, vec3<f32>(-1331f, 139f, 244f)), Struct_3(Struct_1(false, vec2<u32>(38358u, 53471u)), true, -693f, vec3<f32>(-440f, 908f, 1678f)), Struct_3(Struct_1(true, vec2<u32>(1u, 0u)), false, 1312f, vec3<f32>(584f, 417f, 320f)), Struct_3(Struct_1(true, vec2<u32>(67581u, 4294967295u)), true, -656f, vec3<f32>(1478f, 1363f, 518f)), Struct_3(Struct_1(true, vec2<u32>(23079u, 4294967295u)), false, 259f, vec3<f32>(-801f, 723f, 404f)), Struct_3(Struct_1(true, vec2<u32>(4967u, 13414u)), false, -780f, vec3<f32>(-282f, 1015f, 1000f)), Struct_3(Struct_1(true, vec2<u32>(0u, 15713u)), true, -339f, vec3<f32>(-846f, 1255f, -1095f)));

var<private> global1: array<vec4<u32>, 13> = array<vec4<u32>, 13>(vec4<u32>(4294967295u, 1u, 75614u, 60015u), vec4<u32>(37504u, 112521u, 36352u, 4294967295u), vec4<u32>(26273u, 0u, 1u, 0u), vec4<u32>(1u, 21692u, 0u, 29140u), vec4<u32>(4757u, 61466u, 1u, 1u), vec4<u32>(10118u, 1u, 4294967295u, 1u), vec4<u32>(74632u, 22510u, 1u, 1u), vec4<u32>(1u, 4294967295u, 18045u, 2013u), vec4<u32>(0u, 12503u, 39100u, 4294967295u), vec4<u32>(1u, 0u, 7558u, 39936u), vec4<u32>(4610u, 51699u, 4294967295u, 32656u), vec4<u32>(21587u, 17699u, 4294967295u, 4294967295u), vec4<u32>(66255u, 6093u, 5182u, 0u));

var<private> global2: vec4<i32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: i32) -> f32 {
    global1 = array<vec4<u32>, 13>();
    global2 = ~_wgslsmith_mod_vec4_i32(firstLeadingBit(select(vec4<i32>(-2147483647i, -10319i, -6316i, global2.x), -vec4<i32>(-2147483647i, arg_0, u_input.b, global2.x), arg_0 < 31163i)), ~(-abs(vec4<i32>(arg_0, -35005i, 4860i, u_input.b))));
    global1 = array<vec4<u32>, 13>();
    let var_0 = Struct_1(any(select(!select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec2<bool>(true, true), select(true, true, arg_0 > -28615i))), vec2<u32>(select(u_input.a, u_input.a, all(vec3<bool>(false, true, true))), _wgslsmith_sub_u32(abs(u_input.a), max(4294967295u, u_input.a))) & ~(~vec2<u32>(u_input.a, u_input.a) | vec2<u32>(u_input.a, u_input.a)));
    var var_1 = all(select(!select(select(vec3<bool>(false, var_0.a, var_0.a), vec3<bool>(false, var_0.a, var_0.a), var_0.a), !vec3<bool>(var_0.a, var_0.a, false), var_0.a | var_0.a), !(!select(vec3<bool>(var_0.a, var_0.a, var_0.a), vec3<bool>(true, var_0.a, true), vec3<bool>(true, false, true))), !vec3<bool>(false, false, true & var_0.a)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(226f - -226f), _wgslsmith_f_op_f32(select(1128f, -222f, var_0.a))))))));
}

fn func_2(arg_0: vec3<bool>, arg_1: f32) -> Struct_3 {
    let var_0 = abs(abs(vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(12666u, 0u, u_input.a), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<u32>(105418u, u_input.a, 3072u))), 4294967295u & _wgslsmith_add_u32(0u, u_input.a))));
    var var_1 = -global2.x;
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(arg_1, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(global2.x)), -1000f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(sign(arg_1))), _wgslsmith_f_op_f32(-245f - _wgslsmith_f_op_f32(select(arg_1, arg_1, arg_0.x)))))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, arg_1), vec2<f32>(arg_1, 557f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, -1119f) + vec2<f32>(arg_1, arg_1))), vec2<f32>(_wgslsmith_f_op_f32(exp2(arg_1)), _wgslsmith_f_op_f32(arg_1 - arg_1)), true)))));
    let var_3 = u_input.a;
    global1 = array<vec4<u32>, 13>();
    return global0[_wgslsmith_index_u32(~(~(~1u)), 19u)];
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: vec3<i32>, arg_3: bool) -> vec4<bool> {
    var var_0 = arg_1.a;
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-282f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * arg_0.x) * _wgslsmith_f_op_f32(922f * arg_1.d.x)), 994f), arg_1.c, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-1832f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(arg_1.d.x, 970f), 1f, arg_1.d.x, _wgslsmith_f_op_f32(f32(-1f) * -848f))) - vec4<f32>(arg_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -311f)), -393f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-2581f + arg_1.c), arg_0.x)))));
    global1 = array<vec4<u32>, 13>();
    var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(func_2(select(vec3<bool>(true, true, true), !vec3<bool>(false, arg_3, arg_3), vec3<bool>(false, false, false)), _wgslsmith_f_op_f32(func_3(0i))).c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.d.x)) * arg_0.x), _wgslsmith_f_op_f32(sign(arg_0.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(678f, -441f, 893f, 594f)) * vec4<f32>(arg_0.x, arg_1.c, arg_1.c, -231f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 1537f, 1192f, 857f) * vec4<f32>(arg_1.d.x, -496f, arg_1.d.x, 1592f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_0.x + arg_1.c), _wgslsmith_f_op_f32(ceil(189f)), _wgslsmith_f_op_f32(arg_0.x + 745f), var_1.x) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.x, 1000f, arg_1.c, arg_1.c))))));
    var var_2 = -2147483647i;
    return select(vec4<bool>(arg_1.b, !var_0.a, select(any(select(vec3<bool>(var_0.a, arg_3, false), vec3<bool>(arg_1.b, false, arg_1.a.a), vec3<bool>(true, false, true))), var_0.a, false), select(arg_3, false, (var_0.a != var_0.a) & arg_3)), vec4<bool>(true, any(select(vec3<bool>(arg_3, arg_1.a.a, false), select(vec3<bool>(arg_3, false, arg_3), vec3<bool>(true, false, true), arg_3), true)), arg_3, arg_3), select(select(vec4<bool>(false, true, true, select(false, true, false)), select(select(vec4<bool>(false, arg_3, false, arg_1.a.a), vec4<bool>(arg_1.a.a, false, false, arg_3), arg_3), !vec4<bool>(arg_3, arg_3, false, arg_3), var_0.a), !vec4<bool>(arg_3, true, var_0.a, true)), !(!(!vec4<bool>(arg_1.a.a, false, false, arg_1.b))), !select(!vec4<bool>(true, var_0.a, arg_3, arg_3), select(vec4<bool>(true, false, arg_3, true), vec4<bool>(arg_1.b, true, arg_3, var_0.a), arg_1.a.a), select(vec4<bool>(arg_3, arg_3, false, arg_1.b), vec4<bool>(var_0.a, arg_3, true, true), vec4<bool>(false, false, arg_3, true)))));
}

fn func_1(arg_0: bool) -> Struct_1 {
    global2 = _wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(-u_input.b, 2147483647i, global2.x, global2.x | -2724i), vec4<i32>(u_input.b, _wgslsmith_mult_i32(select(global2.x ^ 1i, i32(-1i) * -67939i, any(vec3<bool>(false, false, true))), -51581i), min(2147483647i, ~countOneBits(u_input.b)), -global2.x));
    let var_0 = func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(284f, 318f) + vec2<f32>(-1182f, -1761f))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(681f, 471f), vec2<f32>(-1117f, 949f), vec2<bool>(arg_0, false))))))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(749f, 466f), vec2<f32>(274f, -1000f)) * _wgslsmith_div_vec2_f32(vec2<f32>(-757f, 1431f), vec2<f32>(300f, 342f)))))), func_2(vec3<bool>(false, arg_0, false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-753f + -1887f))), ~global2.xww, !arg_0 | any(select(!vec4<bool>(true, false, arg_0, arg_0), vec4<bool>(arg_0, true, arg_0, true), arg_0 | true)));
    let var_1 = func_2(var_0.wyz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(var_0.xyx, 963f).c + -426f) + 622f))).a;
    var var_2 = _wgslsmith_add_i32(2147483647i, -17681i);
    let var_3 = Struct_1(any(func_4(vec2<f32>(_wgslsmith_f_op_f32(min(-694f, -498f)), _wgslsmith_f_op_f32(f32(-1f) * -689f)), func_2(!var_0.yxy, _wgslsmith_f_op_f32(-544f - -1252f)), -global2.zxz << ((vec3<u32>(25931u, 4294967295u, u_input.a) & vec3<u32>(var_1.b.x, 31226u, 4294967295u)) % vec3<u32>(32u)), !(false == arg_0))), var_1.b >> (~(~var_1.b & vec2<u32>(u_input.a, 37079u)) % vec2<u32>(32u)));
    return Struct_1(any(select(vec4<bool>(false, func_2(vec3<bool>(var_1.a, true, var_0.x), -1000f).a.a, true, true), func_4(_wgslsmith_div_vec2_f32(vec2<f32>(1586f, -1733f), vec2<f32>(950f, 366f)), global0[_wgslsmith_index_u32(var_3.b.x, 19u)], vec3<i32>(-18888i, u_input.b, global2.x), var_1.a || false), false)), ~var_3.b);
}

fn func_5(arg_0: Struct_1) -> Struct_2 {
    global1 = array<vec4<u32>, 13>();
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-343f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f)))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1143f))))), _wgslsmith_f_op_f32(step(1000f, -827f)));
    var var_1 = vec4<i32>(~global2.x, -13492i, -abs(u_input.b), -(i32(-1i) * -1i));
    var var_2 = func_2(vec3<bool>(true, true, true), _wgslsmith_f_op_f32(exp2(var_0)));
    let var_3 = Struct_1((arg_0.b.x ^ (~var_2.a.b.x ^ _wgslsmith_sub_u32(u_input.a, u_input.a))) <= ~var_2.a.b.x, vec2<u32>(39753u, func_1(any(vec2<bool>(true, true))).b.x));
    return Struct_2(Struct_1(var_2.a.a, ~(~(~vec2<u32>(1u, arg_0.b.x)))), arg_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, -661f, -918f, var_2.c) * vec4<f32>(902f, var_0, var_0, var_0))))))), vec2<i32>(u_input.b, abs(~reverseBits(var_1.x))), Struct_1(true, _wgslsmith_div_vec2_u32(~(arg_0.b << (arg_0.b % vec2<u32>(32u))), vec2<u32>(var_2.a.b.x, 4294967295u) >> (~var_2.a.b % vec2<u32>(32u)))));
}

fn func_6(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    global2 = _wgslsmith_mod_vec4_i32(vec4<i32>(abs(arg_1.d.x | u_input.b) & ((0i | arg_1.d.x) | -32541i), 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(countOneBits(arg_1.d.x), -51775i, _wgslsmith_mult_i32(-54045i, global2.x), 41004i), max(vec4<i32>(global2.x, arg_1.d.x, 1i, arg_1.d.x), vec4<i32>(arg_1.d.x, u_input.b, u_input.b, 0i)) ^ -vec4<i32>(1i, -37236i, global2.x, -8387i)), 29454i), firstLeadingBit(vec4<i32>(select(arg_1.d.x, ~u_input.b, any(vec4<bool>(arg_2.a, false, true, true))), -57958i, 3525i, -_wgslsmith_sub_i32(global2.x, u_input.b))));
    var var_0 = global2.yxw;
    let var_1 = Struct_3(func_5(Struct_1(any(vec4<bool>(arg_2.a, arg_2.a, arg_0.b, arg_0.a.a)), _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(66092u, 60172u), arg_1.a.b), arg_2.b))).a, false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(445f)))))) * arg_1.c.x), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -691f), _wgslsmith_f_op_f32(sign(-1053f)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.c.x), 124f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1.c.x + arg_1.c.x), _wgslsmith_f_op_f32(func_3(global2.x))))))));
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(select(_wgslsmith_mod_u32(29002u, ~62254u), ~arg_1.b.b.x, false), 1u), 19u)];
    var var_3 = 13951i;
    return Struct_1(select(arg_2.a, arg_0.b, true), ~_wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.a.b.x, min(var_2.a.b.x, 116640u)), ~vec2<u32>(var_1.a.b.x, 4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(817f - 760f)) + 293f))));
    var var_1 = Struct_2(func_6(global0[_wgslsmith_index_u32(u_input.a, 19u)], func_5(func_1(all(vec4<bool>(true, true, true, false)))), Struct_1(false, max(~vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(14780u, u_input.a)))), func_6(func_2(vec3<bool>(true, true, u_input.b == -29447i), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-1100f, var_0, false))))), Struct_2(Struct_1(1517f != var_0, ~vec2<u32>(1655u, 0u)), Struct_1(all(vec4<bool>(false, true, false, false)), _wgslsmith_mult_vec2_u32(vec2<u32>(82944u, u_input.a), vec2<u32>(40608u, u_input.a))), vec4<f32>(_wgslsmith_div_f32(1000f, var_0), 758f, var_0, var_0), -vec2<i32>(-2147483647i, 0i), func_6(global0[_wgslsmith_index_u32(~107320u, 19u)], func_5(Struct_1(true, vec2<u32>(u_input.a, 84723u))), func_1(true))), func_2(vec3<bool>(true, true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0)) - _wgslsmith_f_op_f32(min(-107f, var_0)))).a), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - var_0) * 1271f), _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(var_0 * var_0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0 * var_0), _wgslsmith_f_op_f32(f32(-1f) * -429f)), -2594f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-519f, 1431f, -233f, 1973f) + vec4<f32>(-176f, 1993f, var_0, -605f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(735f, 552f, var_0, 1000f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-598f, -209f, 1000f, var_0)))))), select(~vec2<i32>(global2.x, global2.x), vec2<i32>(u_input.b, 0i), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true))) | func_5(Struct_1(u_input.a <= 3051u, func_1(false).b)).d, Struct_1(func_1(false).a, func_2(vec3<bool>(true, true, true), _wgslsmith_f_op_f32(abs(var_0))).a.b & vec2<u32>(u_input.a << (u_input.a % 32u), ~u_input.a)));
    global1 = array<vec4<u32>, 13>();
    global1 = array<vec4<u32>, 13>();
    var var_2 = Struct_2(func_2(vec3<bool>(any(select(vec2<bool>(var_1.e.a, false), vec2<bool>(var_1.e.a, var_1.a.a), vec2<bool>(false, var_1.b.a))), all(vec3<bool>(var_1.a.a, false, var_1.b.a)), func_1(true).a), _wgslsmith_f_op_f32(var_0 * 116f)).a, func_2(vec3<bool>(func_6(Struct_3(var_1.e, false, var_0, var_1.c.wzx), func_5(var_1.e), Struct_1(false, vec2<u32>(u_input.a, 0u))).a, true, !(!var_1.e.a)), _wgslsmith_f_op_f32(-var_1.c.x)).a, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-342f - 1000f)), _wgslsmith_f_op_f32(var_1.c.x + _wgslsmith_f_op_f32(max(221f, 1301f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(724f, 1289f)) - _wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-358f, _wgslsmith_f_op_f32(-var_1.c.x), -1512f, func_5(Struct_1(false, vec2<u32>(1u, 1u))).c.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1190f, var_0, 1000f, 1000f))), any(vec2<bool>(false, !var_1.b.a)))), vec2<i32>(global2.x, _wgslsmith_div_i32(global2.x, global2.x) >> (_wgslsmith_sub_u32(var_1.b.b.x, 1u) % 32u)) ^ abs(vec2<i32>(select(2357i, var_1.d.x, var_1.a.a), countOneBits(var_1.d.x))), var_1.b);
    var var_3 = _wgslsmith_sub_vec4_i32(select(vec4<i32>(_wgslsmith_mod_i32(-1i, -1616i) >> (var_2.a.b.x % 32u), var_1.d.x, -1i, firstTrailingBit(var_2.d.x << (24187u % 32u))), abs(vec4<i32>(-1i) * -vec4<i32>(u_input.b, var_2.d.x, 1i, var_1.d.x)), !select(vec4<bool>(true, var_1.a.a, true, true), select(vec4<bool>(false, var_1.a.a, true, var_2.e.a), vec4<bool>(var_2.a.a, var_1.a.a, true, false), true), !vec4<bool>(true, var_1.b.a, false, var_2.a.a))), _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, 0i, 2147483647i, 1i), vec4<i32>(var_1.d.x, var_1.d.x, 3524i, 43079i)), reverseBits(vec4<i32>(u_input.b, 1i, var_2.d.x, var_2.d.x))), ~vec4<i32>(var_2.d.x, -4157i, var_2.d.x, u_input.b)), min(-_wgslsmith_mod_vec4_i32(vec4<i32>(43066i, u_input.b, var_2.d.x, -2147483647i), vec4<i32>(var_2.d.x, var_2.d.x, 25227i, u_input.b)), vec4<i32>(1i, -27086i, ~(-15889i), -var_2.d.x))));
    var var_4 = global0[_wgslsmith_index_u32(46832u, 19u)];
    var var_5 = 71732i;
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_add_i32(1i, ~(-35224i)), _wgslsmith_div_f32(_wgslsmith_div_f32(func_5(func_6(global0[_wgslsmith_index_u32(0u, 19u)], Struct_2(var_4.a, var_2.e, var_2.c, global2.yx, Struct_1(var_1.e.a, vec2<u32>(16804u, 4294967295u))), var_2.b)).c.x, -1481f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0, 1000f, true)) + -888f))), _wgslsmith_add_i32(u_input.b, _wgslsmith_clamp_i32(global2.x, -var_2.d.x ^ (var_2.d.x >> (var_1.e.b.x % 32u)), -2147483647i)), var_2.d.x);
}

