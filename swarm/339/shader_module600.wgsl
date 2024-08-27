struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<i32>,
    d: vec4<i32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(69647u, 505f, vec4<i32>(16940i, -29153i, 3445i, -1i), vec4<i32>(12732i, 0i, 35148i, i32(-2147483648)), vec3<bool>(true, false, false)), Struct_1(0u, 637f, vec4<i32>(i32(-2147483648), -60021i, -4792i, 2147483647i), vec4<i32>(-35636i, 0i, -15704i, 2147483647i), vec3<bool>(true, false, true)), Struct_1(8862u, -351f, vec4<i32>(19472i, -55393i, 0i, 2147483647i), vec4<i32>(-19935i, i32(-2147483648), -47905i, 1i), vec3<bool>(false, false, false)), Struct_1(4294967295u, 1204f, vec4<i32>(0i, -10196i, 0i, -50477i), vec4<i32>(-32405i, 1i, -1i, -1i), vec3<bool>(false, false, true)), Struct_1(0u, -355f, vec4<i32>(-20041i, 60856i, -15651i, -14316i), vec4<i32>(51380i, -1i, 1i, -8303i), vec3<bool>(true, false, true)), Struct_1(4294967295u, -642f, vec4<i32>(2147483647i, -1i, -2867i, -53155i), vec4<i32>(0i, 2147483647i, -2713i, 1i), vec3<bool>(false, false, true)), Struct_1(1u, -612f, vec4<i32>(12156i, 2147483647i, 58119i, i32(-2147483648)), vec4<i32>(1i, 39597i, 2147483647i, 35282i), vec3<bool>(false, false, false)), Struct_1(1u, -695f, vec4<i32>(1i, 11147i, 1i, 52350i), vec4<i32>(2147483647i, 32230i, -12158i, 66168i), vec3<bool>(false, true, true)), Struct_1(65666u, -100f, vec4<i32>(60565i, 2147483647i, -1598i, -15321i), vec4<i32>(0i, -1i, 2147483647i, -2085i), vec3<bool>(false, true, false)), Struct_1(55568u, 1484f, vec4<i32>(0i, 49486i, -17973i, 1i), vec4<i32>(13424i, 0i, -34138i, -7807i), vec3<bool>(true, false, true)), Struct_1(1u, 342f, vec4<i32>(i32(-2147483648), 2147483647i, 0i, 23957i), vec4<i32>(34418i, -16524i, -16718i, 0i), vec3<bool>(false, true, true)), Struct_1(37317u, 840f, vec4<i32>(2147483647i, 33383i, -1i, i32(-2147483648)), vec4<i32>(-1i, i32(-2147483648), -14207i, -1i), vec3<bool>(false, true, false)), Struct_1(1u, 460f, vec4<i32>(-49214i, 17921i, -1i, 13101i), vec4<i32>(-10200i, 1i, 33589i, 44379i), vec3<bool>(false, true, false)), Struct_1(4294967295u, -909f, vec4<i32>(i32(-2147483648), -16990i, 20708i, 1i), vec4<i32>(-1i, 2147483647i, -1i, -12101i), vec3<bool>(false, false, false)), Struct_1(0u, -1043f, vec4<i32>(64419i, -20244i, 0i, 0i), vec4<i32>(-27873i, 2147483647i, -52168i, 0i), vec3<bool>(false, false, false)), Struct_1(53896u, 417f, vec4<i32>(47654i, -46010i, i32(-2147483648), 2147483647i), vec4<i32>(18798i, 43224i, -16933i, 1417i), vec3<bool>(true, true, true)), Struct_1(18693u, 268f, vec4<i32>(2147483647i, -18673i, 16840i, -15444i), vec4<i32>(-1i, 57639i, 55483i, 68943i), vec3<bool>(false, false, true)), Struct_1(29709u, 107f, vec4<i32>(8013i, 20804i, -25893i, 0i), vec4<i32>(2147483647i, -1i, 0i, -9216i), vec3<bool>(true, true, false)), Struct_1(48523u, -1000f, vec4<i32>(2147483647i, -1i, -34121i, -36365i), vec4<i32>(1i, i32(-2147483648), -12900i, -50248i), vec3<bool>(true, false, false)), Struct_1(8892u, -657f, vec4<i32>(0i, 0i, 2147483647i, 38619i), vec4<i32>(i32(-2147483648), -29653i, -19249i, 22569i), vec3<bool>(false, false, false)), Struct_1(1696u, 1501f, vec4<i32>(-11014i, i32(-2147483648), i32(-2147483648), -25608i), vec4<i32>(-2386i, 57025i, 542i, -1i), vec3<bool>(true, false, false)), Struct_1(1u, -849f, vec4<i32>(-15535i, 12596i, 13395i, 69058i), vec4<i32>(-49817i, 2147483647i, 0i, -20335i), vec3<bool>(false, true, false)), Struct_1(1u, 190f, vec4<i32>(-46083i, -21414i, 2147483647i, 2147483647i), vec4<i32>(2147483647i, -63902i, i32(-2147483648), i32(-2147483648)), vec3<bool>(true, true, false)), Struct_1(7744u, 1205f, vec4<i32>(-1i, 2147483647i, i32(-2147483648), i32(-2147483648)), vec4<i32>(11930i, 0i, 26221i, 4655i), vec3<bool>(false, true, true)), Struct_1(1u, 985f, vec4<i32>(-52329i, -29434i, 2147483647i, -46764i), vec4<i32>(66225i, 1i, 45684i, -20954i), vec3<bool>(false, false, false)));

