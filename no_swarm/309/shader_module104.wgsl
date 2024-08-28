struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec4<u32>,
    d: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec3<u32>,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: i32,
    d: vec3<bool>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: f32,
    c: bool,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: f32,
    d: vec3<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 17> = array<Struct_4, 17>(Struct_4(vec4<bool>(true, false, false, false), -137f, false, vec2<u32>(16696u, 1u)), Struct_4(vec4<bool>(true, false, true, true), -105f, true, vec2<u32>(0u, 118479u)), Struct_4(vec4<bool>(false, false, false, false), -1761f, false, vec2<u32>(4294967295u, 5766u)), Struct_4(vec4<bool>(true, true, true, true), 663f, true, vec2<u32>(22815u, 1232u)), Struct_4(vec4<bool>(true, true, true, true), -405f, true, vec2<u32>(64653u, 38515u)), Struct_4(vec4<bool>(true, true, true, true), -506f, true, vec2<u32>(0u, 89875u)), Struct_4(vec4<bool>(false, true, false, false), -394f, true, vec2<u32>(1u, 0u)), Struct_4(vec4<bool>(true, false, true, false), -1924f, false, vec2<u32>(1u, 27486u)), Struct_4(vec4<bool>(true, true, false, false), 1949f, false, vec2<u32>(48693u, 25579u)), Struct_4(vec4<bool>(false, false, true, true), -1000f, false, vec2<u32>(4294967295u, 1u)), Struct_4(vec4<bool>(false, true, false, true), -629f, false, vec2<u32>(23595u, 29273u)), Struct_4(vec4<bool>(false, false, false, false), 1320f, true, vec2<u32>(9296u, 36409u)), Struct_4(vec4<bool>(true, true, false, false), 1936f, true, vec2<u32>(0u, 46661u)), Struct_4(vec4<bool>(true, true, false, false), -312f, true, vec2<u32>(0u, 53426u)), Struct_4(vec4<bool>(false, true, true, true), -535f, false, vec2<u32>(13391u, 13172u)), Struct_4(vec4<bool>(true, false, true, false), 1051f, false, vec2<u32>(31217u, 5593u)), Struct_4(vec4<bool>(false, false, false, true), -465f, true, vec2<u32>(1u, 35927u)));

