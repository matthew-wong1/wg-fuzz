struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec4<i32>,
    d: u32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec4<f32>,
    e: vec2<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(4294967295u, 23210u, 4294967295u);

var<private> global1: array<Struct_4, 17> = array<Struct_4, 17>(Struct_4(vec4<f32>(-711f, -880f, 1051f, -1000f), Struct_1(27825i, vec2<bool>(true, true), vec4<i32>(-1i, 10389i, 14479i, 2147483647i), 4294967295u, vec4<u32>(1u, 11549u, 4294967295u, 16418u))), Struct_4(vec4<f32>(899f, -811f, 144f, -611f), Struct_1(-1i, vec2<bool>(true, false), vec4<i32>(-1i, -1i, -10243i, 2147483647i), 4294967295u, vec4<u32>(0u, 4294967295u, 0u, 27660u))), Struct_4(vec4<f32>(-1171f, 1247f, -269f, 1806f), Struct_1(40619i, vec2<bool>(false, true), vec4<i32>(10122i, 7311i, 0i, i32(-2147483648)), 0u, vec4<u32>(4294967295u, 0u, 4294967295u, 1u))), Struct_4(vec4<f32>(-119f, -1000f, -1485f, 1897f), Struct_1(2147483647i, vec2<bool>(true, false), vec4<i32>(-1i, -2983i, -31869i, -402i), 86713u, vec4<u32>(86311u, 14838u, 67468u, 58684u))), Struct_4(vec4<f32>(-1305f, 360f, -501f, 1215f), Struct_1(4338i, vec2<bool>(true, true), vec4<i32>(1i, 10464i, 1i, -37382i), 1u, vec4<u32>(0u, 4294967295u, 22506u, 10332u))), Struct_4(vec4<f32>(1262f, 839f, 134f, 1000f), Struct_1(-1i, vec2<bool>(true, true), vec4<i32>(33918i, -11814i, 2147483647i, 1i), 1u, vec4<u32>(0u, 4294967295u, 1u, 15119u))), Struct_4(vec4<f32>(1855f, -1000f, -1118f, 212f), Struct_1(-1800i, vec2<bool>(false, true), vec4<i32>(0i, 2147483647i, 44054i, 56112i), 10073u, vec4<u32>(0u, 4294967295u, 4294967295u, 0u))), Struct_4(vec4<f32>(-688f, 343f, -157f, 2016f), Struct_1(-12751i, vec2<bool>(false, false), vec4<i32>(29352i, i32(-2147483648), 27679i, 44043i), 0u, vec4<u32>(4294967295u, 30726u, 381u, 1u))), Struct_4(vec4<f32>(-303f, -1861f, 1000f, 2016f), Struct_1(14070i, vec2<bool>(true, true), vec4<i32>(0i, -76276i, 2147483647i, 35959i), 7393u, vec4<u32>(14785u, 38519u, 4294967295u, 1u))), Struct_4(vec4<f32>(946f, -1262f, -2740f, 334f), Struct_1(-72134i, vec2<bool>(false, false), vec4<i32>(-63499i, 2147483647i, 0i, -12647i), 8321u, vec4<u32>(4294967295u, 4294967295u, 4294967295u, 39500u))), Struct_4(vec4<f32>(1616f, 351f, -1843f, 1341f), Struct_1(5099i, vec2<bool>(true, true), vec4<i32>(-18585i, 2147483647i, 2147483647i, -1i), 27527u, vec4<u32>(1u, 1920u, 1u, 5734u))), Struct_4(vec4<f32>(-925f, 1742f, -1877f, 346f), Struct_1(28483i, vec2<bool>(true, true), vec4<i32>(0i, 0i, -1i, 45513i), 0u, vec4<u32>(0u, 23497u, 9334u, 1u))), Struct_4(vec4<f32>(101f, -1207f, 1013f, -574f), Struct_1(-61505i, vec2<bool>(true, false), vec4<i32>(-5315i, 24917i, i32(-2147483648), -9719i), 84693u, vec4<u32>(20813u, 32407u, 46468u, 0u))), Struct_4(vec4<f32>(360f, -299f, -573f, -189f), Struct_1(34208i, vec2<bool>(false, false), vec4<i32>(3515i, i32(-2147483648), -1831i, 2147483647i), 23715u, vec4<u32>(72045u, 13523u, 0u, 11390u))), Struct_4(vec4<f32>(844f, -1393f, 409f, -225f), Struct_1(-30266i, vec2<bool>(true, true), vec4<i32>(0i, 16790i, i32(-2147483648), 38782i), 26914u, vec4<u32>(1u, 27133u, 47924u, 26921u))), Struct_4(vec4<f32>(1510f, -1000f, -1014f, -391f), Struct_1(-1i, vec2<bool>(true, true), vec4<i32>(i32(-2147483648), -7047i, 2147483647i, 68591i), 57158u, vec4<u32>(52093u, 4294967295u, 4294967295u, 2361u))), Struct_4(vec4<f32>(254f, 1394f, -1160f, -1671f), Struct_1(45262i, vec2<bool>(true, true), vec4<i32>(29610i, -5661i, 2147483647i, 2147483647i), 157836u, vec4<u32>(124338u, 1u, 9597u, 1u))));

