struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec3<i32>,
    c: i32,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 18> = array<Struct_3, 18>(Struct_3(4294967295u, 251f, Struct_2(vec3<f32>(686f, 623f, -2285f), vec4<i32>(-11929i, 22903i, i32(-2147483648), 0i), vec3<i32>(-1i, 0i, -1i))), Struct_3(3889u, -921f, Struct_2(vec3<f32>(597f, -303f, -268f), vec4<i32>(6247i, -1i, -1i, i32(-2147483648)), vec3<i32>(10842i, i32(-2147483648), 15572i))), Struct_3(1u, -1000f, Struct_2(vec3<f32>(892f, -1000f, 812f), vec4<i32>(-10350i, -16296i, i32(-2147483648), i32(-2147483648)), vec3<i32>(0i, 53729i, 37016i))), Struct_3(18370u, -1000f, Struct_2(vec3<f32>(-1304f, -1397f, -242f), vec4<i32>(-17675i, -8749i, i32(-2147483648), 24461i), vec3<i32>(-34654i, 2016i, -32293i))), Struct_3(4294967295u, 1000f, Struct_2(vec3<f32>(-546f, -1130f, 759f), vec4<i32>(0i, 2315i, -1i, 6449i), vec3<i32>(0i, -11495i, 0i))), Struct_3(1u, 844f, Struct_2(vec3<f32>(-414f, 226f, 1424f), vec4<i32>(-8678i, 2147483647i, -1i, -30673i), vec3<i32>(71926i, -1i, -11478i))), Struct_3(35422u, -172f, Struct_2(vec3<f32>(-241f, -773f, 793f), vec4<i32>(80623i, 3702i, -1i, -1i), vec3<i32>(0i, 2147483647i, 21429i))), Struct_3(13240u, 760f, Struct_2(vec3<f32>(1025f, 648f, 1133f), vec4<i32>(i32(-2147483648), 2147483647i, -78227i, 1i), vec3<i32>(-1i, -1i, 4273i))), Struct_3(5310u, 1446f, Struct_2(vec3<f32>(1052f, 710f, -654f), vec4<i32>(15078i, i32(-2147483648), -36783i, 2147483647i), vec3<i32>(-23883i, 2147483647i, -61728i))), Struct_3(0u, -970f, Struct_2(vec3<f32>(139f, -820f, -404f), vec4<i32>(-5962i, 2147483647i, 1i, i32(-2147483648)), vec3<i32>(1i, 1i, -1i))), Struct_3(4294967295u, 1006f, Struct_2(vec3<f32>(-1000f, 785f, 682f), vec4<i32>(i32(-2147483648), 2147483647i, 12214i, -1i), vec3<i32>(54395i, 1i, 0i))), Struct_3(0u, 130f, Struct_2(vec3<f32>(-324f, -2059f, 1235f), vec4<i32>(-1i, 2147483647i, 1i, -1i), vec3<i32>(67534i, 11297i, 0i))), Struct_3(1u, -220f, Struct_2(vec3<f32>(-1926f, -121f, 273f), vec4<i32>(-108364i, 50063i, 45519i, 3398i), vec3<i32>(1i, 0i, -20255i))), Struct_3(1u, -1000f, Struct_2(vec3<f32>(-647f, 1000f, -137f), vec4<i32>(2147483647i, -32838i, -7220i, 1i), vec3<i32>(32128i, i32(-2147483648), i32(-2147483648)))), Struct_3(5794u, 2159f, Struct_2(vec3<f32>(1009f, 329f, -318f), vec4<i32>(23048i, 1i, -32597i, -36868i), vec3<i32>(-1i, -75739i, 0i))), Struct_3(8575u, -2080f, Struct_2(vec3<f32>(350f, 791f, 112f), vec4<i32>(0i, 1i, -1i, 20280i), vec3<i32>(33162i, -6234i, 2147483647i))), Struct_3(5201u, -1074f, Struct_2(vec3<f32>(-1598f, -748f, -959f), vec4<i32>(-53354i, 22138i, 0i, 1i), vec3<i32>(21663i, 0i, -9229i))), Struct_3(0u, -763f, Struct_2(vec3<f32>(-1709f, 1152f, -609f), vec4<i32>(-8828i, 12202i, 0i, -6418i), vec3<i32>(2147483647i, 68630i, -1i))));

