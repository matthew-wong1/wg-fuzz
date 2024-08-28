struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
    c: Struct_1,
    d: vec2<bool>,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: f32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: Struct_3,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(vec3<f32>(298f, -906f, -2341f), 0u, Struct_1(vec4<i32>(-51419i, -1i, -52685i, -11626i), true), vec2<bool>(false, true), vec3<bool>(false, true, true)), Struct_2(vec3<f32>(1201f, -1391f, -385f), 13335u, Struct_1(vec4<i32>(2147483647i, 21797i, 1i, -1i), true), vec2<bool>(false, true), vec3<bool>(false, false, true)), Struct_2(vec3<f32>(1845f, 1341f, -387f), 73436u, Struct_1(vec4<i32>(-29152i, 1i, -74849i, 2147483647i), false), vec2<bool>(false, false), vec3<bool>(true, false, false)), Struct_2(vec3<f32>(-268f, 347f, -215f), 32754u, Struct_1(vec4<i32>(1i, -1i, -29349i, -12476i), true), vec2<bool>(false, false), vec3<bool>(false, true, false)), Struct_2(vec3<f32>(-762f, -1725f, 1326f), 1u, Struct_1(vec4<i32>(1i, 37993i, 1i, i32(-2147483648)), true), vec2<bool>(true, true), vec3<bool>(true, false, false)), Struct_2(vec3<f32>(1909f, 1118f, 1386f), 64943u, Struct_1(vec4<i32>(0i, -23447i, i32(-2147483648), 15175i), true), vec2<bool>(false, true), vec3<bool>(false, true, true)), Struct_2(vec3<f32>(210f, 224f, 1153f), 28968u, Struct_1(vec4<i32>(-25341i, 0i, i32(-2147483648), 1773i), true), vec2<bool>(false, true), vec3<bool>(false, false, true)), Struct_2(vec3<f32>(-2341f, -1850f, 1646f), 4294967295u, Struct_1(vec4<i32>(i32(-2147483648), -13046i, 1736i, 1i), false), vec2<bool>(false, true), vec3<bool>(false, false, false)), Struct_2(vec3<f32>(1315f, 1321f, -730f), 81146u, Struct_1(vec4<i32>(-30208i, i32(-2147483648), 0i, 2147483647i), true), vec2<bool>(false, true), vec3<bool>(true, false, true)), Struct_2(vec3<f32>(1032f, -229f, -1418f), 90299u, Struct_1(vec4<i32>(24545i, 1i, 1i, 5634i), false), vec2<bool>(false, false), vec3<bool>(false, false, false)), Struct_2(vec3<f32>(-1577f, -1000f, 106f), 0u, Struct_1(vec4<i32>(5103i, i32(-2147483648), 2147483647i, -14004i), false), vec2<bool>(true, false), vec3<bool>(true, false, false)), Struct_2(vec3<f32>(145f, -849f, -887f), 28612u, Struct_1(vec4<i32>(-25561i, -51734i, i32(-2147483648), 2147483647i), false), vec2<bool>(true, true), vec3<bool>(false, false, true)), Struct_2(vec3<f32>(894f, 1190f, 561f), 42462u, Struct_1(vec4<i32>(-26118i, 49540i, -26696i, -11652i), true), vec2<bool>(true, false), vec3<bool>(true, false, false)), Struct_2(vec3<f32>(201f, -675f, -190f), 31233u, Struct_1(vec4<i32>(41065i, -63810i, -24907i, 33179i), false), vec2<bool>(false, false), vec3<bool>(true, true, true)), Struct_2(vec3<f32>(207f, -354f, -117f), 5848u, Struct_1(vec4<i32>(2147483647i, -4820i, 0i, -848i), false), vec2<bool>(true, true), vec3<bool>(false, false, true)), Struct_2(vec3<f32>(-120f, 1922f, -1102f), 22204u, Struct_1(vec4<i32>(-1i, 27014i, 0i, i32(-2147483648)), true), vec2<bool>(true, true), vec3<bool>(true, false, false)), Struct_2(vec3<f32>(-1000f, -814f, 834f), 1u, Struct_1(vec4<i32>(-1i, -423i, 12438i, -54365i), false), vec2<bool>(true, true), vec3<bool>(false, true, false)), Struct_2(vec3<f32>(-736f, -684f, -1225f), 110967u, Struct_1(vec4<i32>(0i, 22161i, 0i, 0i), true), vec2<bool>(false, false), vec3<bool>(false, true, true)), Struct_2(vec3<f32>(-606f, -1010f, 891f), 3396u, Struct_1(vec4<i32>(8510i, -1i, -205i, -5221i), true), vec2<bool>(true, true), vec3<bool>(true, true, true)), Struct_2(vec3<f32>(1399f, -153f, 1503f), 1u, Struct_1(vec4<i32>(-4755i, i32(-2147483648), -2116i, 30795i), true), vec2<bool>(true, false), vec3<bool>(true, false, true)), Struct_2(vec3<f32>(134f, 405f, 278f), 4294967295u, Struct_1(vec4<i32>(18367i, 291i, -55411i, -1i), false), vec2<bool>(true, false), vec3<bool>(false, true, true)), Struct_2(vec3<f32>(-147f, -1222f, 271f), 1u, Struct_1(vec4<i32>(20634i, -2743i, -22313i, 2147483647i), true), vec2<bool>(true, true), vec3<bool>(true, true, true)), Struct_2(vec3<f32>(207f, 468f, -639f), 0u, Struct_1(vec4<i32>(-1i, 2147483647i, 1i, 2110i), true), vec2<bool>(false, true), vec3<bool>(true, false, true)), Struct_2(vec3<f32>(1768f, -1047f, -134f), 68592u, Struct_1(vec4<i32>(1i, 13039i, 27400i, 18576i), true), vec2<bool>(true, false), vec3<bool>(true, false, true)));

