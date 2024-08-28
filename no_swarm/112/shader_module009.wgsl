struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec4<i32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 32> = array<vec2<f32>, 32>(vec2<f32>(-1458f, 522f), vec2<f32>(-264f, 1457f), vec2<f32>(585f, -570f), vec2<f32>(829f, 889f), vec2<f32>(1600f, -259f), vec2<f32>(1387f, 537f), vec2<f32>(-785f, -1531f), vec2<f32>(190f, -355f), vec2<f32>(100f, -347f), vec2<f32>(542f, -1077f), vec2<f32>(-425f, 1000f), vec2<f32>(768f, -481f), vec2<f32>(1622f, -897f), vec2<f32>(-987f, -603f), vec2<f32>(178f, 1000f), vec2<f32>(126f, -1239f), vec2<f32>(577f, -821f), vec2<f32>(560f, 552f), vec2<f32>(-1000f, 686f), vec2<f32>(-444f, 607f), vec2<f32>(676f, 1000f), vec2<f32>(-108f, 878f), vec2<f32>(-210f, 1026f), vec2<f32>(256f, -450f), vec2<f32>(3104f, 298f), vec2<f32>(-1623f, -317f), vec2<f32>(-225f, -1578f), vec2<f32>(-1099f, -816f), vec2<f32>(1385f, -221f), vec2<f32>(-1572f, 617f), vec2<f32>(-618f, -232f), vec2<f32>(486f, 424f));

