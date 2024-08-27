struct Struct_1 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec2<bool>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: vec3<f32>,
    d: vec4<f32>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: u32,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec4<f32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 107956u;

var<private> global1: Struct_4;

var<private> global2: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec3<u32>(66680u, 0u, 50060u), vec2<f32>(914f, -1351f), vec2<f32>(447f, 1938f), vec2<bool>(false, true), vec4<i32>(48936i, -11223i, 92399i, -33867i)), Struct_1(vec3<u32>(1u, 1u, 4294967295u), vec2<f32>(1945f, -348f), vec2<f32>(435f, -1266f), vec2<bool>(true, true), vec4<i32>(-23960i, -30923i, i32(-2147483648), 0i)), Struct_1(vec3<u32>(6550u, 0u, 4294967295u), vec2<f32>(-542f, 1288f), vec2<f32>(435f, -279f), vec2<bool>(true, false), vec4<i32>(4974i, -1i, 23625i, 23857i)), Struct_1(vec3<u32>(5382u, 1u, 53641u), vec2<f32>(-233f, 1625f), vec2<f32>(-1000f, -286f), vec2<bool>(true, true), vec4<i32>(46777i, -1i, -9047i, -9155i)), Struct_1(vec3<u32>(122410u, 1u, 1u), vec2<f32>(1655f, 395f), vec2<f32>(541f, -893f), vec2<bool>(true, false), vec4<i32>(2147483647i, 1374i, i32(-2147483648), -46191i)), Struct_1(vec3<u32>(44790u, 39989u, 1u), vec2<f32>(-345f, 1929f), vec2<f32>(-1320f, 928f), vec2<bool>(false, false), vec4<i32>(43554i, -1i, -16238i, -18605i)), Struct_1(vec3<u32>(69626u, 0u, 63935u), vec2<f32>(-1168f, 381f), vec2<f32>(-140f, 1427f), vec2<bool>(true, false), vec4<i32>(-30491i, 26478i, -265i, i32(-2147483648))), Struct_1(vec3<u32>(6708u, 17001u, 7051u), vec2<f32>(-1093f, -1037f), vec2<f32>(2525f, 464f), vec2<bool>(false, false), vec4<i32>(1i, -39178i, -1i, 29232i)), Struct_1(vec3<u32>(0u, 17593u, 4294967295u), vec2<f32>(256f, -2457f), vec2<f32>(-468f, -253f), vec2<bool>(true, true), vec4<i32>(-35914i, 0i, -10648i, 0i)), Struct_1(vec3<u32>(36053u, 4294967295u, 4294967295u), vec2<f32>(1204f, -219f), vec2<f32>(153f, -228f), vec2<bool>(true, true), vec4<i32>(-1i, i32(-2147483648), 0i, i32(-2147483648))), Struct_1(vec3<u32>(1u, 23590u, 0u), vec2<f32>(-1000f, 1474f), vec2<f32>(-779f, -125f), vec2<bool>(true, false), vec4<i32>(16207i, 1i, 36974i, 2147483647i)), Struct_1(vec3<u32>(57186u, 4294967295u, 1u), vec2<f32>(-1000f, 854f), vec2<f32>(351f, 742f), vec2<bool>(false, true), vec4<i32>(2147483647i, i32(-2147483648), 0i, 42290i)), Struct_1(vec3<u32>(40504u, 71173u, 0u), vec2<f32>(-320f, -786f), vec2<f32>(873f, -345f), vec2<bool>(true, false), vec4<i32>(i32(-2147483648), 0i, 0i, -2530i)), Struct_1(vec3<u32>(82253u, 4294967295u, 71942u), vec2<f32>(1104f, 502f), vec2<f32>(-330f, -1177f), vec2<bool>(false, true), vec4<i32>(67653i, 2147483647i, 18447i, 72333i)), Struct_1(vec3<u32>(87395u, 4294967295u, 35881u), vec2<f32>(-1618f, -1073f), vec2<f32>(-1779f, 567f), vec2<bool>(true, false), vec4<i32>(-38085i, 4534i, 4604i, 6281i)), Struct_1(vec3<u32>(13410u, 49716u, 4294967295u), vec2<f32>(-648f, 1776f), vec2<f32>(-1000f, -821f), vec2<bool>(false, true), vec4<i32>(i32(-2147483648), -17552i, 26023i, 1i)), Struct_1(vec3<u32>(0u, 4294967295u, 1u), vec2<f32>(-1446f, -144f), vec2<f32>(-662f, -878f), vec2<bool>(false, true), vec4<i32>(9226i, -1i, 6326i, 12397i)), Struct_1(vec3<u32>(58716u, 4294967295u, 0u), vec2<f32>(-674f, -508f), vec2<f32>(578f, -1237f), vec2<bool>(false, true), vec4<i32>(-42519i, -69481i, 4190i, 60798i)), Struct_1(vec3<u32>(1u, 13674u, 0u), vec2<f32>(409f, -790f), vec2<f32>(-1000f, -877f), vec2<bool>(false, true), vec4<i32>(13346i, i32(-2147483648), 1i, i32(-2147483648))), Struct_1(vec3<u32>(7876u, 87213u, 0u), vec2<f32>(-812f, -629f), vec2<f32>(-653f, -203f), vec2<bool>(false, true), vec4<i32>(0i, -52017i, 57962i, 1i)), Struct_1(vec3<u32>(30969u, 6399u, 1724u), vec2<f32>(471f, 704f), vec2<f32>(-562f, -198f), vec2<bool>(true, true), vec4<i32>(-100537i, 46975i, -6817i, -44414i)), Struct_1(vec3<u32>(0u, 38053u, 0u), vec2<f32>(-1000f, 1192f), vec2<f32>(844f, 823f), vec2<bool>(false, true), vec4<i32>(i32(-2147483648), 0i, -1731i, 1i)), Struct_1(vec3<u32>(24964u, 0u, 0u), vec2<f32>(-860f, -103f), vec2<f32>(-2577f, 365f), vec2<bool>(true, true), vec4<i32>(1i, 0i, 3131i, 44653i)), Struct_1(vec3<u32>(0u, 1u, 4294967295u), vec2<f32>(395f, -205f), vec2<f32>(-726f, -1778f), vec2<bool>(false, false), vec4<i32>(2147483647i, -16534i, 0i, -5168i)), Struct_1(vec3<u32>(0u, 25314u, 4294967295u), vec2<f32>(-572f, 400f), vec2<f32>(1094f, 1000f), vec2<bool>(true, false), vec4<i32>(1i, 9428i, -1i, -1i)), Struct_1(vec3<u32>(49918u, 25411u, 1u), vec2<f32>(-1035f, -700f), vec2<f32>(713f, -196f), vec2<bool>(true, false), vec4<i32>(-9183i, 3472i, 1i, 41019i)), Struct_1(vec3<u32>(1u, 68781u, 4294967295u), vec2<f32>(-1000f, -1000f), vec2<f32>(-197f, 1086f), vec2<bool>(true, true), vec4<i32>(1i, -30184i, i32(-2147483648), 61083i)), Struct_1(vec3<u32>(1u, 0u, 8037u), vec2<f32>(477f, 1939f), vec2<f32>(-628f, 442f), vec2<bool>(true, true), vec4<i32>(2147483647i, 1i, -1i, 3671i)), Struct_1(vec3<u32>(11623u, 51204u, 13435u), vec2<f32>(1574f, 1094f), vec2<f32>(-1761f, 1641f), vec2<bool>(false, false), vec4<i32>(1i, 3370i, 8096i, 0i)));

