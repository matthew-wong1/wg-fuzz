struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec2<u32>;

var<private> global2: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(vec4<i32>(4827i, -16361i, 1i, 1i), Struct_1(33544u), Struct_1(12409u), Struct_1(1u)), Struct_2(vec4<i32>(9278i, -1i, -1i, 1677i), Struct_1(1u), Struct_1(4294967295u), Struct_1(57896u)), Struct_2(vec4<i32>(i32(-2147483648), 4260i, -56896i, 4750i), Struct_1(28109u), Struct_1(16324u), Struct_1(77967u)), Struct_2(vec4<i32>(i32(-2147483648), -34423i, -9310i, -44376i), Struct_1(4294967295u), Struct_1(9879u), Struct_1(41219u)), Struct_2(vec4<i32>(26548i, i32(-2147483648), 51553i, 2147483647i), Struct_1(51497u), Struct_1(4294967295u), Struct_1(67227u)), Struct_2(vec4<i32>(-61909i, -41131i, -1i, 22619i), Struct_1(43246u), Struct_1(1u), Struct_1(83808u)), Struct_2(vec4<i32>(-1i, i32(-2147483648), 24709i, 0i), Struct_1(52410u), Struct_1(20959u), Struct_1(4294967295u)), Struct_2(vec4<i32>(27535i, -28288i, -21056i, -1941i), Struct_1(58962u), Struct_1(0u), Struct_1(4294967295u)), Struct_2(vec4<i32>(-11554i, 41818i, i32(-2147483648), -4911i), Struct_1(1u), Struct_1(1u), Struct_1(105764u)), Struct_2(vec4<i32>(-26171i, -33801i, -1i, 15800i), Struct_1(46153u), Struct_1(22708u), Struct_1(95522u)), Struct_2(vec4<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648), 1i), Struct_1(4363u), Struct_1(1u), Struct_1(5238u)), Struct_2(vec4<i32>(-83i, 6253i, 0i, 4767i), Struct_1(1u), Struct_1(14131u), Struct_1(0u)), Struct_2(vec4<i32>(27392i, -3846i, i32(-2147483648), -21059i), Struct_1(28274u), Struct_1(4294967295u), Struct_1(60601u)), Struct_2(vec4<i32>(2147483647i, -1i, -29332i, 12306i), Struct_1(1u), Struct_1(24117u), Struct_1(4294967295u)), Struct_2(vec4<i32>(1i, 1i, -72788i, 15258i), Struct_1(4294967295u), Struct_1(0u), Struct_1(8024u)));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> vec2<bool> {
    global0 = arg_1;
    global0 = arg_1;
    var var_0 = Struct_3(vec2<i32>(-_wgslsmith_dot_vec3_i32(~u_input.a, vec3<i32>(0i, 0i, -8812i) | u_input.a), 1939i));
    var_0 = Struct_3(vec2<i32>(_wgslsmith_clamp_i32(0i, -3224i, 1i), -1i));
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-1401f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(691f))), _wgslsmith_f_op_f32(round(1206f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(150f + _wgslsmith_f_op_f32(trunc(-1815f)))))), true));
    return select(select(!vec2<bool>(false, arg_0), vec2<bool>(true, true), select(!vec2<bool>(arg_0, false), select(!vec2<bool>(arg_0, true), select(vec2<bool>(true, false), vec2<bool>(true, arg_0), arg_0), vec2<bool>(true, arg_0)), vec2<bool>(false, !arg_0))), vec2<bool>(true, any(select(!vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, true, arg_0), arg_0 && true))), false);
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<bool>, arg_2: i32, arg_3: u32) -> f32 {
    let var_0 = ~arg_3;
    let var_1 = 0u;
    let var_2 = max(vec4<i32>(-1i) * -min(vec4<i32>(-2147483647i, 83420i, -25737i, 1i) | vec4<i32>(arg_2, 25152i, 2538i, 6774i), vec4<i32>(19014i, u_input.a.x, arg_2, arg_2)), min(vec4<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2, 1i, arg_2, 13936i), vec4<i32>(-30457i, 0i, arg_2, 2147483647i)), _wgslsmith_clamp_i32(-1i, u_input.a.x, arg_2), 0i), vec4<i32>(arg_2, ~(-1i), _wgslsmith_sub_i32(-3473i, u_input.a.x), arg_2)) & vec4<i32>(select(-1i, -36330i, true), 0i, _wgslsmith_mod_i32(-u_input.a.x, u_input.a.x), -2147483647i));
    var var_3 = global2[_wgslsmith_index_u32(~60356u, 15u)];
    var var_4 = var_3.b;
    return -1251f;
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-179f))), -1000f)), _wgslsmith_f_op_f32(func_4(vec3<bool>(false, u_input.a.x != -15834i, any(vec3<bool>(false, false, true))), func_3(true, Struct_1(22406u)), firstLeadingBit(22267i), global1.x))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(f32(-1f) * -656f)));
    var var_1 = any(select(select(vec4<bool>(all(vec3<bool>(true, true, false)), all(vec4<bool>(false, false, true, false)), true, all(vec2<bool>(false, true))), vec4<bool>(true, u_input.a.x >= u_input.a.x, true, all(vec2<bool>(false, false))), false), !select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), true), true), true));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(685f + 1053f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -885f), 770f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-3250f))))));
    var var_3 = countOneBits(global1.x);
    let var_4 = ~vec4<u32>(abs(_wgslsmith_mult_u32(u_input.b, global1.x) & 20150u), ~countOneBits(38177u) | _wgslsmith_sub_u32(0u, global0.a), max(~global1.x, 0u), 18949u);
    return true;
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: vec4<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_add_u32(~_wgslsmith_div_u32(_wgslsmith_mod_u32(0u, global0.a), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(u_input.b, global1.x, 92063u), 27538u, countOneBits(global0.a))), global1.x);
    var var_1 = Struct_1(~_wgslsmith_sub_u32(~(~global1.x), var_0));
    var var_2 = u_input.a.zx ^ ~(u_input.a.yz >> (~u_input.d.zx % vec2<u32>(32u)));
    var_2 = -vec2<i32>(3265i, abs(~abs(var_2.x)));
    global2 = array<Struct_2, 15>();
    return Struct_1(global0.a);
}

