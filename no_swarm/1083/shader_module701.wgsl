struct Struct_1 {
    a: i32,
    b: f32,
    c: i32,
    d: vec4<bool>,
    e: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: vec4<u32>,
    b: f32,
    c: i32,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: i32,
    d: vec3<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(2147483647i, 1872f, 18182i, vec4<bool>(false, false, true, true), 109f), Struct_1(-5631i, -1132f, 40799i, vec4<bool>(true, false, true, false), 502f));

var<private> global1: Struct_1;

var<private> global2: array<Struct_3, 31> = array<Struct_3, 31>(Struct_3(vec2<i32>(43204i, 0i), 22603i, 0u, Struct_1(25398i, 1000f, -19574i, vec4<bool>(false, true, false, true), -602f), Struct_2(1i, Struct_1(i32(-2147483648), 1896f, 19526i, vec4<bool>(false, false, false, true), -1637f), vec2<u32>(0u, 84467u))), Struct_3(vec2<i32>(11227i, -17749i), 1623i, 46516u, Struct_1(6556i, 913f, -1i, vec4<bool>(true, false, true, false), 1000f), Struct_2(-63655i, Struct_1(11683i, -1396f, 1i, vec4<bool>(false, true, true, true), 1000f), vec2<u32>(4294967295u, 0u))), Struct_3(vec2<i32>(30326i, 1i), 8493i, 0u, Struct_1(1i, 543f, -562i, vec4<bool>(false, true, false, true), 425f), Struct_2(35089i, Struct_1(i32(-2147483648), 422f, 55764i, vec4<bool>(true, true, false, false), -1630f), vec2<u32>(35029u, 59538u))), Struct_3(vec2<i32>(2147483647i, 15078i), 2147483647i, 8395u, Struct_1(1i, 1000f, 56658i, vec4<bool>(false, true, false, true), -714f), Struct_2(13819i, Struct_1(-28415i, -592f, 0i, vec4<bool>(true, false, true, false), 1307f), vec2<u32>(32642u, 4294967295u))), Struct_3(vec2<i32>(-23880i, 29981i), 10005i, 0u, Struct_1(1i, -248f, 0i, vec4<bool>(true, false, true, true), -866f), Struct_2(-1i, Struct_1(56047i, -757f, 0i, vec4<bool>(false, false, true, false), 296f), vec2<u32>(80853u, 1u))), Struct_3(vec2<i32>(-1i, 0i), -21061i, 4294967295u, Struct_1(-89443i, 1000f, 56312i, vec4<bool>(true, false, true, false), -216f), Struct_2(2147483647i, Struct_1(2147483647i, -1509f, 0i, vec4<bool>(false, true, false, false), 458f), vec2<u32>(50619u, 1u))), Struct_3(vec2<i32>(i32(-2147483648), 57881i), 19434i, 42822u, Struct_1(25723i, 977f, -27976i, vec4<bool>(true, true, true, false), 687f), Struct_2(1i, Struct_1(42686i, 312f, 2147483647i, vec4<bool>(true, true, false, false), 1486f), vec2<u32>(4294967295u, 35069u))), Struct_3(vec2<i32>(-20006i, -1i), 0i, 0u, Struct_1(43871i, -186f, 2147483647i, vec4<bool>(false, true, true, true), -381f), Struct_2(52896i, Struct_1(-6972i, -1000f, 1438i, vec4<bool>(true, false, false, false), -436f), vec2<u32>(0u, 23792u))), Struct_3(vec2<i32>(42643i, 58416i), -22900i, 17439u, Struct_1(2147483647i, -2167f, 39330i, vec4<bool>(true, true, false, true), -1323f), Struct_2(-4307i, Struct_1(35155i, 696f, 0i, vec4<bool>(true, true, true, true), -1070f), vec2<u32>(0u, 0u))), Struct_3(vec2<i32>(i32(-2147483648), 0i), i32(-2147483648), 1u, Struct_1(2147483647i, 1009f, 52068i, vec4<bool>(true, false, true, true), 544f), Struct_2(25303i, Struct_1(28245i, -2827f, 0i, vec4<bool>(true, false, true, true), 750f), vec2<u32>(11464u, 106118u))), Struct_3(vec2<i32>(1i, 25138i), 35444i, 28111u, Struct_1(i32(-2147483648), -486f, 11685i, vec4<bool>(false, true, false, true), 1171f), Struct_2(0i, Struct_1(2147483647i, 1109f, 1i, vec4<bool>(true, true, true, false), 1000f), vec2<u32>(25175u, 987u))), Struct_3(vec2<i32>(-13224i, -24526i), -47350i, 1u, Struct_1(i32(-2147483648), -1184f, 0i, vec4<bool>(false, true, false, false), 671f), Struct_2(-1i, Struct_1(-1287i, -1192f, -471i, vec4<bool>(true, false, false, true), 317f), vec2<u32>(30822u, 6551u))), Struct_3(vec2<i32>(47636i, -29278i), -23828i, 0u, Struct_1(2147483647i, -370f, -32475i, vec4<bool>(true, false, true, false), 1000f), Struct_2(-3770i, Struct_1(i32(-2147483648), -646f, 2147483647i, vec4<bool>(false, true, false, true), 1317f), vec2<u32>(21249u, 125495u))), Struct_3(vec2<i32>(1i, 4013i), -15842i, 43072u, Struct_1(-19021i, 372f, -2779i, vec4<bool>(true, true, true, false), -1000f), Struct_2(2226i, Struct_1(12368i, -379f, 13022i, vec4<bool>(false, true, false, true), 679f), vec2<u32>(39215u, 40021u))), Struct_3(vec2<i32>(39022i, -33071i), 6718i, 69127u, Struct_1(-1i, -1904f, -50951i, vec4<bool>(false, true, false, false), 214f), Struct_2(-34415i, Struct_1(i32(-2147483648), -1777f, 0i, vec4<bool>(false, false, false, false), 1000f), vec2<u32>(47159u, 4294967295u))), Struct_3(vec2<i32>(-11115i, 2147483647i), -47175i, 4294967295u, Struct_1(84i, 2016f, -49032i, vec4<bool>(true, true, true, true), 355f), Struct_2(-1i, Struct_1(1i, 1242f, 12145i, vec4<bool>(false, false, false, true), -454f), vec2<u32>(0u, 1u))), Struct_3(vec2<i32>(0i, 2147483647i), -28753i, 22734u, Struct_1(1i, 1000f, -1i, vec4<bool>(false, true, true, false), 488f), Struct_2(0i, Struct_1(i32(-2147483648), 2719f, 16303i, vec4<bool>(false, true, false, false), -915f), vec2<u32>(4294967295u, 19107u))), Struct_3(vec2<i32>(2147483647i, -10229i), 1i, 69184u, Struct_1(16419i, -1412f, 92i, vec4<bool>(true, true, true, true), -1391f), Struct_2(-24203i, Struct_1(2147483647i, -1000f, 30252i, vec4<bool>(true, true, true, true), -194f), vec2<u32>(49614u, 29427u))), Struct_3(vec2<i32>(20182i, 6297i), -48911i, 9534u, Struct_1(14293i, 1000f, 1i, vec4<bool>(true, true, false, true), 982f), Struct_2(-12860i, Struct_1(-13543i, 385f, 28966i, vec4<bool>(true, false, true, false), 894f), vec2<u32>(1u, 4294967295u))), Struct_3(vec2<i32>(-5091i, 2147483647i), -30011i, 1u, Struct_1(2147483647i, 215f, 41633i, vec4<bool>(true, true, true, false), -516f), Struct_2(0i, Struct_1(-3255i, 650f, -16502i, vec4<bool>(false, false, false, false), 532f), vec2<u32>(33338u, 6993u))), Struct_3(vec2<i32>(26341i, 33037i), i32(-2147483648), 4294967295u, Struct_1(2147483647i, 161f, i32(-2147483648), vec4<bool>(true, false, false, false), 1610f), Struct_2(41544i, Struct_1(0i, 470f, 0i, vec4<bool>(false, true, false, false), -121f), vec2<u32>(83049u, 35762u))), Struct_3(vec2<i32>(20159i, 1i), 51663i, 0u, Struct_1(604i, 130f, 9453i, vec4<bool>(true, false, true, true), -200f), Struct_2(0i, Struct_1(12073i, -251f, 34631i, vec4<bool>(true, false, true, true), 983f), vec2<u32>(1u, 29887u))), Struct_3(vec2<i32>(i32(-2147483648), -2422i), -19789i, 49746u, Struct_1(i32(-2147483648), -560f, i32(-2147483648), vec4<bool>(false, false, false, false), -211f), Struct_2(-1i, Struct_1(2147483647i, 1531f, -1i, vec4<bool>(true, true, true, true), 490f), vec2<u32>(7552u, 15592u))), Struct_3(vec2<i32>(24640i, 0i), -1i, 0u, Struct_1(34054i, 866f, 5132i, vec4<bool>(true, true, false, true), -1511f), Struct_2(-14324i, Struct_1(-1i, -1301f, 16654i, vec4<bool>(true, true, false, false), -1000f), vec2<u32>(4102u, 1u))), Struct_3(vec2<i32>(1i, 0i), 0i, 44871u, Struct_1(-1i, -636f, -5272i, vec4<bool>(false, false, true, false), 724f), Struct_2(-32761i, Struct_1(-1i, -798f, -15083i, vec4<bool>(false, true, false, true), -761f), vec2<u32>(1u, 4294967295u))), Struct_3(vec2<i32>(-4496i, -1i), 2147483647i, 4294967295u, Struct_1(-9693i, -1325f, -18788i, vec4<bool>(true, true, false, false), -1553f), Struct_2(10385i, Struct_1(20578i, 722f, 1i, vec4<bool>(false, true, true, false), 1046f), vec2<u32>(160u, 4294967295u))), Struct_3(vec2<i32>(i32(-2147483648), 0i), i32(-2147483648), 1u, Struct_1(1i, 673f, 1i, vec4<bool>(false, false, false, false), 1010f), Struct_2(1i, Struct_1(40110i, 1000f, -11439i, vec4<bool>(false, false, true, true), -707f), vec2<u32>(0u, 4294967295u))), Struct_3(vec2<i32>(0i, -1i), i32(-2147483648), 8546u, Struct_1(2147483647i, 237f, 17296i, vec4<bool>(false, true, false, true), 1487f), Struct_2(2147483647i, Struct_1(27125i, 767f, -355i, vec4<bool>(false, true, false, true), 912f), vec2<u32>(0u, 4294967295u))), Struct_3(vec2<i32>(-1i, 0i), 2147483647i, 4294967295u, Struct_1(1i, 443f, 31218i, vec4<bool>(true, true, true, true), -134f), Struct_2(-1i, Struct_1(15928i, -334f, i32(-2147483648), vec4<bool>(true, false, false, true), -130f), vec2<u32>(4294967295u, 77153u))), Struct_3(vec2<i32>(-20371i, -22249i), -2745i, 1u, Struct_1(i32(-2147483648), 897f, 9905i, vec4<bool>(false, true, true, false), -122f), Struct_2(0i, Struct_1(11436i, 1097f, 22065i, vec4<bool>(false, false, false, false), -1056f), vec2<u32>(46248u, 73521u))), Struct_3(vec2<i32>(1i, 22448i), 1i, 3813u, Struct_1(23581i, -967f, i32(-2147483648), vec4<bool>(false, true, false, false), -426f), Struct_2(2147483647i, Struct_1(40617i, 1031f, -16006i, vec4<bool>(false, true, true, true), 1244f), vec2<u32>(22133u, 1u))));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: f32, arg_1: Struct_4, arg_2: bool, arg_3: vec2<f32>) -> bool {
    let var_0 = -1032f;
    return global1.d.x;
}

