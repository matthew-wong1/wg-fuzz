struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: i32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 22> = array<vec4<f32>, 22>(vec4<f32>(-733f, -218f, -1291f, -787f), vec4<f32>(-832f, 107f, 500f, -360f), vec4<f32>(-374f, 1000f, 603f, -1232f), vec4<f32>(-908f, 707f, 376f, -1000f), vec4<f32>(323f, 795f, 387f, -450f), vec4<f32>(931f, -1257f, 1395f, 1260f), vec4<f32>(-1237f, -789f, 355f, -1162f), vec4<f32>(-1497f, 1854f, 335f, -2221f), vec4<f32>(-578f, 1039f, -242f, -547f), vec4<f32>(-776f, 182f, 1665f, -794f), vec4<f32>(-1014f, 754f, 834f, -100f), vec4<f32>(1753f, -372f, -1450f, 1821f), vec4<f32>(-441f, 408f, -971f, 1000f), vec4<f32>(912f, 1425f, 1814f, -522f), vec4<f32>(668f, -253f, -543f, 3091f), vec4<f32>(727f, -1154f, 1928f, -232f), vec4<f32>(751f, 613f, -383f, -1169f), vec4<f32>(1000f, -222f, -498f, -1954f), vec4<f32>(176f, 1850f, -408f, 596f), vec4<f32>(1691f, -662f, 1416f, -722f), vec4<f32>(-493f, -1001f, 829f, 883f), vec4<f32>(-118f, -906f, 668f, 136f));

var<private> global1: vec3<i32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<f32>) -> u32 {
    var var_0 = Struct_1(~_wgslsmith_add_u32(~(53664u << (u_input.c.x % 32u)), ~(~u_input.a.x)), !(!select(select(vec4<bool>(true, false, arg_0.x, true), vec4<bool>(arg_0.x, false, false, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true)), !vec4<bool>(false, arg_0.x, true, true), !vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x))), countOneBits(u_input.b), min(vec3<i32>(-1i) * -vec3<i32>(global1.x, 19235i, global1.x), -firstLeadingBit(vec3<i32>(-1i, global1.x, -2147483647i))) | ~abs(vec3<i32>(u_input.d, global1.x, 79252i)));
    global1 = firstTrailingBit(vec3<i32>(10066i, _wgslsmith_mod_i32(5801i, _wgslsmith_sub_i32(_wgslsmith_div_i32(var_0.c, 0i), countOneBits(global1.x))), _wgslsmith_dot_vec2_i32(vec2<i32>(firstLeadingBit(-1i), countOneBits(-1i)), var_0.d.zy)));
    global0 = array<vec4<f32>, 22>();
    var var_1 = !(~var_0.d.x == _wgslsmith_dot_vec4_i32(-vec4<i32>(global1.x, 1i, 0i, 58517i) >> (vec4<u32>(4294967295u, 0u, 4294967295u, var_0.a) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_sub_i32(-1i, -37338i), var_0.c, 52833i, firstLeadingBit(0i))));
    var var_2 = Struct_1(max(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a, var_0.a), u_input.c.xx) ^ u_input.c.x, ~4407u >> (~var_0.a % 32u)) & 1u, vec4<bool>(true, false, false, !select(all(vec2<bool>(false, var_0.b.x)), arg_0.x || arg_0.x, var_0.b.x && false)), 2147483647i, abs(~vec3<i32>(_wgslsmith_div_i32(global1.x, 2147483647i), global1.x, _wgslsmith_add_i32(0i, u_input.d))));
    return 19860u;
}

fn func_2() -> Struct_1 {
    global0 = array<vec4<f32>, 22>();
    let var_0 = vec3<u32>(50394u, func_3(vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 4294967295u), 22u)]))), ~u_input.a.x);
    global0 = array<vec4<f32>, 22>();
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1445f)));
    global0 = array<vec4<f32>, 22>();
    return Struct_1(select(~(~(~2882u)), ~81686u, any(vec3<bool>(true, true, true))), !(!(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true)))), global1.x, (~vec3<i32>(global1.x, 41572i, 43487i) >> (select(var_0, vec3<u32>(13776u, 39012u, 1u), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true)) % vec3<u32>(32u))) << (min(vec3<u32>(abs(33528u), ~u_input.a.x, ~39040u), u_input.c) % vec3<u32>(32u)));
}