fn func_1(arg_0: vec3<f32>) -> Struct_3 {
    var var_0 = Struct_2(firstLeadingBit(vec4<i32>(max(-16337i, u_input.a.x ^ 1i), 5738i, u_input.a.x, _wgslsmith_sub_i32(~(-13056i), i32(-1i) * -2147483647i))), Struct_1(11440u), func_5(arg_0.x, Struct_1(~global0.a), select(vec4<bool>(true, true, true, func_2()), vec4<bool>(false, true, true, true), true)), func_5(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.x + arg_0.x))), Struct_1(0u), vec4<bool>(any(vec4<bool>(true, true, false, true)), false, _wgslsmith_f_op_f32(round(-502f)) < _wgslsmith_f_op_f32(-arg_0.x), select(any(vec4<bool>(false, true, false, true)), true, true))));
    var var_1 = -2147483647i;
    let var_2 = var_0.a.x;
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.yz + vec2<f32>(arg_0.x, -434f))), _wgslsmith_div_vec2_f32(vec2<f32>(-485f, arg_0.x), _wgslsmith_div_vec2_f32(arg_0.xx, vec2<f32>(-475f, -1360f))), func_3(false, Struct_1(1u)).x || (u_input.b != global1.x))) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, -781f))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, arg_0.x)));
    var var_4 = vec2<bool>(true, true);
    return Struct_3((-vec2<i32>(-13419i, var_0.a.x) >> (firstLeadingBit(~vec2<u32>(0u, var_0.d.a)) % vec2<u32>(32u))) | max(-vec2<i32>(u_input.a.x, 0i), vec2<i32>(1i, -1i)));
}

fn func_6(arg_0: vec4<bool>, arg_1: vec4<u32>, arg_2: Struct_3) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(765f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-677f * -802f))))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(209f)) - _wgslsmith_f_op_f32(trunc(210f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(427f + 1516f))) - _wgslsmith_f_op_f32(max(120f, -1000f))));
    var var_1 = 13820i;
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-671f - -420f) + _wgslsmith_div_f32(-1910f, 1684f)), -1257f));
    var_1 = arg_2.a.x;
    let var_3 = 477f;
    return -vec4<i32>(_wgslsmith_mod_i32(2147483647i, _wgslsmith_clamp_i32(-1i, 1i, u_input.a.x) ^ 14641i), abs(u_input.a.x), ~func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, var_0, 493f) * vec3<f32>(var_3, var_3, var_0))).a.x, firstLeadingBit(0i));
}

fn func_7(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: i32) -> vec2<u32> {
    global0 = func_5(522f, arg_0, select(vec4<bool>(true, true, true, true), !vec4<bool>(true, all(vec3<bool>(true, false, false)), all(vec2<bool>(true, true)), true), _wgslsmith_sub_i32(-15148i, _wgslsmith_add_i32(0i, 31975i)) != _wgslsmith_add_i32(68415i, abs(arg_1.x))));
    let var_0 = ~(min(~_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.a, global0.a, global1.x, arg_0.a), vec4<u32>(0u, 38687u, global1.x, 28562u)), vec4<u32>(4294967295u, max(0u, global0.a), ~global0.a, ~global1.x)) << (u_input.d % vec4<u32>(32u)));
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-110f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -437f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-456f)), -889f, true))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-281f)) - _wgslsmith_f_op_f32(-1804f * 826f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-890f * -642f))))))));
    let var_2 = true;
    var var_3 = ~4294967295u;
    return vec2<u32>(4294967295u, ~(~(~0u)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 15>();
    global1 = func_7(Struct_1(~30068u), -func_6(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), any(vec2<bool>(false, true))), u_input.d, func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-333f, -961f, 893f)))), u_input.a.x);
    let var_0 = u_input.a.x;
    var var_1 = 17915u;
    global0 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(673f))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -602f)) + 220f)), func_5(_wgslsmith_f_op_f32(round(1072f)), func_5(410f, func_5(_wgslsmith_f_op_f32(179f + 310f), func_5(-1391f, Struct_1(29354u), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true)), vec4<bool>(any(vec4<bool>(false, false, false, false)), func_3(true, Struct_1(1u)).x, true, true)), !select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, false, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), false))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec4<bool>(false, true, true, true)), true, true), !select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), true)));
    let var_2 = vec2<u32>(_wgslsmith_mod_u32(global0.a, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global0.a, 90622u), firstTrailingBit(vec3<u32>(u_input.c, 0u, 4294967295u)))) << (abs(~(global0.a | 44380u)) % 32u), _wgslsmith_mod_u32(~(global0.a << ((global0.a & 1u) % 32u)), u_input.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_i32(vec2<i32>(~29477i, ~firstLeadingBit(u_input.a.x)), select(vec2<i32>(u_input.a.x, var_0 << (global1.x % 32u)), u_input.a.xx, select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))), var_2.x, _wgslsmith_mult_u32(~(global0.a ^ global1.x), ~global0.a) << (30814u % 32u));
}