fn func_3() -> bool {
    let var_0 = u_input.a;
    let var_1 = Struct_2(abs(~global1.c), global0[_wgslsmith_index_u32(select(25805u, ~countOneBits(_wgslsmith_add_u32(u_input.a, var_0)), !any(select(vec2<bool>(false, global1.d.x), global1.d.zy, global1.d.x))), 2u)], firstTrailingBit(vec2<u32>(abs(50376u), 1u)));
    global1 = var_1.b;
    global0 = array<Struct_1, 2>();
    global2 = array<Struct_3, 31>();
    return !(true & global1.d.x);
}

fn func_1(arg_0: vec4<i32>) -> f32 {
    global0 = array<Struct_1, 2>();
    var var_0 = vec2<i32>(~(~2147483647i) | arg_0.x, ~(~_wgslsmith_clamp_i32(~(-20591i), ~global1.a, ~u_input.c.x)));
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-624f, -207f, global1.b))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-308f, global1.e, global1.e)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.e, global1.e, 1130f) * vec3<f32>(global1.e, -1142f, 468f)))), vec3<f32>(916f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.b, 1078f)), -1037f), func_2(global1.e, Struct_4(max(-1i, 2147483647i)), true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1364f, global1.e), vec2<f32>(global1.e, 1000f), false)))))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.e, global1.e, global1.e))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-884f, global1.b, global1.e)))), all(global1.d.yx))));
    global1 = Struct_1(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.b)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2161f, -1000f, false))))), ~(1i << (1u % 32u)) & global1.a, select(global1.d, vec4<bool>(true, func_2(-1113f, Struct_4(u_input.b), global1.d.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, global1.e))), !(!global1.d.x), global1.d.x), vec4<bool>(global1.d.x, !func_3(), true | (u_input.a == 1u), !func_3())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) - _wgslsmith_f_op_f32(-global1.e)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(global1.e)), _wgslsmith_f_op_f32(f32(-1f) * -588f))), !global1.d.x))));
    let var_2 = Struct_3(vec2<i32>(~(~reverseBits(u_input.c.x)), global1.c), var_0.x, countOneBits(u_input.a), global0[_wgslsmith_index_u32(~countOneBits(_wgslsmith_div_u32(~0u, select(18073u, 1u, global1.d.x))), 2u)], Struct_2(_wgslsmith_sub_i32(u_input.c.x, 0i), Struct_1(_wgslsmith_mod_i32(_wgslsmith_mult_i32(var_0.x, var_0.x), _wgslsmith_dot_vec3_i32(arg_0.ywx, vec3<i32>(-24239i, -1i, u_input.c.x))), _wgslsmith_f_op_f32(f32(-1f) * -224f), countOneBits(-u_input.b), !vec4<bool>(true, global1.d.x, false, false), _wgslsmith_div_f32(-691f, _wgslsmith_f_op_f32(-global1.e))), vec2<u32>(~u_input.a, abs(u_input.a & 0u))));
    return global1.b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(_wgslsmith_add_i32(global1.a, 2147483647i), _wgslsmith_f_op_f32(-global1.e), ~u_input.c.x, vec4<bool>(global1.d.x, false, !((1u != u_input.a) & all(global1.d.ywz)), true), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1(vec4<i32>(global1.a, 22363i, u_input.b, u_input.c.x))), global1.e)), -209f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-2312f)), -414f)));
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(_wgslsmith_div_vec2_u32(vec2<u32>(~u_input.a, firstTrailingBit(61130u)), select(vec2<u32>(2957u, 0u), vec2<u32>(23525u, 51884u), global1.d.yx) << (~vec2<u32>(u_input.a, 4294967295u) % vec2<u32>(32u)))), vec2<u32>(~u_input.a & 0u, u_input.a)), 31u)];
    let var_1 = Struct_3(abs(u_input.c.yz), ~max(-1i, var_0.b), _wgslsmith_clamp_u32(~(4294967295u >> (~var_0.e.c.x % 32u)), countOneBits(0u), 20634u | var_0.e.c.x), Struct_1(max(global1.a, -1i), global1.b, 0i, select(vec4<bool>(true, all(global1.d.www), u_input.b == 2147483647i, true), !select(var_0.e.b.d, var_0.d.d, false), var_0.d.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(-vec4<i32>(var_0.e.a, -1i, -2147483647i, var_0.a.x))))), Struct_2((abs(u_input.c.x) & global1.c) ^ (var_0.e.a >> (_wgslsmith_dot_vec4_u32(vec4<u32>(97422u, var_0.e.c.x, u_input.a, var_0.c), vec4<u32>(1u, var_0.c, 4294967295u, var_0.e.c.x)) % 32u)), Struct_1(_wgslsmith_div_i32(select(-1i, u_input.b, false), countOneBits(-43829i)), -1000f, u_input.c.x, select(var_0.d.d, var_0.e.b.d, true), global1.e), vec2<u32>(~u_input.a, ~4294967295u)));
    var var_2 = ~abs(firstLeadingBit(_wgslsmith_mult_u32(_wgslsmith_div_u32(var_1.e.c.x, u_input.a), ~6577u)));
    var var_3 = Struct_4(abs(-var_0.e.b.c));
    var_3 = Struct_4(~_wgslsmith_add_i32(_wgslsmith_div_i32(var_1.b, _wgslsmith_clamp_i32(-53556i, 0i, 46990i)), var_0.e.a));
    global2 = array<Struct_3, 31>();
    var var_4 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.d.b, var_0.e.b.e, global1.e) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1270f, 1829f, var_1.d.b)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -651f), _wgslsmith_f_op_f32(-var_1.d.e), _wgslsmith_f_op_f32(-global1.b)))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.e.b.b, _wgslsmith_f_op_f32(ceil(var_1.e.b.e)), 900f), vec3<f32>(_wgslsmith_f_op_f32(var_0.d.b - _wgslsmith_f_op_f32(-251f - global1.e)), _wgslsmith_f_op_f32(-var_0.e.b.e), 887f))));
    global2 = array<Struct_3, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(var_4.xy, _wgslsmith_f_op_f32(var_0.d.e - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-261f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-159f))))), reverseBits(countOneBits(~u_input.b)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(306f, var_0.e.b.b, var_0.e.b.e) * vec3<f32>(global1.b, var_0.e.b.b, 167f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_4.x, -396f, 114f))))))), ~vec3<i32>(var_3.a, min(var_3.a, _wgslsmith_sub_i32(7994i, var_3.a)), countOneBits(countOneBits(-22014i))));
}