var<private> global1: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec3<u32>(26904u, 72502u, 5101u), true, vec4<i32>(1i, -54428i, 44757i, 54237i), -85446i), Struct_1(vec3<u32>(6863u, 0u, 0u), false, vec4<i32>(25222i, i32(-2147483648), 1i, i32(-2147483648)), 1i), Struct_1(vec3<u32>(0u, 75475u, 3567u), false, vec4<i32>(1i, i32(-2147483648), -1i, 12930i), i32(-2147483648)), Struct_1(vec3<u32>(24473u, 1u, 1u), false, vec4<i32>(1i, 2147483647i, 19286i, 4061i), 2147483647i), Struct_1(vec3<u32>(69791u, 20713u, 39791u), true, vec4<i32>(2147483647i, -3606i, -14892i, i32(-2147483648)), 15302i), Struct_1(vec3<u32>(1u, 0u, 56816u), true, vec4<i32>(15886i, 12579i, 2147483647i, 0i), 18524i), Struct_1(vec3<u32>(0u, 6794u, 31874u), true, vec4<i32>(1i, 2147483647i, 11320i, -15156i), 34671i), Struct_1(vec3<u32>(0u, 4294967295u, 0u), false, vec4<i32>(-1i, 36290i, -1i, -34890i), -1522i), Struct_1(vec3<u32>(24794u, 83715u, 1u), false, vec4<i32>(19893i, -21029i, 10698i, 1i), 2147483647i), Struct_1(vec3<u32>(28874u, 0u, 12869u), true, vec4<i32>(2147483647i, -1i, 2147483647i, 0i), 10435i), Struct_1(vec3<u32>(28228u, 0u, 1u), true, vec4<i32>(-21944i, -34179i, 2147483647i, 0i), 8395i), Struct_1(vec3<u32>(90278u, 4294967295u, 1u), true, vec4<i32>(65754i, 2147483647i, 1i, 2147483647i), 881i), Struct_1(vec3<u32>(4294967295u, 0u, 44124u), false, vec4<i32>(-20988i, i32(-2147483648), 1i, -1i), i32(-2147483648)), Struct_1(vec3<u32>(9020u, 3094u, 61891u), true, vec4<i32>(-56510i, 2147483647i, -68947i, -1i), 37596i), Struct_1(vec3<u32>(0u, 4294967295u, 48161u), true, vec4<i32>(2147483647i, 6630i, 2147483647i, 26182i), 8309i), Struct_1(vec3<u32>(0u, 1u, 4294967295u), true, vec4<i32>(2147483647i, 0i, -68560i, 1i), 0i), Struct_1(vec3<u32>(35000u, 14852u, 27238u), false, vec4<i32>(-50372i, 1i, 2147483647i, 43535i), -72762i), Struct_1(vec3<u32>(4294967295u, 4294967295u, 1u), false, vec4<i32>(i32(-2147483648), 1i, 13794i, 38492i), 6563i));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<bool>) -> f32 {
    global1 = array<Struct_1, 18>();
    global0 = array<vec2<f32>, 32>();
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)) & _wgslsmith_mod_u32(u_input.b, 13885u)), 44418u) >> (_wgslsmith_add_u32(1u, u_input.b) % 32u), 18u)];
    let var_1 = global1[_wgslsmith_index_u32(4294967295u, 18u)];
    let var_2 = global1[_wgslsmith_index_u32(~(u_input.b ^ min(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(var_0.a, vec3<u32>(63815u, 35309u, 31933u)), var_0.a.x), abs(0u) & var_1.a.x)), 18u)];
    return 138f;
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-958f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-575f - -1760f) + _wgslsmith_f_op_f32(1094f * -128f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(min(vec3<i32>(u_input.a, u_input.a, -46418i), vec3<i32>(18794i, u_input.a, 45767i)) & (vec3<i32>(u_input.a, u_input.a, -2147483647i) & vec3<i32>(0i, u_input.a, u_input.a)), select(!vec4<bool>(true, true, arg_0, false), vec4<bool>(false, true, true, true), vec4<bool>(true, arg_0, arg_0, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-139f + _wgslsmith_f_op_f32(abs(346f)))))));
    let var_1 = global1[_wgslsmith_index_u32(u_input.b, 18u)];
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-779f, -821f) - _wgslsmith_f_op_f32(f32(-1f) * -780f))), 168f) == _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-289f - -383f))))));
    let var_3 = ~(((select(vec4<u32>(u_input.b, u_input.b, 1u, u_input.b), vec4<u32>(u_input.b, 71369u, var_1.a.x, 4294967295u), var_1.b) | vec4<u32>(0u, 63965u, var_1.a.x, 1u)) & _wgslsmith_add_vec4_u32(vec4<u32>(1u, 4294967295u, 4294967295u, u_input.b), ~vec4<u32>(4294967295u, 1u, u_input.b, var_1.a.x))) | ~vec4<u32>(~1u, _wgslsmith_mult_u32(var_1.a.x, var_1.a.x), 5100u, 34531u));
    var var_4 = (4294967295u > ~_wgslsmith_clamp_u32(_wgslsmith_add_u32(var_1.a.x, 0u), 16551u, var_3.x)) & all(select(!vec4<bool>(var_1.b, false, var_2, var_2), !(!vec4<bool>(arg_0, arg_0, false, false)), any(select(vec4<bool>(var_1.b, var_2, false, true), vec4<bool>(true, var_2, var_2, arg_0), var_1.b))));
    return global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(var_3.x, min(46386u, var_1.a.x), 1u), 18u)];
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1) -> vec3<f32> {
    let var_0 = select(select(vec4<bool>(all(vec3<bool>(arg_1.b, arg_1.b, arg_1.b)), arg_1.b, !arg_1.b, arg_1.b), vec4<bool>(true, true, true, !all(vec2<bool>(true, arg_1.b))), func_2(true).b), select(!(!vec4<bool>(false, arg_1.b, arg_1.b, arg_1.b)), vec4<bool>(arg_1.b, all(!vec4<bool>(arg_1.b, false, arg_1.b, arg_1.b)), false && (38505u < arg_1.a.x), false), func_2(!(u_input.b <= 0u)).b), !any(select(vec2<bool>(false, arg_1.b), vec2<bool>(true, true), arg_1.b)));
    let var_1 = select(vec4<bool>(all(!vec3<bool>(arg_1.b, var_0.x, arg_1.b)), any(vec2<bool>(true, true)), func_2(false).b, true), !var_0, all(var_0.xw));
    var var_2 = -arg_0.x;
    var var_3 = arg_1;
    var var_4 = Struct_1(_wgslsmith_clamp_vec3_u32(~(~_wgslsmith_sub_vec3_u32(var_3.a, vec3<u32>(var_3.a.x, var_3.a.x, 86029u))), ~_wgslsmith_add_vec3_u32(var_3.a, vec3<u32>(79067u, var_3.a.x, arg_1.a.x)), ~vec3<u32>(1u, _wgslsmith_clamp_u32(u_input.b, 4294967295u, u_input.b), abs(0u))), var_3.b, _wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.d, arg_0.x, 19371i, ~(-u_input.a)), arg_0), _wgslsmith_mult_i32(min(-firstLeadingBit(21120i), min(countOneBits(0i), abs(arg_0.x))), _wgslsmith_div_i32(2147483647i, select(_wgslsmith_add_i32(-1i, 1i), min(-1i, arg_1.d), any(vec3<bool>(var_0.x, true, var_3.b))))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1306f, -357f, -730f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(644f, -2140f, -1315f))))))));
}