var<private> global1: array<vec2<i32>, 7> = array<vec2<i32>, 7>(vec2<i32>(2147483647i, 64678i), vec2<i32>(1144i, -6991i), vec2<i32>(-37058i, 24637i), vec2<i32>(-1i, 2147483647i), vec2<i32>(-2732i, -64799i), vec2<i32>(2147483647i, 0i), vec2<i32>(-50736i, 2147483647i));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec3<i32>) -> i32 {
    global1 = array<vec2<i32>, 7>();
    global1 = array<vec2<i32>, 7>();
    global1 = array<vec2<i32>, 7>();
    var var_0 = _wgslsmith_add_i32(arg_2.x, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(arg_1.c.a.x, u_input.c.x, -1i)), firstLeadingBit(arg_2)), min(arg_1.c.a.x, u_input.c.x))) > 19097i;
    global0 = array<Struct_2, 24>();
    return _wgslsmith_mult_i32(~2147483647i, 0i);
}

fn func_3(arg_0: vec4<bool>) -> vec4<bool> {
    let var_0 = reverseBits(~_wgslsmith_sub_u32(u_input.b, ~_wgslsmith_add_u32(65686u, 51033u)));
    global0 = array<Struct_2, 24>();
    global0 = array<Struct_2, 24>();
    var var_1 = u_input.a;
    var_1 = select(_wgslsmith_mult_vec4_i32(~select(~vec4<i32>(var_1.x, -28082i, var_1.x, u_input.c.x), ~vec4<i32>(31901i, var_1.x, u_input.a.x, u_input.a.x), select(vec4<bool>(arg_0.x, true, false, arg_0.x), arg_0, arg_0)), u_input.a), abs(select(~vec4<i32>(var_1.x, 10392i, var_1.x, u_input.c.x), -u_input.a, false) >> (abs(vec4<u32>(12607u, 0u, 0u, 19054u) >> (u_input.d % vec4<u32>(32u))) % vec4<u32>(32u))), all(!(!select(vec3<bool>(false, arg_0.x, false), vec3<bool>(arg_0.x, true, true), vec3<bool>(arg_0.x, arg_0.x, arg_0.x)))));
    return !arg_0;
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: i32) -> Struct_2 {
    global1 = array<vec2<i32>, 7>();
    let var_0 = Struct_1(_wgslsmith_mult_vec4_i32(u_input.a << (_wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(u_input.d.x, 1u, u_input.b, u_input.b)), max(vec4<u32>(0u, 79894u, 29635u, u_input.b), vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 93515u))) % vec4<u32>(32u)), arg_0), arg_2.b);
    var var_1 = var_0;
    global0 = array<Struct_2, 24>();
    var var_2 = any(arg_1.xyy);
    return Struct_2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(max(-598f, _wgslsmith_f_op_f32(-205f - -1407f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(496f)))), 1235f), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(415f, -276f, 167f)), vec3<f32>(222f, 1000f, 504f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1538f, -199f, -456f)))))))), max(0u, ~23444u), Struct_1(_wgslsmith_sub_vec4_i32(var_0.a, arg_2.a), var_1.b), arg_1.zw, arg_1.xwy);
}

