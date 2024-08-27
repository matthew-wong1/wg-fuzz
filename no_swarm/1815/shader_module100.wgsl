struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 12> = array<bool, 12>(true, true, true, true, true, true, true, false, true, false, true, false);

var<private> global1: i32 = 20919i;

var<private> global2: array<bool, 13> = array<bool, 13>(true, true, true, true, true, true, false, false, false, false, true, false, false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<i32>, arg_2: Struct_1) -> vec2<i32> {
    global2 = array<bool, 13>();
    var var_0 = Struct_1(u_input.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -873f))), firstLeadingBit(arg_2.d), 0u, global0[_wgslsmith_index_u32(u_input.b, 12u)]);
    global0 = array<bool, 12>();
    var var_1 = false;
    let var_2 = Struct_1(reverseBits(27148i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -787f) * var_0.b) + arg_2.b), -1439f), 1u, ~(~abs(arg_2.d << (arg_2.d % 32u))), select(any(!arg_0), false, u_input.b > _wgslsmith_clamp_u32(firstLeadingBit(arg_2.c), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c, 36166u, u_input.b, 1u), vec4<u32>(0u, var_0.d, 4294967295u, 22713u)), 22625u >> (u_input.b % 32u))));
    return -u_input.d;
}

fn func_2(arg_0: f32) -> Struct_2 {
    global1 = u_input.c.x;
    global1 = i32(-1i) * -u_input.e;
    global0 = array<bool, 12>();
    let var_0 = Struct_2(Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.d.x, -2147483647i), vec3<i32>(8146i, 0i, u_input.c.x)), -u_input.d.x), ~func_3(vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 13u)], true), vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i), Struct_1(u_input.e, -1000f, 33391u, u_input.b, global2[_wgslsmith_index_u32(36055u, 13u)]))), _wgslsmith_f_op_f32(-arg_0), (~u_input.b << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 1u, 0u), vec3<u32>(u_input.b, u_input.b, 35128u)) % 32u)) & _wgslsmith_sub_u32(u_input.b, 25811u), ~u_input.b, all(!(!vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 12u)], global2[_wgslsmith_index_u32(1u, 13u)])))), arg_0, Struct_1(_wgslsmith_add_i32(_wgslsmith_mult_i32(_wgslsmith_add_i32(-13301i, u_input.c.x), i32(-1i) * -2147483647i), u_input.d.x), arg_0, 0u, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, 4820u, 76398u), vec4<u32>(u_input.b, 4909u, 1u, u_input.b))), !((63892u >> (u_input.b % 32u)) <= _wgslsmith_div_u32(u_input.b, 5027u))), firstLeadingBit(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, u_input.b), countOneBits(vec3<u32>(u_input.b, 46181u, 0u))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(-1152f)), _wgslsmith_div_f32(-1381f, arg_0), -140f))));
    return Struct_2(Struct_1(u_input.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(var_1.x)))), _wgslsmith_dot_vec2_u32(vec2<u32>(~109384u, 76104u), _wgslsmith_sub_vec2_u32(~vec2<u32>(47676u, 79449u), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, 1u), vec2<u32>(4294967295u, u_input.b)))), select(77292u, _wgslsmith_dot_vec2_u32(select(vec2<u32>(var_0.d, 0u), vec2<u32>(4294967295u, 23906u), false), countOneBits(vec2<u32>(u_input.b, u_input.b))), true), select(true, true, any(vec4<bool>(true, true, false, false)))), arg_0, var_0.a, 4294967295u);
}

fn func_4(arg_0: Struct_2, arg_1: bool) -> Struct_2 {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(-1264f, -155f, global0[_wgslsmith_index_u32(69905u, 12u)])), _wgslsmith_f_op_f32(floor(arg_0.c.b))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c.b, 816f)), vec2<f32>(arg_0.a.b, 880f)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0.b, arg_0.a.b))))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(1292f)), _wgslsmith_f_op_f32(min(arg_0.a.b, arg_0.b))) - vec2<f32>(-472f, arg_0.a.b)))));
    var var_1 = ~(~(arg_0.d >> (arg_0.c.d % 32u)));
    let var_2 = arg_0.c;
    var var_3 = vec2<u32>(~u_input.b, var_2.d);
    global2 = array<bool, 13>();
    return arg_0;
}

fn func_5(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1) -> u32 {
    global2 = array<bool, 13>();
    let var_0 = -(arg_2.a | abs(52050i));
    var var_1 = Struct_2(Struct_1(~(1i << (arg_2.d % 32u)), _wgslsmith_f_op_f32(-arg_1.b), ~116146u, u_input.b, false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_2(arg_1.b).a.b) + 467f), func_2(_wgslsmith_f_op_f32(f32(-1f) * -1899f)).a, 30625u);
    let var_2 = _wgslsmith_f_op_f32(min(arg_2.b, _wgslsmith_div_f32(arg_1.c.b, -220f)));
    let var_3 = ~func_4(arg_1, select(all(select(vec3<bool>(global0[_wgslsmith_index_u32(arg_1.c.d, 12u)], global0[_wgslsmith_index_u32(arg_2.d, 12u)], true), vec3<bool>(arg_1.c.e, arg_2.e, false), global2[_wgslsmith_index_u32(u_input.b, 13u)])), func_4(func_4(arg_1, arg_2.e), any(vec3<bool>(true, arg_2.e, global2[_wgslsmith_index_u32(arg_1.a.c, 13u)]))).c.e, true)).d;
    return countOneBits(var_3);
}