var<private> global1: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec4<f32>(256f, 1137f, 749f, 299f), 1090f, vec4<u32>(4294967295u, 0u, 65256u, 4294967295u), -1000f), Struct_1(vec4<f32>(1152f, 725f, -1000f, 1410f), -1852f, vec4<u32>(0u, 7600u, 1u, 26175u), 183f), Struct_1(vec4<f32>(1000f, -1509f, -485f, -1318f), -1920f, vec4<u32>(4294967295u, 4294967295u, 4294967295u, 1u), 844f), Struct_1(vec4<f32>(-1000f, 144f, 584f, 1364f), 1593f, vec4<u32>(52633u, 1u, 0u, 4183u), 118f), Struct_1(vec4<f32>(1000f, -945f, 1030f, -1986f), 1091f, vec4<u32>(55145u, 1u, 0u, 35608u), 1845f), Struct_1(vec4<f32>(1826f, 2253f, -450f, -2149f), -459f, vec4<u32>(1589u, 0u, 27164u, 0u), -1106f), Struct_1(vec4<f32>(103f, -253f, -359f, 488f), 1148f, vec4<u32>(23450u, 0u, 8821u, 1u), -1642f), Struct_1(vec4<f32>(1804f, 1226f, 1575f, -1745f), -1251f, vec4<u32>(4294967295u, 0u, 4294967295u, 0u), -669f), Struct_1(vec4<f32>(-893f, 940f, 440f, -407f), -703f, vec4<u32>(1u, 0u, 7129u, 4893u), 450f), Struct_1(vec4<f32>(-620f, 560f, 540f, -1048f), -420f, vec4<u32>(1u, 2840u, 4294967295u, 4294967295u), -1255f), Struct_1(vec4<f32>(-830f, 1365f, -199f, 500f), 629f, vec4<u32>(3433u, 1u, 31831u, 1u), -795f), Struct_1(vec4<f32>(-480f, -903f, 1000f, 1046f), 298f, vec4<u32>(0u, 1u, 1u, 33555u), 587f), Struct_1(vec4<f32>(-1479f, 1167f, 1214f, 1430f), -185f, vec4<u32>(1u, 4294967295u, 1u, 27993u), -190f), Struct_1(vec4<f32>(1075f, -691f, -123f, -228f), 298f, vec4<u32>(4294967295u, 0u, 4135u, 1u), -927f));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: vec3<i32>) -> f32 {
    let var_0 = vec2<u32>(firstTrailingBit(arg_0.a.c.x), ~u_input.b.x);
    let var_1 = Struct_3(arg_0.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-230f, _wgslsmith_f_op_f32(exp2(arg_0.a.b)), -542f, 1f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.b, -510f, arg_0.b.x, arg_0.a.a.x) - vec4<f32>(arg_0.b.x, 181f, 2170f, -1000f)) - _wgslsmith_f_op_vec4_f32(arg_0.b * vec4<f32>(1000f, arg_0.a.d, arg_0.b.x, arg_0.b.x))), arg_0.d.x)) + arg_0.b), 1i, !select(vec3<bool>(select(true, arg_0.d.x, arg_0.d.x), arg_0.d.x, !arg_0.d.x), !select(vec3<bool>(false, arg_0.d.x, true), vec3<bool>(true, false, false), vec3<bool>(arg_0.d.x, arg_0.d.x, false)), arg_0.d.x));
    global0 = array<Struct_4, 17>();
    return arg_0.b.x;
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: u32) -> i32 {
    global0 = array<Struct_4, 17>();
    var var_0 = arg_1.e.x;
    global0 = array<Struct_4, 17>();
    let var_1 = u_input.a;
    var_0 = arg_1.e.x;
    return ~24828i;
}

fn func_2(arg_0: vec4<bool>) -> Struct_3 {
    var var_0 = abs(u_input.a.x) | ~u_input.a.x;
    let var_1 = 6211u;
    let var_2 = true;
    global0 = array<Struct_4, 17>();
    var_0 = _wgslsmith_mult_i32(func_4(1607f, Struct_2(u_input.a.x, Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-354f, -1330f, -1024f, -1306f)), -698f, ~vec4<u32>(4294967295u, 4294967295u, u_input.c.x, var_1), 1f), Struct_1(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1548f, -1417f, -749f, -1630f))), _wgslsmith_f_op_f32(min(-1479f, 681f)), vec4<u32>(u_input.c.x, u_input.d.x, var_1, 4294967295u), _wgslsmith_f_op_f32(func_3(Struct_3(Struct_1(vec4<f32>(-194f, -957f, 674f, -1409f), -699f, vec4<u32>(var_1, 17535u, 0u, u_input.b.x), -1101f), vec4<f32>(-1132f, 433f, 313f, 118f), 0i, vec3<bool>(false, var_2, true)), vec3<i32>(1i, 1i, u_input.a.x)))), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c.x, var_1, u_input.d.x), abs(vec3<u32>(1417u, 1u, var_1)), ~vec3<u32>(u_input.d.x, 4294967295u, 9109u)), vec3<bool>(u_input.a.x >= u_input.a.x, false, any(arg_0.wz))), u_input.c.x), i32(-1i) * -max(_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_dot_vec2_i32(u_input.a.xy, u_input.a.yx)));
    return Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1137f, 967f, 1544f, 1086f) - vec4<f32>(1211f, -300f, -667f, -1000f)))), -360f, vec4<u32>(1u, 4294967295u & u_input.d.x, ~max(var_1, 20565u), 1u), 448f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-248f, -611f, 648f, 646f) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1575f, 673f, 243f, -448f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1116f, -414f, -205f, 1434f)))), -80360i, vec3<bool>(select(true, !var_2, false) && true, arg_0.x, false));
}