fn func_1() -> Struct_2 {
    global0 = array<Struct_2, 24>();
    global0 = array<Struct_2, 24>();
    var var_0 = func_4(_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(u_input.a, vec4<i32>(2147483647i, func_2(vec2<f32>(674f, -1307f), Struct_2(vec3<f32>(-1866f, -1000f, 102f), 1u, Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), false), vec2<bool>(false, true), vec3<bool>(false, true, true)), u_input.c), i32(-1i) * -1i, 1i)), vec4<i32>(~_wgslsmith_clamp_i32(1i, 2147483647i, 0i), firstTrailingBit(select(u_input.a.x, u_input.c.x, true)), u_input.a.x, 2147483647i)), select(vec4<bool>(true, true, true, true), !func_3(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true))), func_3(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))).x), Struct_1(abs(vec4<i32>(0i << (u_input.d.x % 32u), func_2(vec2<f32>(860f, -228f), global0[_wgslsmith_index_u32(u_input.d.x, 24u)], vec3<i32>(u_input.e, 2147483647i, u_input.c.x)), reverseBits(0i), select(10315i, u_input.a.x, true))), true), -1i);
    global0 = array<Struct_2, 24>();
    global0 = array<Struct_2, 24>();
    return func_4(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.e, firstTrailingBit(u_input.e), var_0.c.a.x << (var_0.b % 32u), u_input.e), min(vec4<i32>(u_input.e, _wgslsmith_mult_i32(-1i, var_0.c.a.x), var_0.c.a.x, 1i), vec4<i32>(abs(-19768i), -var_0.c.a.x, -u_input.c.x, 0i))), func_3(!select(func_3(vec4<bool>(var_0.c.b, var_0.d.x, var_0.e.x, var_0.c.b)), func_3(vec4<bool>(var_0.d.x, var_0.d.x, true, var_0.c.b)), vec4<bool>(true, false, var_0.d.x, var_0.e.x))), var_0.c, -1i);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32, arg_3: u32) -> Struct_1 {
    var var_0 = ~u_input.c.x;
    var_0 = ~u_input.a.x << (func_1().b % 32u);
    global0 = array<Struct_2, 24>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -514f));
    var_0 = _wgslsmith_sub_i32(u_input.a.x << (arg_0.b % 32u), -_wgslsmith_clamp_i32(~(~arg_1.a.x), -firstLeadingBit(arg_2), -_wgslsmith_mult_i32(u_input.c.x, -1i)));
    return arg_0.c;
}

fn func_6(arg_0: i32, arg_1: Struct_1) -> Struct_3 {
    let var_0 = _wgslsmith_add_vec3_u32(vec3<u32>(~countOneBits(4525u), u_input.d.x, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.d.x, 23254u, u_input.b), u_input.d), 1u)) & ~(~vec3<u32>(113221u, u_input.b, u_input.b)), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.d.x, u_input.d.x), u_input.d.wwz), ~u_input.b, _wgslsmith_dot_vec2_u32(max(vec2<u32>(69095u, 69710u), u_input.d.ww), u_input.d.ww)) >> ((countOneBits(u_input.d.xzz) ^ vec3<u32>(~u_input.d.x, ~27187u, 1u)) % vec3<u32>(32u)));
    global0 = array<Struct_2, 24>();
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-529f, 1372f, -1662f, 208f), vec4<f32>(1312f, 379f, 328f, -403f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(804f, -1000f, -821f, -1621f)))) + vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(464f)), 913f)), -254f, func_1().a.x, -832f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(987f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1651f + -321f) + _wgslsmith_f_op_f32(abs(-3044f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1034f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(992f, -1733f, 867f, -752f), vec4<f32>(412f, -2444f, -1542f, 698f), vec4<bool>(false, arg_1.b, true, arg_1.b))), _wgslsmith_div_vec4_f32(vec4<f32>(-344f, 148f, 1184f, 1000f), vec4<f32>(2046f, -391f, 1207f, 362f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1292f, -1228f, 814f, 813f))))));
    global1 = array<vec2<i32>, 7>();
    var var_2 = ~var_0.zy;
    return Struct_3(Struct_1(vec4<i32>(func_5(func_1(), arg_1, -arg_1.a.x, var_2.x).a.x, min(~1i, 2328i), func_4(arg_1.a, vec4<bool>(false, arg_1.b, arg_1.b, arg_1.b), func_4(vec4<i32>(arg_0, 0i, 1i, arg_1.a.x), vec4<bool>(false, false, true, true), arg_1, 62953i).c, arg_0).c.a.x, _wgslsmith_sub_i32(arg_1.a.x, ~(-18083i))), any(select(func_1().e.yx, vec2<bool>(arg_1.b, false), true))), abs(var_0), 694f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(reverseBits(~_wgslsmith_add_vec3_u32(u_input.d.wzx, vec3<u32>(25724u, 11559u, u_input.b))), vec3<u32>(1u, u_input.b, _wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.b, u_input.d.x) | u_input.d.x, _wgslsmith_mod_u32(u_input.d.x ^ u_input.b, _wgslsmith_mult_u32(u_input.d.x, u_input.b))))), 24u)];
    var var_1 = func_6(var_0.c.a.x, func_5(func_1(), func_1().c, -10194i, ~856u));
    var var_2 = Struct_3(Struct_1(u_input.a, var_0.d.x), ~(u_input.d.www & _wgslsmith_sub_vec3_u32(~u_input.d.wzy, vec3<u32>(1u, var_0.b, 4294967295u))), 654f);
    let x = u_input.a;
    s_output = StorageBuffer(~(~select(_wgslsmith_clamp_vec4_i32(var_2.a.a, var_1.a.a, vec4<i32>(var_0.c.a.x, -14935i, 3605i, -6044i)), firstLeadingBit(var_1.a.a), var_0.d.x)), _wgslsmith_f_op_f32(-var_0.a.x), var_0.a.xz, 0i);
}