fn func_1() -> f32 {
    var var_0 = vec2<u32>(func_5(u_input.d.x, func_4(func_2(_wgslsmith_f_op_f32(141f * 689f)), any(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 12u)], global2[_wgslsmith_index_u32(u_input.b, 13u)]))), func_4(func_2(_wgslsmith_f_op_f32(ceil(-576f))), true).c), u_input.b);
    global2 = array<bool, 13>();
    var var_1 = func_4(Struct_2(func_2(905f).c, _wgslsmith_f_op_f32(1428f * 911f), func_2(-1106f).c, _wgslsmith_mult_u32(countOneBits(~u_input.b), var_0.x)), !(global0[_wgslsmith_index_u32(u_input.b ^ 0u, 12u)] && global0[_wgslsmith_index_u32(u_input.b, 12u)])).a;
    let var_2 = func_4(Struct_2(Struct_1(firstLeadingBit(var_1.a), _wgslsmith_f_op_f32(abs(-1000f)), firstTrailingBit(reverseBits(81603u)), 0u, any(select(vec2<bool>(global2[_wgslsmith_index_u32(77379u, 13u)], var_1.e), vec2<bool>(true, false), vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 13u)], false)))), 137f, func_4(Struct_2(Struct_1(var_1.a, -1723f, 16651u, 1u, false), _wgslsmith_f_op_f32(sign(1009f)), func_2(1000f).a, _wgslsmith_clamp_u32(var_0.x, 0u, 1u)), !(global0[_wgslsmith_index_u32(36439u, 12u)] || true)).a, u_input.b), false).a;
    let var_3 = vec2<bool>(!global0[_wgslsmith_index_u32(0u, 12u)], true);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1())))));
    global1 = max(-_wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.e << (59263u % 32u), -u_input.e), _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(-2147483647i, 1733i, -25831i, u_input.c.x)), u_input.a)), -2147483647i >> (u_input.b % 32u));
    global0 = array<bool, 12>();
    let var_1 = _wgslsmith_clamp_vec4_u32(~firstTrailingBit(~vec4<u32>(u_input.b, u_input.b, 13090u, 1u)), vec4<u32>(select(u_input.b, 4294967295u, global2[_wgslsmith_index_u32(72939u, 13u)]), 46367u, 4294967295u | u_input.b, u_input.b) ^ ~(~vec4<u32>(71014u, 19517u, u_input.b, u_input.b)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, func_4(Struct_2(Struct_1(-2147483647i, 517f, 0u, u_input.b, global0[_wgslsmith_index_u32(4294967295u, 12u)]), 1116f, Struct_1(u_input.a.x, -647f, u_input.b, u_input.b, global2[_wgslsmith_index_u32(4294967295u, 13u)]), u_input.b), true).d, func_2(-284f).a.d, _wgslsmith_sub_u32(u_input.b, 30699u)), vec4<u32>(0u, ~46085u, u_input.b >> (u_input.b % 32u), u_input.b), countOneBits(vec4<u32>(u_input.b, u_input.b, 28696u, u_input.b)))) << (_wgslsmith_add_vec4_u32(vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 1u), vec2<u32>(u_input.b, u_input.b)), u_input.b, ~(~35058u), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, u_input.b), vec2<u32>(u_input.b, u_input.b)), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, 12529u), vec2<u32>(u_input.b, 14001u)))), ~_wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, u_input.b, 1u, 50982u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 32551u, 26771u, u_input.b), vec4<u32>(u_input.b, u_input.b, 12439u, 4294967295u)))) % vec4<u32>(32u));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-256f + -1187f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()))))), func_2(-207f).c.b);
    var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1141f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1000f, var_2.x))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, -1550f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-338f, -169f))), vec2<f32>(var_2.x, var_2.x)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, var_2.x)) - vec2<f32>(376f, _wgslsmith_f_op_f32(1096f + 546f)))));
    var var_3 = func_4(func_4(func_4(Struct_2(func_4(Struct_2(Struct_1(-6099i, -348f, 3756u, 4294967295u, false), var_2.x, Struct_1(28180i, var_2.x, 1u, u_input.b, false), 113052u), global2[_wgslsmith_index_u32(var_1.x, 13u)]).a, _wgslsmith_f_op_f32(-382f - var_2.x), Struct_1(u_input.a.x, var_2.x, 4294967295u, 9688u, false), var_1.x), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~1u, 35602u, var_1.x), 13u)]), u_input.c.x > 2147483647i), !(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-555f * -735f), _wgslsmith_div_f32(var_2.x, var_2.x), global0[_wgslsmith_index_u32(13771u, 12u)])) >= _wgslsmith_f_op_f32(func_1()))).c;
    var var_4 = Struct_2(Struct_1(~u_input.d.x, var_3.b, ~_wgslsmith_div_u32(0u, _wgslsmith_mult_u32(1u, var_1.x)), 1u, !(!select(false, global2[_wgslsmith_index_u32(var_3.c, 13u)], true))), 507f, Struct_1(-var_3.a, -580f, var_3.d, ~44966u, (global2[_wgslsmith_index_u32(var_1.x, 13u)] && true) && global2[_wgslsmith_index_u32(~1u, 13u)]), var_3.c);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b, _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_3.a, u_input.a.x, -42879i) << (var_1.xyz % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(u_input.c, vec3<i32>(-1i, -1i, -2147483647i))), _wgslsmith_div_i32(u_input.c.x, u_input.e)), firstLeadingBit(vec2<i32>(u_input.a.x, var_4.c.a))), var_2.x);
}