var<private> global2: i32;

var<private> global3: Struct_1 = Struct_1(-16951i, vec2<bool>(true, true), vec4<i32>(-1i, -5730i, 1i, -69111i), 1u, vec4<u32>(0u, 1u, 24135u, 1u));

var<private> global4: array<vec4<i32>, 18>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: u32, arg_1: vec4<f32>, arg_2: i32, arg_3: Struct_3) -> i32 {
    let var_0 = Struct_2(5383i, ~(-(global4[_wgslsmith_index_u32(global3.d, 18u)] | ~vec4<i32>(1i, -39216i, arg_3.d.c.x, 22241i))), _wgslsmith_mult_vec4_i32(arg_3.d.c, reverseBits(abs(arg_3.d.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_3.d.d)), (abs(~vec2<i32>(-12317i, arg_2)) | vec2<i32>(_wgslsmith_dot_vec4_i32(global3.c, vec4<i32>(arg_3.c.a, -1i, arg_2, 0i)), 13618i)) ^ (vec2<i32>(-10658i, 1i) | arg_3.d.c.zx));
    global3 = Struct_1(arg_2, !(!(!global3.b)), global3.c, ~_wgslsmith_mult_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(21166u, 58708u), global3.e.x ^ global0.x), 20236u), vec4<u32>(u_input.b, global3.e.x, u_input.b & ~(~1u), ~_wgslsmith_clamp_u32(global0.x, 24722u, 0u) >> (_wgslsmith_mult_u32(~4294967295u, u_input.b) % 32u)));
    global1 = array<Struct_4, 17>();
    var var_1 = arg_1.xxy;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1f)));
    return arg_3.d.e.x;
}