var<private> global1: vec4<f32> = vec4<f32>(800f, 100f, 1000f, -697f);

var<private> global2: Struct_1 = Struct_1(5858u, 1042f, vec4<i32>(12181i, i32(-2147483648), 2147483647i, 17455i), vec4<i32>(0i, -1i, -9535i, -1i), vec3<bool>(false, true, true));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<bool>) -> f32 {
    let var_0 = ~min(vec3<u32>(31495u, global2.a, global2.a), vec3<u32>(_wgslsmith_sub_u32(abs(u_input.a.x), 0u & global2.a), ~global2.a, u_input.a.x));
    global2 = global0[_wgslsmith_index_u32(u_input.a.x, 25u)];
    var var_1 = firstLeadingBit(~vec4<u32>(max(0u, ~var_0.x), ~u_input.a.x, u_input.a.x, 1u));
    return _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(global1.x)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x - global1.x) * global1.x)), _wgslsmith_f_op_f32(trunc(1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.x), 2362f, any(vec4<bool>(arg_0.x, global2.e.x, global2.e.x, global2.e.x)))))));
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> vec4<f32> {
    var var_0 = arg_0.e;
    global1 = vec4<f32>(-382f, global2.b, _wgslsmith_f_op_f32(max(1343f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1113f, arg_0.b)) + _wgslsmith_f_op_f32(func_3(vec3<bool>(var_0.x, arg_0.e.x, arg_0.e.x)))))))), -914f);
    var var_1 = _wgslsmith_sub_u32(~0u, select(~(~global2.a), max(1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(global2.a, 12020u, u_input.a.x, u_input.a.x), vec4<u32>(34508u, 1u, 0u, 23389u))), true));
    var_1 = u_input.a.x;
    let var_2 = any(vec4<bool>(false, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(347f, -1138f, global2.e.x)), _wgslsmith_f_op_f32(global1.x - 1358f)) != global2.b, any(vec2<bool>(any(vec4<bool>(true, true, global2.e.x, arg_0.e.x)), var_0.x)), true));
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_0.b)), 1f), 456f, _wgslsmith_div_f32(global1.x, 713f), 1879f)), vec4<f32>(1560f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(global2.b, global2.b, var_0.x))))), global2.b, _wgslsmith_f_op_f32(-451f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b * 1000f)))));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: Struct_1) -> vec4<f32> {
    global1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b, -1652f, arg_2.b, 1298f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -600f, arg_2.b, arg_2.b)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b, 311f, arg_2.b, 193f) + vec4<f32>(global1.x, 356f, arg_2.b, global2.b)) * vec4<f32>(global2.b, global1.x, 2309f, -405f)) * _wgslsmith_f_op_vec4_f32(func_2(arg_2, arg_2.d.x)))));
    let var_0 = arg_2.d.x;
    global2 = Struct_1(~_wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(78686u, 4294967295u, global2.a), vec3<u32>(arg_2.a, u_input.a.x, global2.a)), u_input.a.x), arg_2.b, vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(-1i, 0i), _wgslsmith_dot_vec2_i32(vec2<i32>(1052i, var_0), global2.d.xw), _wgslsmith_add_i32(-1i, -2147483647i), _wgslsmith_dot_vec3_i32(arg_2.d.wyx, arg_2.c.xwy)), firstLeadingBit(vec4<i32>(var_0, 0i, var_0, 2147483647i) | arg_2.d)), -2147483647i, _wgslsmith_add_i32(-global2.c.x, i32(-1i) * -1i), 0i), _wgslsmith_mod_vec4_i32(countOneBits(arg_2.c), global2.c), !arg_2.e);
    global2 = global0[_wgslsmith_index_u32(47899u, 25u)];
    global0 = array<Struct_1, 25>();
    return vec4<f32>(arg_2.b, -1485f, global1.x, -1258f);
}

