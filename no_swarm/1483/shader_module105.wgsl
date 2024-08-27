struct Struct_1 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec2<f32>;

var<private> global2: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(vec3<f32>(-757f, 846f, 802f), Struct_1(-2434f, vec3<u32>(41000u, 4294967295u, 10636u)), vec4<u32>(1u, 2704u, 4294967295u, 4294967295u), Struct_1(504f, vec3<u32>(4294967295u, 4294967295u, 8477u))), Struct_2(vec3<f32>(910f, -192f, 462f), Struct_1(1005f, vec3<u32>(4294967295u, 1u, 1u)), vec4<u32>(0u, 1u, 57822u, 30999u), Struct_1(1580f, vec3<u32>(4294967295u, 18779u, 1u))), Struct_2(vec3<f32>(-1000f, 1353f, 1578f), Struct_1(1365f, vec3<u32>(55619u, 1u, 1u)), vec4<u32>(4294967295u, 40445u, 58435u, 86281u), Struct_1(-1602f, vec3<u32>(1u, 43613u, 16438u))), Struct_2(vec3<f32>(889f, 163f, 167f), Struct_1(-956f, vec3<u32>(1u, 62964u, 57718u)), vec4<u32>(32138u, 4294967295u, 1u, 31838u), Struct_1(502f, vec3<u32>(56564u, 0u, 4294967295u))), Struct_2(vec3<f32>(-510f, 741f, -407f), Struct_1(-934f, vec3<u32>(65486u, 4294967295u, 4294967295u)), vec4<u32>(1u, 4294967295u, 7956u, 0u), Struct_1(742f, vec3<u32>(377u, 1u, 0u))), Struct_2(vec3<f32>(-1569f, 115f, -547f), Struct_1(-172f, vec3<u32>(4294967295u, 11432u, 23122u)), vec4<u32>(22787u, 4294967295u, 634u, 38988u), Struct_1(1258f, vec3<u32>(0u, 48790u, 8417u))), Struct_2(vec3<f32>(-1126f, -2036f, -2030f), Struct_1(1200f, vec3<u32>(783u, 4294967295u, 0u)), vec4<u32>(8718u, 1u, 73835u, 19789u), Struct_1(1323f, vec3<u32>(1u, 7233u, 47204u))), Struct_2(vec3<f32>(1939f, -2030f, 314f), Struct_1(-149f, vec3<u32>(0u, 1u, 1u)), vec4<u32>(4294967295u, 0u, 2578u, 82982u), Struct_1(501f, vec3<u32>(1u, 1u, 4294967295u))), Struct_2(vec3<f32>(-165f, -1000f, 661f), Struct_1(-1804f, vec3<u32>(34856u, 0u, 1u)), vec4<u32>(16101u, 22999u, 1u, 31906u), Struct_1(1000f, vec3<u32>(4294967295u, 60562u, 1u))), Struct_2(vec3<f32>(-1046f, -1189f, -549f), Struct_1(597f, vec3<u32>(1u, 0u, 4294967295u)), vec4<u32>(1u, 44406u, 4294967295u, 4294967295u), Struct_1(-137f, vec3<u32>(0u, 0u, 4294967295u))), Struct_2(vec3<f32>(-882f, 1000f, -207f), Struct_1(-447f, vec3<u32>(63428u, 0u, 5781u)), vec4<u32>(10922u, 4294967295u, 73073u, 57525u), Struct_1(894f, vec3<u32>(0u, 0u, 1494u))), Struct_2(vec3<f32>(1009f, 1981f, 942f), Struct_1(1225f, vec3<u32>(4294967295u, 59886u, 1u)), vec4<u32>(82539u, 29966u, 24785u, 4294967295u), Struct_1(-946f, vec3<u32>(1862u, 110762u, 88258u))), Struct_2(vec3<f32>(517f, 506f, -1092f), Struct_1(1816f, vec3<u32>(1u, 4294967295u, 1u)), vec4<u32>(4294967295u, 0u, 13084u, 0u), Struct_1(1144f, vec3<u32>(0u, 11817u, 4294967295u))), Struct_2(vec3<f32>(151f, 1000f, -560f), Struct_1(343f, vec3<u32>(4294967295u, 19897u, 4294967295u)), vec4<u32>(1u, 1u, 4294967295u, 0u), Struct_1(314f, vec3<u32>(0u, 1u, 4294967295u))), Struct_2(vec3<f32>(-713f, 467f, 2032f), Struct_1(1335f, vec3<u32>(65542u, 37321u, 0u)), vec4<u32>(4294967295u, 1u, 1u, 1u), Struct_1(-927f, vec3<u32>(0u, 0u, 57583u))), Struct_2(vec3<f32>(383f, 664f, -1483f), Struct_1(515f, vec3<u32>(22299u, 57488u, 103970u)), vec4<u32>(0u, 14553u, 1u, 0u), Struct_1(709f, vec3<u32>(15939u, 4294967295u, 44633u))), Struct_2(vec3<f32>(772f, 1284f, -626f), Struct_1(1014f, vec3<u32>(6553u, 199u, 84393u)), vec4<u32>(79943u, 41865u, 46354u, 0u), Struct_1(-920f, vec3<u32>(28567u, 1u, 1u))), Struct_2(vec3<f32>(-691f, 847f, -606f), Struct_1(332f, vec3<u32>(1u, 0u, 4294967295u)), vec4<u32>(5510u, 50553u, 0u, 2551u), Struct_1(2988f, vec3<u32>(45099u, 1u, 16327u))), Struct_2(vec3<f32>(-149f, -768f, -838f), Struct_1(768f, vec3<u32>(75679u, 45230u, 48347u)), vec4<u32>(25962u, 18753u, 27933u, 1u), Struct_1(2345f, vec3<u32>(83901u, 7967u, 1u))), Struct_2(vec3<f32>(1168f, 455f, 225f), Struct_1(788f, vec3<u32>(4294967295u, 4294967295u, 14138u)), vec4<u32>(66753u, 10853u, 39683u, 1u), Struct_1(-1159f, vec3<u32>(3179u, 1u, 26281u))));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<u32>, arg_2: vec4<bool>, arg_3: Struct_3) -> u32 {
    let var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(~(vec4<u32>(0u, 1u, 50857u, 4294967295u) >> (arg_3.a.c % vec4<u32>(32u))), u_input.e), _wgslsmith_mod_u32(arg_1.x, arg_3.b.c.x), 27989u), abs(arg_3.a.b.b));
    return 0u;
}