var<private> global1: array<i32, 17>;

var<private> global2: bool = true;

var<private> global3: u32;

var<private> global4: array<vec4<bool>, 5> = array<vec4<bool>, 5>(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
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

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: vec4<f32>, arg_3: vec3<u32>) -> u32 {
    let var_0 = ~arg_3.x >> (u_input.b.x % 32u);
    global4 = array<vec4<bool>, 5>();
    return select(~u_input.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_3.x >> (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_0), vec2<u32>(1u, 14658u)) % 32u), _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(4294967295u, 0u)), u_input.b.zx)), vec2<u32>(~var_0, 1u) ^ ~firstLeadingBit(u_input.b.xx)), _wgslsmith_mod_u32(u_input.b.x, 128u) != 11871u);
}

fn func_4(arg_0: Struct_3) -> vec3<f32> {
    global4 = array<vec4<bool>, 5>();
    global2 = _wgslsmith_div_f32(-394f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-212f, 410f) - _wgslsmith_f_op_f32(ceil(arg_0.c.a.x))))) > -326f;
    global4 = array<vec4<bool>, 5>();
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-337f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b * 1000f) - _wgslsmith_f_op_f32(1000f + -1789f)), _wgslsmith_f_op_f32(-arg_0.b))), countOneBits(_wgslsmith_add_vec4_i32(max(arg_0.c.b, vec4<i32>(0i, -24678i, -13529i, -1i) | arg_0.c.b), firstLeadingBit(-vec4<i32>(2147483647i, u_input.a.x, 49919i, -2147483647i)))), arg_0.c.c);
    global0 = array<Struct_3, 18>();
    return _wgslsmith_f_op_vec3_f32(exp2(arg_0.c.a));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_5, arg_2: vec3<i32>, arg_3: u32) -> i32 {
    var var_0 = arg_1;
    var var_1 = ~4294967295u;
    var var_2 = _wgslsmith_f_op_vec3_f32(func_4(Struct_3(func_3(-23064i, 1f, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1116f, 819f, 913f, -395f))), u_input.b.xww), 1387f, Struct_2(vec3<f32>(1f, 1f, 1f), ~countOneBits(vec4<i32>(arg_0.x, 1i, -3876i, global1[_wgslsmith_index_u32(u_input.b.x, 17u)])), abs(arg_0.xxz)))));
    let var_3 = 1u;
    var_0 = Struct_5(select(select(var_0.a, !vec3<bool>(arg_1.a.x, false, false), !any(arg_1.a)), !vec3<bool>(arg_1.a.x, true, true), false));
    return abs(countOneBits(arg_2.x));
}

fn func_1(arg_0: vec4<i32>) -> Struct_5 {
    global4 = array<vec4<bool>, 5>();
    var var_0 = ~4294967295u;
    global2 = any(select(vec2<bool>(_wgslsmith_div_i32(36641i, u_input.a.x) == ~(-7251i), false), vec2<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 17u)] > func_2(arg_0, Struct_5(vec3<bool>(true, false, true)), vec3<i32>(arg_0.x, -1i, -37292i), u_input.b.x), true), !vec2<bool>(1i >= arg_0.x, true)));
    return Struct_5(vec3<bool>(any(select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, false), vec2<bool>(true, true))), any(!global4[_wgslsmith_index_u32(max(u_input.b.x, 0u), 5u)]), false));
}

fn func_5(arg_0: Struct_5, arg_1: Struct_2) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(245f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_1.a.x, -1804f, false)), _wgslsmith_f_op_f32(-arg_1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2313f, -1168f, 690f, 1099f) * vec4<f32>(arg_1.a.x, arg_1.a.x, -676f, arg_1.a.x)) * vec4<f32>(756f, arg_1.a.x, arg_1.a.x, arg_1.a.x))))));
    var var_1 = ~arg_1.b;
    global4 = array<vec4<bool>, 5>();
    let var_2 = var_0.x;
    var_1 = -firstLeadingBit(vec4<i32>(u_input.a.x, var_1.x, global1[_wgslsmith_index_u32(15022u, 17u)], 10029i << ((u_input.b.x | 38745u) % 32u)));
    return Struct_4(_wgslsmith_f_op_vec3_f32(func_4(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, select(1u, 23710u, true), u_input.b.x), ~(~u_input.b.wzz)), 18u)])).x, var_1.zww >> (abs(firstTrailingBit(vec3<u32>(10634u, u_input.b.x, 62247u)) ^ _wgslsmith_clamp_vec3_u32(u_input.b.zzy, u_input.b.zwz, u_input.b.yzx)) % vec3<u32>(32u)), abs(abs(u_input.a.x | _wgslsmith_mod_i32(arg_1.b.x, -21124i))));
}