fn func_4(arg_0: i32, arg_1: vec4<u32>, arg_2: vec4<f32>) -> vec4<i32> {
    let var_0 = Struct_1(u_input.a.x, _wgslsmith_f_op_f32(func_3(select(select(select(global2.e, vec3<bool>(global2.e.x, false, true), vec3<bool>(false, false, global2.e.x)), select(global2.e, global2.e, vec3<bool>(true, global2.e.x, false)), global2.e.x == true), global2.e, vec3<bool>(all(vec4<bool>(global2.e.x, true, global2.e.x, true)), global2.e.x, true)))), global2.d, vec4<i32>(_wgslsmith_clamp_i32(~(~arg_0), arg_0, 1i), 5245i, countOneBits(abs(833i)), 175i), vec3<bool>(true, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-497f - global1.x), arg_2.x)) < _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global1.x))) >= 1326f));
    var var_1 = var_0;
    global2 = Struct_1(6870u, _wgslsmith_f_op_f32(f32(-1f) * -1000f), ~(~vec4<i32>(arg_0, arg_0, var_0.d.x, -1i) << (firstLeadingBit(arg_1) % vec4<u32>(32u))) << (~arg_1 % vec4<u32>(32u)), firstTrailingBit(-(var_1.d ^ vec4<i32>(var_1.c.x, arg_0, 34038i, var_0.c.x))), !global2.e);
    var var_2 = _wgslsmith_sub_u32(max(~_wgslsmith_mult_u32(17791u, _wgslsmith_div_u32(11178u, 4294967295u)), 0u), 1u);
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(abs(arg_1.xxw & firstTrailingBit(vec3<u32>(arg_1.x, 1u, var_1.a))), ~arg_1.xzw), min(~(~firstTrailingBit(vec3<u32>(1u, global2.a, var_1.a))), vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(arg_1.wxx, vec3<u32>(var_0.a, var_0.a, 1u)), var_0.a), ~global2.a, var_1.a))), 25u)];
    return select(var_3.d, firstLeadingBit(vec4<i32>(2147483647i | -var_3.d.x, min(global2.d.x, 2147483647i >> (0u % 32u)), 1i, -2147483647i)), global2.e.x);
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = arg_2;
    var var_1 = Struct_1(var_0.a, _wgslsmith_f_op_f32(global2.b - -957f), abs(~vec4<i32>(arg_2.d.x, abs(global2.d.x), 36278i, 2147483647i)), vec4<i32>(arg_1, arg_1, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, -22141i, ~var_0.d.x), ~vec3<i32>(arg_0, arg_2.d.x, 0i)), select(reverseBits(1i), 2147483647i, any(select(vec4<bool>(var_0.e.x, var_0.e.x, true, true), vec4<bool>(true, true, false, global2.e.x), vec4<bool>(var_0.e.x, true, false, arg_2.e.x))))), arg_2.e);
    global2 = global0[_wgslsmith_index_u32(4294967295u, 25u)];
    var_0 = arg_2;
    var_1 = arg_2;
    return global0[_wgslsmith_index_u32(u_input.a.x, 25u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(reverseBits(max(reverseBits(_wgslsmith_mult_u32(u_input.a.x, global2.a)), 19634u)), min(_wgslsmith_mult_u32(1u, u_input.a.x) << (4294967295u % 32u), _wgslsmith_mod_u32(0u, global2.a)) >> (global2.a % 32u));
    let var_1 = func_5(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(max(global2.d.x, global2.c.x), abs(global2.d.x)), global2.d.xw), ~0i), 359i | global2.d.x, Struct_1(_wgslsmith_mod_u32(_wgslsmith_div_u32(~4294967295u, u_input.a.x), _wgslsmith_div_u32(49881u, 58783u)), global2.b, func_4(0i, vec4<u32>(~u_input.a.x, reverseBits(1u), ~12656u, u_input.a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1646f, global1.x, global1.x, -213f))) - _wgslsmith_f_op_vec4_f32(func_1(global2.c.x, -3918i, Struct_1(var_0.x, 1435f, vec4<i32>(global2.c.x, global2.d.x, 1i, global2.c.x), global2.d, vec3<bool>(true, false, global2.e.x)))))), global2.d, global2.e));
    let var_2 = -(~var_1.d.x);
    global1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_1(-1i, 2147483647i, global0[_wgslsmith_index_u32(~u_input.a.x, 25u)])).x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(global2.e)) + var_1.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + global1.x) + _wgslsmith_div_f32(global2.b, 1451f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-200f * global1.x) + global1.x)), global1.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(-1919f * global2.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -733f) - _wgslsmith_f_op_f32(min(-567f, global1.x)))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-421f, _wgslsmith_f_op_f32(abs(global2.b)), _wgslsmith_f_op_f32(-347f + _wgslsmith_f_op_f32(floor(global2.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(975f * -854f), _wgslsmith_f_op_f32(-global1.x))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(func_5(0i, var_1.c.x, global0[_wgslsmith_index_u32(u_input.a.x, 25u)]), global2.c.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 376f, 1646f, -970f)))));
    global2 = Struct_1(_wgslsmith_dot_vec3_u32(~(vec3<u32>(var_1.a, u_input.a.x, 0u) ^ (vec3<u32>(57057u, 73389u, 83810u) >> (vec3<u32>(16318u, 43982u, var_1.a) % vec3<u32>(32u)))), select(countOneBits(vec3<u32>(global2.a, 23766u, global2.a)), select(~vec3<u32>(1u, var_1.a, global2.a), select(vec3<u32>(var_0.x, 3219u, var_1.a), vec3<u32>(var_0.x, 1u, 7332u), vec3<bool>(true, global2.e.x, false)), any(vec4<bool>(false, false, global2.e.x, global2.e.x))), func_5(0i, i32(-1i) * -2147483647i, func_5(31433i, -2147483647i, var_1)).e)), _wgslsmith_f_op_f32(func_3(func_5(38957i, func_5(reverseBits(global2.c.x), var_1.d.x, func_5(var_1.d.x, -37668i, var_1)).d.x, func_5(var_1.d.x, ~var_2, var_1)).e)), ~vec4<i32>(var_1.d.x, _wgslsmith_mod_i32(~global2.c.x, global2.d.x ^ var_1.c.x), 1i, _wgslsmith_dot_vec3_i32(~global2.c.yxx, vec3<i32>(global2.d.x, global2.d.x, global2.d.x) << (vec3<u32>(4294967295u, 0u, 87481u) % vec3<u32>(32u)))), var_1.c, var_1.e);
    global0 = array<Struct_1, 25>();
    global1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(586f, -1833f)), var_1.b, func_5(2147483647i, ~(24958i ^ var_2), Struct_1(33047u, var_1.b, global2.c, vec4<i32>(0i, global2.d.x, -2147483647i, var_2), var_1.e)).b, _wgslsmith_f_op_f32(max(global2.b, global2.b))));
    let var_3 = ~firstTrailingBit(-(global2.d.x << (u_input.a.x % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(13495u, 1u, u_input.a.x, var_1.a), vec4<u32>(var_0.x, 17050u, var_1.a, 4294967295u)), firstLeadingBit(vec4<u32>(var_1.a, 4294967295u, 22041u, var_1.a) ^ vec4<u32>(41913u, global2.a, var_0.x, u_input.a.x))), global2.a);
}