fn func_2() -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1754f), vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_add_u32(101624u, ~u_input.b.x), 25037u, 0u), ~(~u_input.c.x), _wgslsmith_mult_u32(func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-948f, 371f)), vec3<u32>(27757u, u_input.b.x, 12170u), vec4<bool>(true, true, true, true), Struct_3(global2[_wgslsmith_index_u32(4294967295u, 20u)], global2[_wgslsmith_index_u32(u_input.c.x, 20u)], Struct_1(-428f, u_input.b), true)), u_input.c.x)));
    global0 = firstLeadingBit(u_input.d.x);
    global0 = u_input.d.x;
    var var_1 = var_0;
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(global1.x)), 584f, _wgslsmith_f_op_f32(-var_0.a))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1040f - 1000f), 1028f, var_0.a))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1416f)), firstTrailingBit(vec3<u32>(u_input.e.x, 28609u, var_1.b.x)) << (u_input.e.yxz % vec3<u32>(32u))), u_input.e, var_0);
    return 42312u << (1u % 32u);
}

fn func_1() -> Struct_3 {
    var var_0 = vec4<u32>(countOneBits(min(max(u_input.c.x, 64902u) >> (35146u % 32u), func_2())), abs((~u_input.e.x ^ min(u_input.c.x, u_input.b.x)) << (35473u % 32u)), _wgslsmith_div_u32(~u_input.b.x, 1u), u_input.c.x & min(~u_input.e.x, ~62570u));
    global0 = select(_wgslsmith_add_i32(u_input.d.x, -2147483647i) | u_input.d.x, reverseBits(-_wgslsmith_clamp_i32(max(44387i, -38911i), _wgslsmith_clamp_i32(0i, 39461i, -8552i), 39661i)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), -143f))) >= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.x))));
    let var_1 = -u_input.d.x;
    var var_2 = !vec3<bool>(select(true, true, !(-1i > var_1)), !(!all(vec2<bool>(false, true))), !any(vec2<bool>(true, false)) || select(true, true, true));
    var var_3 = global2[_wgslsmith_index_u32(u_input.b.x, 20u)];
    return Struct_3(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(26174u, 30838u), 20u)], Struct_2(vec3<f32>(var_3.b.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.a.x - global1.x) - _wgslsmith_f_op_f32(-1344f * 1190f)), _wgslsmith_f_op_f32(trunc(222f))), Struct_1(_wgslsmith_f_op_f32(ceil(1897f)), ~vec3<u32>(89015u, var_0.x, 21259u) & _wgslsmith_sub_vec3_u32(var_0.xxy, vec3<u32>(u_input.c.x, var_3.d.b.x, 6959u))), var_3.c & ~var_3.c, var_3.d), var_3.b, false);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1) -> Struct_2 {
    var var_0 = arg_0.c;
    var var_1 = _wgslsmith_f_op_f32(1806f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(arg_1.a)))) + arg_1.a));
    global0 = u_input.a;
    let var_2 = false;
    var var_3 = !(!(!vec4<bool>(true, var_2, !arg_0.d, true)));
    return Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.x, arg_0.b.d.a, 744f), vec3<f32>(3215f, -1385f, 1000f), var_3.xww))), _wgslsmith_f_op_vec3_f32(-arg_0.a.a)))), arg_1, vec4<u32>(_wgslsmith_dot_vec4_u32(u_input.e, vec4<u32>(~arg_0.a.d.b.x, func_2(), u_input.b.x >> (u_input.b.x % 32u), ~var_0.b.x)), arg_1.b.x ^ firstLeadingBit(arg_0.c.b.x), firstLeadingBit(~countOneBits(1u)), _wgslsmith_mult_u32(arg_1.b.x, _wgslsmith_mult_u32(abs(arg_0.c.b.x), arg_1.b.x))), func_1().c);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 20>();
    var var_0 = func_4(func_1(), Struct_1(_wgslsmith_f_op_f32(ceil(func_1().a.a.x)), firstTrailingBit(u_input.b)));
    var var_1 = Struct_3(global2[_wgslsmith_index_u32(var_0.c.x, 20u)], Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-755f, -1852f, var_0.a.x))), func_1().b.b, select(~(~u_input.e), u_input.e, select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false)), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true)), vec4<bool>(true, false, true, true))), var_0.b), var_0.b, false);
    var var_2 = ~vec3<u32>(_wgslsmith_div_u32(19493u, ~(59425u ^ var_0.b.b.x)), _wgslsmith_mod_u32(func_1().a.c.x | ~2905u, var_1.c.b.x), 1u);
    var_1 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.a, var_1.c.a, var_1.a.a.x)), func_4(Struct_3(Struct_2(vec3<f32>(567f, var_0.a.x, global1.x), Struct_1(-840f, vec3<u32>(0u, 27266u, 4294967295u)), vec4<u32>(61734u, 51145u, 0u, 0u), var_0.d), var_1.a, Struct_1(1185f, vec3<u32>(var_2.x, var_2.x, var_1.b.d.b.x)), false), Struct_1(global1.x, vec3<u32>(var_0.c.x, var_2.x, 40138u))).a, var_1.d | true))), func_4(Struct_3(Struct_2(var_1.a.a, var_0.d, var_1.a.c, var_0.b), func_4(Struct_3(Struct_2(var_0.a, var_0.d, vec4<u32>(4294967295u, u_input.c.x, 1u, 106564u), Struct_1(var_1.b.d.a, var_0.b.b)), Struct_2(var_1.b.a, var_1.c, var_1.b.c, var_1.c), Struct_1(-738f, vec3<u32>(28873u, 4294967295u, 4294967295u)), false), Struct_1(global1.x, vec3<u32>(var_2.x, var_2.x, 4294967295u))), func_1().b.b, true), func_4(Struct_3(global2[_wgslsmith_index_u32(0u, 20u)], global2[_wgslsmith_index_u32(4294967295u, 20u)], var_0.b, false), func_4(Struct_3(Struct_2(vec3<f32>(399f, var_0.a.x, var_0.a.x), var_0.d, var_0.c, Struct_1(global1.x, vec3<u32>(var_0.d.b.x, 92132u, var_1.b.c.x))), global2[_wgslsmith_index_u32(var_1.c.b.x, 20u)], var_0.d, false), var_1.b.d).d).b).b, vec4<u32>(~17292u | ~var_0.c.x, ~_wgslsmith_add_u32(u_input.e.x, 0u), 54523u, ~(~u_input.b.x)), Struct_1(-1000f, vec3<u32>(u_input.c.x >> (0u % 32u), func_4(Struct_3(var_1.b, Struct_2(var_0.a, Struct_1(global1.x, var_1.a.d.b), u_input.e, var_0.b), var_0.d, true), Struct_1(var_0.a.x, var_1.c.b)).c.x, ~u_input.b.x))), func_1().b, func_4(func_1(), var_1.a.b).b, true);
    let var_3 = 51814u;
    var var_4 = select(vec2<bool>(var_1.d, any(vec3<bool>(any(vec4<bool>(true, var_1.d, var_1.d, var_1.d)), any(vec2<bool>(true, var_1.d)), var_1.d || var_1.d))), !select(!select(vec2<bool>(var_1.d, var_1.d), vec2<bool>(var_1.d, false), false), vec2<bool>(true, true), var_1.d), select(!vec2<bool>(var_1.d, all(vec2<bool>(false, var_1.d))), vec2<bool>(false, true), all(vec3<bool>(all(vec2<bool>(var_1.d, var_1.d)), all(vec4<bool>(true, var_1.d, var_1.d, false)), true))));
    let var_5 = vec2<bool>(false, var_4.x);
    let x = u_input.a;
    s_output = StorageBuffer(41092u, -2021f, 4294967295u, u_input.d.xz);
}