fn func_2() -> vec4<f32> {
    global4 = array<vec4<i32>, 18>();
    global0 = vec3<u32>(u_input.c, 43510u, abs(u_input.a.x));
    var var_0 = -_wgslsmith_mult_vec3_i32(vec3<i32>(countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(global3.a, 1i, global3.a), global3.c.xyx)), _wgslsmith_mult_i32(global3.a, func_3(52372u, vec4<f32>(1041f, 1855f, 605f, 316f), -1i, Struct_3(vec4<f32>(-788f, -636f, -102f, 112f), global3.e.xxz, Struct_1(global3.c.x, global3.b, global4[_wgslsmith_index_u32(global0.x, 18u)], u_input.a.x, global3.e), Struct_2(1i, global3.c, vec4<i32>(global3.c.x, 6045i, global3.a, -2147483647i), vec4<f32>(783f, -1000f, 2472f, 879f), global3.c.ww)))), _wgslsmith_dot_vec3_i32(global3.c.xww, vec3<i32>(global3.c.x, global3.c.x, global3.a)) & _wgslsmith_mult_i32(4851i, global3.a)), firstLeadingBit(vec3<i32>(-2147483647i, global3.c.x, max(-1i, global3.c.x))));
    let var_1 = any(!select(vec2<bool>(true, any(vec4<bool>(global3.b.x, global3.b.x, true, false))), select(global3.b, global3.b, select(vec2<bool>(true, true), global3.b, vec2<bool>(global3.b.x, global3.b.x))), global3.b));
    var var_2 = (abs(~(~global0.x)) >> (global0.x % 32u)) >> (1u % 32u);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1549f), _wgslsmith_f_op_f32(max(-133f, 1000f)), _wgslsmith_div_f32(-858f, 286f), _wgslsmith_f_op_f32(-103f + -330f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1f, 1f, 1f, 1f))))));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<i32>, arg_2: bool) -> Struct_1 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(func_2()), vec3<u32>(_wgslsmith_mod_u32(0u, _wgslsmith_add_u32(1u, max(39460u, 34954u))), countOneBits(abs(47457u)) & _wgslsmith_dot_vec2_u32(max(vec2<u32>(global3.e.x, 1u), vec2<u32>(18351u, global3.e.x)), vec2<u32>(0u, arg_0.x) >> (global3.e.xw % vec2<u32>(32u))), global3.d), Struct_1(2147483647i, vec2<bool>(!global3.b.x || true, true), vec4<i32>(-1i) * -countOneBits(global3.c), _wgslsmith_add_u32(reverseBits(68409u), arg_0.x), vec4<u32>(countOneBits(_wgslsmith_sub_u32(global3.e.x, 20286u)), ~1u, global0.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 78250u, global0.x, global0.x), arg_0))), Struct_2(-_wgslsmith_mod_i32(-1i, arg_1.x) | global3.c.x, -vec4<i32>(firstLeadingBit(9563i), -1i, global3.a, arg_1.x), _wgslsmith_sub_vec4_i32(vec4<i32>(global3.a, global3.c.x, global3.a, global3.a) | abs(global4[_wgslsmith_index_u32(global3.d, 18u)]), -(global3.c << (global3.e % vec4<u32>(32u)))), _wgslsmith_f_op_vec4_f32(func_2()), arg_1.yy));
    let var_1 = _wgslsmith_add_vec2_i32(-(_wgslsmith_div_vec2_i32(countOneBits(var_0.d.c.yw), _wgslsmith_mod_vec2_i32(var_0.c.c.xx, vec2<i32>(global3.c.x, 4528i))) << (vec2<u32>(~0u, _wgslsmith_div_u32(53882u, global0.x)) % vec2<u32>(32u))), countOneBits(_wgslsmith_mult_vec2_i32(arg_1.zz << ((vec2<u32>(global3.d, global0.x) | vec2<u32>(u_input.c, 57146u)) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_dot_vec2_i32(var_0.d.c.yx, var_0.d.e), -644i))));
    var var_2 = Struct_2(0i, ~select(~global3.c, global4[_wgslsmith_index_u32(4294967295u, 18u)], any(vec3<bool>(arg_2, true, true))), _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(global4[_wgslsmith_index_u32(abs(0u), 18u)], _wgslsmith_add_vec4_i32(vec4<i32>(var_1.x, arg_1.x, global3.c.x, 13773i) & vec4<i32>(1i, 1i, arg_1.x, arg_1.x), vec4<i32>(-2147483647i, global3.c.x, -3704i, global3.a)), vec4<i32>(-22019i, -23841i, var_0.c.a, global3.c.x) ^ select(global4[_wgslsmith_index_u32(0u, 18u)], global4[_wgslsmith_index_u32(u_input.c, 18u)], var_0.c.b.x)), (abs(global4[_wgslsmith_index_u32(0u, 18u)]) >> (min(arg_0, vec4<u32>(global3.e.x, 2005u, global0.x, 71456u)) % vec4<u32>(32u))) | _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(var_0.c.c, var_0.d.c), firstLeadingBit(global3.c)), global4[_wgslsmith_index_u32(~49183u, 18u)]), var_0.a, vec2<i32>(6555i, -18716i));
    global0 = vec3<u32>(global3.d, 0u, firstTrailingBit(global3.e.x));
    var var_3 = var_0.c.d;
    return Struct_1(0i, vec2<bool>(!(!(var_0.c.b.x && global3.b.x)), any(select(vec4<bool>(arg_2, arg_2, false, global3.b.x), vec4<bool>(global3.b.x, arg_2, arg_2, global3.b.x), true)) != !var_0.c.b.x), _wgslsmith_add_vec4_i32(countOneBits(var_0.d.b) & -_wgslsmith_div_vec4_i32(vec4<i32>(global3.c.x, global3.c.x, var_1.x, arg_1.x), global4[_wgslsmith_index_u32(global3.d, 18u)]), _wgslsmith_clamp_vec4_i32(~vec4<i32>(30342i, 46898i, 2147483647i, var_0.c.c.x) >> (var_0.c.e % vec4<u32>(32u)), -vec4<i32>(-36502i, -22739i, -31137i, -1i), ~var_2.c)), var_0.c.e.x, global3.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = 35142u;
    let var_2 = _wgslsmith_mod_vec4_i32(global3.c, global3.c);
    global1 = array<Struct_4, 17>();
    var var_3 = func_1(_wgslsmith_div_vec4_u32(global3.e, ~(~vec4<u32>(1u, 63162u, global0.x, 63837u) ^ ~global3.e)), var_2.xyw, any(!global3.b));
    var var_4 = any(select(!(!select(vec3<bool>(var_3.b.x, false, var_3.b.x), vec3<bool>(true, false, global3.b.x), vec3<bool>(false, var_0, var_0))), select(select(!vec3<bool>(true, false, var_0), vec3<bool>(global3.b.x, global3.b.x, global3.b.x), var_0 && global3.b.x), vec3<bool>(all(vec4<bool>(var_3.b.x, false, false, global3.b.x)), true, false), var_3.b.x), select(select(select(vec3<bool>(global3.b.x, false, true), vec3<bool>(false, true, var_0), var_0), vec3<bool>(var_0, false, true), select(vec3<bool>(true, true, true), vec3<bool>(var_3.b.x, true, var_0), true)), select(!vec3<bool>(var_0, true, false), select(vec3<bool>(true, var_3.b.x, global3.b.x), vec3<bool>(false, global3.b.x, false), false), !var_0), true)));
    var_3 = Struct_1(var_2.x, global3.b, var_3.c, ~0u, global3.e);
    let var_5 = global3.a;
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.x, 17310i, 2147483647i), vec3<i32>(-3861i, 0i, 0i) & var_3.c.wxw) ^ var_3.a), global3.d, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -297f), _wgslsmith_f_op_f32(f32(-1f) * -1026f)) + _wgslsmith_f_op_vec4_f32(func_2()).x), -1044f, _wgslsmith_f_op_f32(ceil(2047f)), 1651f));
}