fn func_6(arg_0: Struct_4, arg_1: bool) -> vec3<i32> {
    let var_0 = arg_0.b;
    let var_1 = Struct_3(86738u, _wgslsmith_f_op_f32(-arg_0.a), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(sign(619f)), -847f, 494f), vec4<i32>(global1[_wgslsmith_index_u32(1u, 17u)] ^ global1[_wgslsmith_index_u32(u_input.b.x, 17u)], -arg_0.c, u_input.a.x, ~global1[_wgslsmith_index_u32(39868u, 17u)]) ^ vec4<i32>(arg_0.b.x | u_input.a.x, _wgslsmith_clamp_i32(var_0.x, var_0.x, var_0.x), _wgslsmith_sub_i32(u_input.a.x, global1[_wgslsmith_index_u32(60092u, 17u)]), _wgslsmith_add_i32(-22633i, global1[_wgslsmith_index_u32(1u, 17u)])), -reverseBits(var_0)));
    global2 = any(vec3<bool>(true && !any(vec3<bool>(false, true, true)), arg_1, !all(vec3<bool>(arg_1, true, true))));
    global2 = arg_1 || !arg_1;
    global4 = array<vec4<bool>, 5>();
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(exp2(1f)), -func_6(func_5(func_1(vec4<i32>(u_input.a.x, 19909i, global1[_wgslsmith_index_u32(1u, 17u)], -59550i)), Struct_2(vec3<f32>(1000f, 787f, -601f), vec4<i32>(u_input.a.x, global1[_wgslsmith_index_u32(u_input.b.x, 17u)], 1i, -1i), vec3<i32>(u_input.a.x, 63453i, u_input.a.x))), true), u_input.a.x);
    var_0 = Struct_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.a * 908f))), 337f)), vec3<i32>(1i, 0i, firstLeadingBit(global1[_wgslsmith_index_u32(abs(33736u), 17u)])), _wgslsmith_dot_vec4_i32(~(-countOneBits(vec4<i32>(1i, u_input.a.x, 0i, u_input.a.x))), ~vec4<i32>(8654i, func_6(Struct_4(var_0.a, var_0.b, u_input.a.x), true).x, 2147483647i, 22505i)));
    let var_1 = !vec2<bool>(all(vec2<bool>(true, true)), false);
    var var_2 = Struct_4(func_5(func_1(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, 60122i, -2493i, 0i), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, u_input.a.x, 1i, var_0.c), vec4<i32>(var_0.c, 27434i, u_input.a.x, var_0.c)))), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, 1000f, 940f), vec3<f32>(-445f, 1465f, 1000f), vec3<bool>(var_1.x, var_1.x, true)))), countOneBits(~vec4<i32>(var_0.c, u_input.a.x, u_input.a.x, -304i)), func_5(func_1(vec4<i32>(2147483647i, -1i, -2147483647i, u_input.a.x)), Struct_2(vec3<f32>(var_0.a, var_0.a, -2358f), vec4<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 17u)], 2147483647i, 0i, var_0.c), var_0.b)).b)).a, abs(vec3<i32>(abs(~9065i), -1i, 28371i)), ~_wgslsmith_div_i32(-12323i, func_5(func_1(vec4<i32>(var_0.c, var_0.b.x, u_input.a.x, 1i)), Struct_2(vec3<f32>(829f, var_0.a, var_0.a), vec4<i32>(u_input.a.x, -764i, 0i, 25236i), var_0.b)).c));
    var var_3 = ~(~u_input.a.x << (~(~u_input.b.x) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(-795f)));
}