fn func_1(arg_0: bool, arg_1: vec3<f32>, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = vec3<u32>(u_input.a.x, ~(u_input.e ^ min(_wgslsmith_add_u32(u_input.a.x, u_input.e), ~u_input.a.x)), firstTrailingBit(u_input.a.x));
    var var_1 = -min(reverseBits(~(vec4<i32>(22063i, 0i, -8128i, -2147483647i) >> (vec4<u32>(0u, 1u, u_input.e, 4294967295u) % vec4<u32>(32u)))), vec4<i32>(-(u_input.d ^ u_input.b), -u_input.b, _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.b, u_input.b, global1.x), vec3<i32>(global1.x, -1i, -1i)), _wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.b, 0i), ~(-68161i))));
    var var_2 = func_2();
    var_1 = -(~vec4<i32>(global1.x, -7588i, var_2.c, var_1.x));
    let var_3 = select(!any(!var_2.b), var_2.b.x, -591f >= arg_1.x);
    return Struct_1(u_input.e, var_2.b, global1.x ^ select(_wgslsmith_sub_i32(1i, -2147483647i & u_input.d), _wgslsmith_mod_i32(firstTrailingBit(33598i), 1i), true), -vec3<i32>(firstLeadingBit(0i), var_1.x, var_1.x));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<bool>, arg_2: vec4<bool>, arg_3: Struct_1) -> i32 {
    var var_0 = func_1(arg_2.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-270f * -235f), _wgslsmith_f_op_f32(floor(-216f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -2159f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1097f, -656f, 1310f), vec3<f32>(-330f, 575f, 619f), vec3<bool>(false, true, arg_1.x))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1042f, -1497f, -301f))))), func_1(any(!arg_0.xzw), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-440f, -1002f, -191f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(284f, -1195f, -627f), vec3<f32>(-646f, -1154f, -515f))))), vec2<bool>(true | any(arg_3.b), func_2().b.x)).b.yx).b.x;
    var var_1 = ~_wgslsmith_add_vec3_i32(-countOneBits(-vec3<i32>(34494i, arg_3.d.x, 104i)), ~_wgslsmith_div_vec3_i32(countOneBits(arg_3.d), _wgslsmith_div_vec3_i32(arg_3.d, arg_3.d)));
    let var_2 = vec4<i32>(abs(u_input.b), 2620i, firstTrailingBit(i32(-1i) * -select(var_1.x, global1.x, arg_0.x)), ~u_input.d);
    let var_3 = Struct_1(func_2().a, arg_3.b, select(max(_wgslsmith_clamp_i32(-25102i, func_1(arg_0.x, vec3<f32>(-1376f, 1042f, 1583f), vec2<bool>(true, arg_0.x)).d.x, func_2().c), var_1.x), _wgslsmith_mod_i32(global1.x, arg_3.d.x) >> (firstLeadingBit(~0u) % 32u), true), _wgslsmith_mod_vec3_i32(var_2.zxy, _wgslsmith_sub_vec3_i32(~(vec3<i32>(var_1.x, 69157i, -53231i) << (vec3<u32>(u_input.c.x, u_input.c.x, arg_3.a) % vec3<u32>(32u))), _wgslsmith_sub_vec3_i32(~vec3<i32>(0i, global1.x, var_2.x), ~vec3<i32>(3139i, 7754i, var_1.x)))));
    let var_4 = vec3<i32>(i32(-1i) * -2147483647i, arg_3.d.x, var_1.x);
    return countOneBits(-firstTrailingBit(_wgslsmith_mod_i32(arg_3.c, 1i)));
}

fn func_5(arg_0: i32) -> Struct_1 {
    global0 = array<vec4<f32>, 22>();
    var var_0 = !(!func_1(!(u_input.a.x <= 38518u), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-901f, -1450f, -1000f) - vec3<f32>(644f, 276f, -346f)), vec3<f32>(-359f, 869f, -1506f)), vec2<bool>(true, true)).b);
    var var_1 = ~firstTrailingBit(countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.e, u_input.e, u_input.e, 0u), vec4<u32>(u_input.e, u_input.a.x, u_input.e, 1u))) >> (~min(vec4<u32>(u_input.c.x, 12364u, u_input.a.x, 62921u), vec4<u32>(0u, 1u, 23069u, 51744u)) % vec4<u32>(32u)));
    var var_2 = vec3<i32>(u_input.b, -2147483647i, abs(arg_0) | _wgslsmith_div_i32(~(-19789i), global1.x));
    global0 = array<vec4<f32>, 22>();
    return func_2();
}

fn func_6(arg_0: f32, arg_1: Struct_1, arg_2: vec4<u32>) -> vec2<bool> {
    global0 = array<vec4<f32>, 22>();
    var var_0 = min(global1.x, min(arg_1.d.x >> (arg_2.x % 32u), _wgslsmith_div_i32(global1.x, func_5(2147483647i).c)));
    var var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.x, 36823u), arg_2.xz);
    var_0 = ~(~((-12929i | global1.x) | ~arg_1.d.x) >> ((u_input.e >> (_wgslsmith_div_u32(_wgslsmith_clamp_u32(arg_2.x, arg_2.x, arg_2.x), ~arg_1.a) % 32u)) % 32u));
    var var_2 = -1361f;
    return func_5(~_wgslsmith_mod_i32(abs(u_input.d), 1i) | arg_1.c).b.zy;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(ceil(-819f))), -115f))), func_5(select(func_4(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false)), vec3<bool>(false, false, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), true), func_1(true, vec3<f32>(1090f, 1000f, -2119f), vec2<bool>(false, false))), 34467i, !any(vec4<bool>(true, true, true, true)))), _wgslsmith_mult_vec4_u32(abs(abs(~vec4<u32>(u_input.c.x, 1u, u_input.a.x, u_input.e))), _wgslsmith_mod_vec4_u32(~(~vec4<u32>(0u, u_input.c.x, 7573u, 1u)), reverseBits(~vec4<u32>(1u, 1u, 39295u, 1u)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(123f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1215f, -398f) + -1633f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-469f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1130f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-197f - 139f)))), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-219f, _wgslsmith_f_op_f32(f32(-1f) * -1480f))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(886f)), _wgslsmith_f_op_f32(-456f * 989f), false)))), _wgslsmith_f_op_f32(sign(-295f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-755f + -872f) * _wgslsmith_f_op_f32(f32(-1f) * -1614f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-599f)))))))));
    global0 = array<vec4<f32>, 22>();
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-584f, var_1.x, var_1.x, var_1.x), global0[_wgslsmith_index_u32(u_input.c.x, 22u)])) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(342f, -1302f, var_1.x, var_1.x))))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f + 666f))), var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + -2094f)), _wgslsmith_f_op_f32(var_1.x * -828f))));
    var var_3 = vec4<bool>(any(!(!(!vec4<bool>(var_0.x, var_0.x, false, var_0.x)))), true, var_0.x, !(true || all(var_0)));
    var var_4 = func_1(true, var_2.wxy, vec2<bool>(true, !(!func_5(u_input.b).b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(u_input.c));
}