fn func_1(arg_0: u32) -> vec4<u32> {
    let var_0 = func_2(!vec4<bool>(true, true, true, 1i > (u_input.a.x & -37530i)));
    global0 = array<Struct_4, 17>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.a.x) * _wgslsmith_f_op_f32(-var_0.b.x))) + _wgslsmith_f_op_f32(floor(382f))));
    var var_2 = select(vec2<bool>(false, var_0.d.x), var_0.d.zy, false);
    let var_3 = _wgslsmith_sub_i32(reverseBits(~_wgslsmith_clamp_i32(-1i, -8090i, u_input.a.x)), -u_input.a.x);
    return select(~(~(~(~vec4<u32>(arg_0, u_input.d.x, arg_0, u_input.b.x)))), ~vec4<u32>(arg_0, _wgslsmith_dot_vec4_u32(vec4<u32>(67405u, 1u, u_input.c.x, var_0.a.c.x), vec4<u32>(18176u, 68874u, 0u, 1u)), 38238u, 24479u) << (vec4<u32>(u_input.b.x, u_input.c.x, min(5485u, u_input.d.x), _wgslsmith_mod_u32(var_0.a.c.x ^ arg_0, var_0.a.c.x)) % vec4<u32>(32u)), var_0.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(1u, _wgslsmith_mod_u32(u_input.c.x, 25798u), ~u_input.b.x, ~9861u), ~abs(vec4<u32>(u_input.c.x, 1u, u_input.d.x, u_input.b.x))), abs(countOneBits(_wgslsmith_sub_vec4_u32(func_1(4294967295u), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, 1u, u_input.b.x, u_input.c.x), vec4<u32>(u_input.c.x, u_input.d.x, u_input.d.x, 4294967295u))))));
    let var_1 = Struct_4(select(!vec4<bool>(any(vec4<bool>(false, false, true, false)), -30297i <= u_input.a.x, true, true), !select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), false), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), true), any(select(vec2<bool>(false, false), vec2<bool>(false, true), true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(974f, -747f))))))), all(func_2(vec4<bool>(true, true, all(vec3<bool>(true, false, false)), true)).d.zx), ~(~vec2<u32>(1u, _wgslsmith_mult_u32(67059u, var_0.x))));
    let var_2 = Struct_3(global1[_wgslsmith_index_u32(reverseBits(var_1.d.x), 14u)], vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b - var_1.b)) - var_1.b), var_1.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1257f)), _wgslsmith_f_op_f32(var_1.b - func_2(vec4<bool>(false, var_1.a.x, var_1.a.x, true)).a.d)), -613f), ~u_input.a.x, func_2(select(var_1.a, select(var_1.a, var_1.a, var_1.c), _wgslsmith_clamp_i32(-1i, u_input.a.x, -36986i) > u_input.a.x)).d);
    let var_3 = -37054i;
    var var_4 = select(11880u, ~_wgslsmith_dot_vec2_u32(max(firstTrailingBit(vec2<u32>(var_0.x, var_0.x)), func_2(vec4<bool>(var_1.c, true, true, false)).a.c.wy), vec2<u32>(var_2.a.c.x, _wgslsmith_mult_u32(4294967295u, var_1.d.x))), true);
    var var_5 = 1u;
    global1 = array<Struct_1, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.xww, -47420i, var_2.a.a.x, _wgslsmith_sub_vec3_u32(~vec3<u32>(~7811u, 1u, u_input.c.x), abs(reverseBits(abs(var_0.zzx)))), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, max(var_2.a.c.x | u_input.c.x, ~44567u), _wgslsmith_add_u32(firstTrailingBit(7616u), u_input.b.x)), reverseBits(var_2.a.c.yxx)));
}