var<private> global3: vec4<u32> = vec4<u32>(7800u, 1u, 1u, 9205u);

var<private> global4: vec2<bool>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: Struct_2, arg_3: vec3<u32>) -> vec3<u32> {
    let var_0 = global3.x;
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(1130f)))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(arg_2.c - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2.d.yyw + arg_2.d.zyw) - _wgslsmith_div_vec3_f32(arg_2.c, arg_2.d.yxy)), vec3<f32>(_wgslsmith_f_op_f32(max(global1.c.c.x, 307f)), _wgslsmith_f_op_f32(-arg_2.d.x), arg_2.b), !select(vec3<bool>(false, global1.c.d.x, true), vec3<bool>(true, false, arg_1), true))))));
    var var_3 = countOneBits(vec4<u32>(arg_3.x, abs(_wgslsmith_dot_vec4_u32(u_input.b, u_input.b)), u_input.b.x, select(u_input.b.x, global1.a.x, false) | 18405u) << (~(~(vec4<u32>(global1.b, global3.x, u_input.b.x, 80805u) >> (vec4<u32>(30073u, 16931u, 3504u, global1.a.x) % vec4<u32>(32u)))) % vec4<u32>(32u)));
    global1 = Struct_4(~firstTrailingBit(~(vec3<u32>(11791u, u_input.b.x, 4294967295u) & vec3<u32>(29329u, 0u, 67437u))), 0u, global1.c, firstLeadingBit(~vec3<i32>(_wgslsmith_mult_i32(u_input.a.x, 40134i), -global1.d.x, -2147483647i)));
    return u_input.b.ywx;
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: vec3<u32>) -> Struct_2 {
    global1 = Struct_4(func_3(u_input.a.x, true, Struct_2(global1.d.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-240f - 1873f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1.c.c.x, global1.c.c.x, global1.c.c.x))) - vec3<f32>(global1.c.b.x, -2442f, global1.c.b.x)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1.c.c.x, 350f, global1.c.c.x, -1304f), vec4<f32>(global1.c.b.x, -1966f, 294f, global1.c.b.x))), _wgslsmith_div_vec4_f32(vec4<f32>(-659f, 491f, -1834f, 1390f), vec4<f32>(global1.c.b.x, global1.c.b.x, global1.c.b.x, 431f))))), ~vec3<u32>(~global1.b, _wgslsmith_dot_vec2_u32(arg_2.zy, global1.c.a.yx), 0u)), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(global1.a.x, u_input.b.x), 0u, 1u), ~select(global1.c.a, vec3<u32>(1u, u_input.b.x, u_input.b.x), vec3<bool>(true, arg_1.x, false))), arg_2.x ^ 4294967295u), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~global1.c.a.x, 1u >> (_wgslsmith_clamp_u32(arg_2.x & 81194u, firstLeadingBit(u_input.b.x), _wgslsmith_mod_u32(55019u, 1u)) % 32u)), 29u)], -global1.d);
    let var_0 = vec3<f32>(global1.c.b.x, 1390f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global1.c.b.x, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-426f, -757f), _wgslsmith_f_op_f32(exp2(global1.c.b.x)), select(global4.x, global1.c.d.x, false))))), _wgslsmith_f_op_f32(abs(-510f))));
    let var_1 = _wgslsmith_mod_vec4_u32(abs(firstLeadingBit(~u_input.b)), vec4<u32>(func_3(_wgslsmith_add_i32(-2147483647i, global1.c.e.x) >> (_wgslsmith_sub_u32(arg_2.x, 4294967295u) % 32u), !any(arg_0), Struct_2(-u_input.a.x, _wgslsmith_f_op_f32(min(240f, global1.c.b.x)), vec3<f32>(-420f, global1.c.b.x, global1.c.b.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-282f, var_0.x, 1000f, global1.c.b.x))), vec3<u32>(global3.x ^ arg_2.x, 17028u << (arg_2.x % 32u), _wgslsmith_div_u32(arg_2.x, 36644u))).x, _wgslsmith_clamp_u32(4294967295u, u_input.b.x << (67650u % 32u), global3.x), 4294967295u, select(arg_2.x, 17022u, arg_0.x)));
    let var_2 = Struct_2(-u_input.a.x, var_0.x, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1.c.b.x, global1.c.b.x, global1.c.b.x), var_0)))) * var_0), var_0)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-899f, _wgslsmith_f_op_f32(f32(-1f) * -1187f), _wgslsmith_f_op_f32(var_0.x - global1.c.b.x), var_0.x))))));
    let var_3 = vec4<f32>(449f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1374f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -531f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + 406f))))), -624f, var_2.c.x);
    return Struct_2(34575i, var_3.x, var_3.xww, var_3);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2) -> vec4<bool> {
    var var_0 = vec3<u32>(~_wgslsmith_clamp_u32(u_input.b.x | ~global3.x, _wgslsmith_dot_vec3_u32(vec3<u32>(global3.x, global3.x, 0u), vec3<u32>(global1.b, 4294967295u, global1.b)) & _wgslsmith_mod_u32(1u, global3.x), global3.x), _wgslsmith_mult_u32(~4294967295u, firstTrailingBit(_wgslsmith_sub_u32(firstLeadingBit(74613u), abs(u_input.b.x)))), abs(36736u));
    let var_1 = arg_1;
    global4 = global1.c.d;
    let var_2 = max(1u, global3.x);
    let var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global1.c.c.x), _wgslsmith_f_op_f32(-264f - -2271f), global1.c.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - global1.c.b.x))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.b, global1.c.c.x, global1.c.d.x)) + _wgslsmith_f_op_f32(-var_1.c.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(752f, global1.c.c.x) + arg_1.d.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(global1.c.c.x, -2613f, arg_0.x)), var_1.d.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1961f * global1.c.b.x), _wgslsmith_f_op_f32(var_1.b - 648f)))));
    return vec4<bool>(countOneBits(firstTrailingBit(func_3(-41414i, false, var_1, vec3<u32>(var_2, u_input.b.x, var_0.x)).x)) >= var_2, var_0.x > global3.x, false, false);
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: vec3<bool>) -> u32 {
    var var_0 = func_4(!vec4<bool>(false, global1.c.d.x, true, true), func_2(!(!(!vec4<bool>(arg_2.x, false, arg_2.x, global1.c.d.x))), select(vec2<bool>(global4.x, true), vec2<bool>(true, true), select(!vec2<bool>(true, global1.c.d.x), select(arg_2.xy, global1.c.d, vec2<bool>(global4.x, global4.x)), global1.c.d)), ~vec3<u32>(56386u, _wgslsmith_div_u32(u_input.b.x, global1.b), ~21638u)));
    let var_1 = Struct_5(Struct_1(~vec3<u32>(_wgslsmith_div_u32(u_input.b.x, global3.x), _wgslsmith_div_u32(global3.x, u_input.b.x), ~4294967295u), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global1.c.c.x, -807f))))), vec2<f32>(-1210f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.c.x))), vec2<bool>(true, global1.c.d.x), _wgslsmith_add_vec4_i32(global1.c.e & min(vec4<i32>(1i, -1i, global1.c.e.x, -2147483647i), vec4<i32>(u_input.a.x, -3692i, u_input.a.x, global1.d.x)), vec4<i32>(i32(-1i) * -19054i, -arg_0.x, global1.c.e.x, i32(-1i) * -2147483647i))), ~1u, func_3(arg_0.x, any(vec2<bool>(func_4(vec4<bool>(false, false, global4.x, false), Struct_2(-20084i, arg_1.a.x, arg_1.a.xyz, arg_1.a)).x, !arg_2.x)), Struct_2(min(-2147483647i, global1.c.e.x), _wgslsmith_f_op_f32(f32(-1f) * -529f), vec3<f32>(-1463f, _wgslsmith_f_op_f32(abs(-172f)), _wgslsmith_f_op_f32(trunc(arg_1.a.x))), arg_1.a), _wgslsmith_sub_vec3_u32(~abs(vec3<u32>(u_input.b.x, global3.x, 19720u)), min(vec3<u32>(global3.x, global3.x, 4294967295u), global3.xyw))).x, select(firstTrailingBit(vec3<u32>(1u, _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(global1.a.x, 57527u, global1.a.x, 13948u)), ~19532u)), _wgslsmith_sub_vec3_u32(u_input.b.yyy, _wgslsmith_add_vec3_u32(vec3<u32>(0u, u_input.b.x, global1.c.a.x), vec3<u32>(4294967295u, 4294967295u, 1u) ^ u_input.b.zwx)), true), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.a.x, _wgslsmith_f_op_f32(sign(501f)), 1185f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_1.a.x, -1846f)), arg_1.a.ywx)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(arg_1.a.xxy, arg_1.a.xxw)), _wgslsmith_f_op_vec3_f32(arg_1.a.zyz * arg_1.a.xyx), arg_2))))));
    let var_2 = _wgslsmith_f_op_f32(-var_1.e.x);
    var var_3 = Struct_2(_wgslsmith_clamp_i32(-(~10801i), ~global1.c.e.x, var_1.a.e.x), 587f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_2), var_1.a.b.x, _wgslsmith_f_op_f32(-arg_1.a.x)) + vec3<f32>(arg_1.a.x, _wgslsmith_f_op_f32(round(global1.c.c.x)), _wgslsmith_f_op_f32(-var_1.a.c.x))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-671f, 798f, var_1.e.x))))))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-var_1.a.c.x), _wgslsmith_div_f32(arg_1.a.x, _wgslsmith_f_op_f32(var_2 + var_2)), 320f, _wgslsmith_f_op_f32(select(-970f, _wgslsmith_div_f32(var_1.a.b.x, -1730f), false))))));
    let var_4 = vec3<i32>(firstTrailingBit(2147483647i ^ _wgslsmith_add_i32(-1i, var_3.a)), ~0i, _wgslsmith_add_i32(62258i, var_1.a.e.x));
    return func_3(var_3.a, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.a.x), 337f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.a.x))))) >= arg_1.a.x, func_2(func_4(vec4<bool>(true, global4.x, !var_0.x, !var_1.a.d.x), func_2(select(vec4<bool>(false, arg_2.x, var_0.x, true), vec4<bool>(false, false, true, true), vec4<bool>(arg_2.x, true, global4.x, var_1.a.d.x)), global1.c.d, ~vec3<u32>(1u, global3.x, 85626u))), !(!(!global1.c.d)), vec3<u32>(_wgslsmith_sub_u32(reverseBits(30097u), firstLeadingBit(1u)), _wgslsmith_div_u32(~global3.x, _wgslsmith_dot_vec3_u32(u_input.b.zyw, global3.xxz)), ~min(31455u, var_1.c))), var_1.a.a).x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = min(~(~global3.x), _wgslsmith_mod_u32(67629u, _wgslsmith_div_u32(~func_1(vec2<i32>(u_input.a.x, global1.c.e.x), Struct_3(vec4<f32>(-495f, global1.c.c.x, global1.c.b.x, 666f)), vec3<bool>(false, true, false)), ~min(0u, 4294967295u))));
    global3 = _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(firstLeadingBit(u_input.b), u_input.b), u_input.b);
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c.b.x) - 1295f), _wgslsmith_f_op_f32(444f - global1.c.b.x), global1.c.c.x))));
    var var_1 = all(!vec3<bool>(any(vec4<bool>(true, true, global1.c.d.x, global4.x)), true, true));
    global3 = ~min((u_input.b | u_input.b) >> (~u_input.b % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(global1.b, global1.a.x, global1.a.x, 37531u), vec4<u32>(22098u, 62928u, 53068u, global3.x))), select(vec4<u32>(0u, 4294967295u, u_input.b.x, 22929u) ^ u_input.b, vec4<u32>(global3.x, 1u, 35566u, global1.b), func_4(vec4<bool>(true, global4.x, true, true), Struct_2(7167i, 316f, vec3<f32>(-557f, 231f, -1739f), var_0.a)).x)));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1371f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -560f) - var_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c.c.x) - _wgslsmith_f_op_f32(-global1.c.c.x)))) * var_0.a.x));
    var var_3 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.x, global1.c.c.x) * -1000f) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(global1.c.c.x)), _wgslsmith_div_f32(var_2.x, var_2.x), false))))));
    let var_4 = global1.d.yy;
    let x = u_input.a;
    s_output = StorageBuffer(1676f, var_0.a, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(-317f, _wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(f32(-1f) * -565f), _wgslsmith_div_f32(-786f, 266f), var_2.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.a * vec4<f32>(-1599f, 370f, -1000f, var_3.x))), global4.x)), _wgslsmith_mod_u32(~countOneBits(13057u), abs(18600u)) << (1u % 32u), 61051u);
}