fn func_1(arg_0: f32, arg_1: vec3<f32>, arg_2: Struct_1) -> u32 {
    global1 = array<Struct_1, 18>();
    var var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(arg_1, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2220f, arg_0, arg_1.x) + arg_1), _wgslsmith_f_op_vec3_f32(min(arg_1, arg_1)))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(arg_2.c, func_2(true))) * arg_1));
    var var_2 = var_1;
    let var_3 = u_input.a;
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 32>();
    var var_0 = global1[_wgslsmith_index_u32(0u, 18u)];
    let var_1 = 1132f;
    let var_2 = !var_0.b;
    var var_3 = Struct_1(_wgslsmith_add_vec3_u32(abs(var_0.a), vec3<u32>(_wgslsmith_sub_u32(4294967295u, u_input.b), ~u_input.b, func_1(-1000f, vec3<f32>(var_1, -1000f, var_1), Struct_1(vec3<u32>(u_input.b, u_input.b, 0u), var_2, var_0.c, 39694i))) | vec3<u32>(abs(u_input.b), u_input.b << (15221u % 32u), ~75171u)), func_2(!var_0.b).b, select(vec4<i32>(50730i, 2147483647i, u_input.a, -var_0.d), -min(vec4<i32>(u_input.a, 2147483647i, u_input.a, -24596i), vec4<i32>(var_0.c.x, var_0.c.x, 1i, -21116i)), select(vec4<bool>(var_2, var_0.b, true, false), select(vec4<bool>(var_2, true, var_2, true), vec4<bool>(true, true, var_2, true), var_2), !var_0.b)) & _wgslsmith_div_vec4_i32(vec4<i32>(countOneBits(-41422i), -var_0.c.x, i32(-1i) * -21613i, firstTrailingBit(28395i)), var_0.c), _wgslsmith_dot_vec4_i32(var_0.c, countOneBits(~(~vec4<i32>(u_input.a, -1i, 0i, -1i)))));
    let var_4 = 430f;
    var_0 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~var_3.a.x), _wgslsmith_div_u32((func_2(false).a.x & ~var_3.a.x) ^ ~911u, ~_wgslsmith_dot_vec3_u32(var_0.a, vec3<u32>(0u, var_0.a.x, 1u)))), 18u)];
    global0 = array<vec2<f32>, 32>();
    var_3 = func_2(_wgslsmith_div_f32(1070f, _wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(var_1 - var_4))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1336f, var_1)) * -253f));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a, _wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(47617u, 42339u, 0u) | vec3<u32>(var_3.a.x, 0u, 1u), var_3.a | var_3.a), var_0.a << (_wgslsmith_mult_vec3_u32(var_0.a, vec3<u32>(4294967295u, u_input.b, 0u)) % vec3<u32>(32u))) | abs(vec3<u32>(~1u, firstLeadingBit(var_3.a.x), ~13492u)));
}

