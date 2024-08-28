struct Struct_1 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: vec2<u32>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec3<u32>,
    d: vec2<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: f32,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 12> = array<Struct_4, 12>(Struct_4(vec3<i32>(0i, 15502i, -1i), Struct_1(vec4<i32>(2147483647i, -71715i, 2147483647i, -39744i), 77306u), vec3<u32>(0u, 23067u, 0u), vec2<f32>(322f, 823f), Struct_2(Struct_1(vec4<i32>(-11577i, i32(-2147483648), 0i, -1i), 1u), 1u, vec2<f32>(408f, -1486f))), Struct_4(vec3<i32>(4714i, -10711i, 1090i), Struct_1(vec4<i32>(-1i, 47412i, -42054i, 0i), 0u), vec3<u32>(9822u, 9178u, 15162u), vec2<f32>(-1000f, -1321f), Struct_2(Struct_1(vec4<i32>(-1188i, 925i, -35368i, 19043i), 35582u), 50658u, vec2<f32>(-358f, 1249f))), Struct_4(vec3<i32>(0i, -1i, i32(-2147483648)), Struct_1(vec4<i32>(-13000i, -48630i, 2147483647i, -1i), 1u), vec3<u32>(27774u, 0u, 1u), vec2<f32>(2537f, 2107f), Struct_2(Struct_1(vec4<i32>(-1i, -73769i, 31423i, i32(-2147483648)), 1u), 1467u, vec2<f32>(2680f, 914f))), Struct_4(vec3<i32>(0i, i32(-2147483648), 9243i), Struct_1(vec4<i32>(-81946i, 0i, -35859i, 14002i), 1u), vec3<u32>(39434u, 1u, 45953u), vec2<f32>(-2558f, -1491f), Struct_2(Struct_1(vec4<i32>(-61307i, -43959i, 0i, 2141i), 4294967295u), 60407u, vec2<f32>(-473f, -465f))), Struct_4(vec3<i32>(1705i, 78860i, 0i), Struct_1(vec4<i32>(-15383i, -52240i, -49564i, -47477i), 31262u), vec3<u32>(48594u, 29829u, 6832u), vec2<f32>(-310f, -314f), Struct_2(Struct_1(vec4<i32>(-10705i, 0i, 50288i, 5880i), 19455u), 1u, vec2<f32>(647f, 1777f))), Struct_4(vec3<i32>(2147483647i, 2147483647i, 0i), Struct_1(vec4<i32>(32627i, i32(-2147483648), -1i, -1i), 43713u), vec3<u32>(18133u, 24075u, 1u), vec2<f32>(123f, -1480f), Struct_2(Struct_1(vec4<i32>(2147483647i, 2147483647i, 2147483647i, 13632i), 26282u), 14247u, vec2<f32>(1798f, 341f))), Struct_4(vec3<i32>(1i, -31732i, 2147483647i), Struct_1(vec4<i32>(-1i, -54729i, -7635i, 0i), 46014u), vec3<u32>(20021u, 77164u, 4294967295u), vec2<f32>(-1591f, -410f), Struct_2(Struct_1(vec4<i32>(2147483647i, 1i, i32(-2147483648), -15171i), 18920u), 11369u, vec2<f32>(107f, -1041f))), Struct_4(vec3<i32>(37438i, 0i, -44406i), Struct_1(vec4<i32>(0i, 45107i, 0i, -39409i), 4180u), vec3<u32>(1u, 0u, 21731u), vec2<f32>(1497f, -753f), Struct_2(Struct_1(vec4<i32>(-1i, 43697i, -9707i, 7038i), 4294967295u), 1229u, vec2<f32>(-152f, -922f))), Struct_4(vec3<i32>(-19763i, -46429i, -38417i), Struct_1(vec4<i32>(2147483647i, 21530i, 1764i, -32688i), 4294967295u), vec3<u32>(10536u, 1u, 4294967295u), vec2<f32>(-1261f, -131f), Struct_2(Struct_1(vec4<i32>(-13388i, 2147483647i, 6946i, 47018i), 0u), 48625u, vec2<f32>(-713f, 224f))), Struct_4(vec3<i32>(-925i, 2147483647i, 2147483647i), Struct_1(vec4<i32>(-8824i, 10768i, 2147483647i, 1i), 18041u), vec3<u32>(4294967295u, 0u, 55186u), vec2<f32>(619f, 1386f), Struct_2(Struct_1(vec4<i32>(-1i, -1i, -16722i, 3506i), 101300u), 4294967295u, vec2<f32>(2427f, 916f))), Struct_4(vec3<i32>(1i, 0i, -58539i), Struct_1(vec4<i32>(44809i, i32(-2147483648), -17086i, 37623i), 0u), vec3<u32>(4294967295u, 1u, 12726u), vec2<f32>(-1999f, -1173f), Struct_2(Struct_1(vec4<i32>(11841i, 38090i, 0i, -50198i), 1u), 4294967295u, vec2<f32>(1276f, 608f))), Struct_4(vec3<i32>(-21481i, i32(-2147483648), -16477i), Struct_1(vec4<i32>(i32(-2147483648), -1i, -24016i, -9329i), 34576u), vec3<u32>(54901u, 1u, 0u), vec2<f32>(2386f, 925f), Struct_2(Struct_1(vec4<i32>(3013i, 1i, i32(-2147483648), 16591i), 1959u), 1u, vec2<f32>(892f, 452f))));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2) -> i32 {
    global0 = array<Struct_4, 12>();
    let var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-399f, arg_0.c.x)))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.c.x, arg_0.c.x))), -1203f))));
    var var_1 = all(!vec3<bool>(~u_input.b.x >= _wgslsmith_dot_vec3_u32(u_input.b.zwy, u_input.b.wwx), select(true, true, all(vec3<bool>(false, true, true))), false));
    global0 = array<Struct_4, 12>();
    let var_2 = arg_0.a;
    return var_2.a.x;
}

fn func_2(arg_0: Struct_3) -> Struct_4 {
    global0 = array<Struct_4, 12>();
    global0 = array<Struct_4, 12>();
    let var_0 = Struct_1(firstLeadingBit(_wgslsmith_sub_vec4_i32(min(vec4<i32>(u_input.a.x, arg_0.d.a.a.x, u_input.a.x, -66481i), arg_0.d.a.a), countOneBits(arg_0.b.a.a))) & u_input.a, arg_0.d.a.b);
    var var_1 = select(arg_0.b.b == (~_wgslsmith_dot_vec4_u32(vec4<u32>(44949u, 0u, 1u, var_0.b), u_input.b) ^ var_0.b), true, _wgslsmith_sub_i32(func_3(arg_0.b), var_0.a.x) < _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 2762i, u_input.a.x), -var_0.a.zwz), i32(-1i) * -u_input.a.x));
    global0 = array<Struct_4, 12>();
    return global0[_wgslsmith_index_u32(select(_wgslsmith_dot_vec4_u32(vec4<u32>(abs(30148u), arg_0.c.x, 0u, firstTrailingBit(_wgslsmith_mult_u32(var_0.b, u_input.b.x))), ~vec4<u32>(~var_0.b, _wgslsmith_mult_u32(u_input.b.x, 37117u), _wgslsmith_div_u32(arg_0.d.b, var_0.b), 35486u)), 23635u, !(!(!any(vec2<bool>(false, true))))), 12u)];
}

fn func_1(arg_0: Struct_3, arg_1: bool, arg_2: u32, arg_3: Struct_2) -> i32 {
    global0 = array<Struct_4, 12>();
    var var_0 = _wgslsmith_sub_i32((arg_0.b.a.a.x ^ arg_3.a.a.x) << (2499u % 32u), 0i ^ ((arg_0.a.x >> (~1u % 32u)) << (abs(44391u) % 32u)));
    let var_1 = func_2(arg_0);
    let var_2 = Struct_2(func_2(arg_0).e.a, arg_3.a.b, vec2<f32>(-445f, -286f));
    global0 = array<Struct_4, 12>();
    return ~_wgslsmith_sub_i32(23284i, func_2(Struct_3(select(vec2<i32>(var_2.a.a.x, arg_0.b.a.a.x), var_2.a.a.xz, vec2<bool>(true, false)), Struct_2(Struct_1(vec4<i32>(var_1.a.x, 36499i, var_2.a.a.x, -2147483647i), u_input.b.x), var_2.a.b, var_1.e.c), _wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.c.x, arg_0.d.a.b), vec2<u32>(102980u, 4294967295u)), Struct_2(var_2.a, var_1.b.b, vec2<f32>(855f, -746f)))).e.a.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 12>();
    global0 = array<Struct_4, 12>();
    let var_0 = Struct_1(vec4<i32>(u_input.a.x, _wgslsmith_dot_vec4_i32(min(~u_input.a, ~u_input.a), vec4<i32>(func_1(Struct_3(u_input.a.ww, Struct_2(Struct_1(vec4<i32>(u_input.a.x, 24499i, -1i, u_input.a.x), 4294967295u), u_input.b.x, vec2<f32>(-692f, -993f)), u_input.b.zx, Struct_2(Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), u_input.b.x), u_input.b.x, vec2<f32>(-1840f, -1487f))), false, 88624u, Struct_2(Struct_1(u_input.a, u_input.b.x), 120079u, vec2<f32>(203f, 455f))), _wgslsmith_sub_i32(u_input.a.x, u_input.a.x), u_input.a.x, u_input.a.x)), u_input.a.x, u_input.a.x), ~(68114u & _wgslsmith_dot_vec3_u32(firstLeadingBit(u_input.b.xyx), _wgslsmith_div_vec3_u32(vec3<u32>(54766u, u_input.b.x, u_input.b.x), vec3<u32>(65326u, 0u, 0u)))));
    var var_1 = func_2(Struct_3(-_wgslsmith_mult_vec2_i32(~vec2<i32>(u_input.a.x, var_0.a.x), vec2<i32>(10991i, u_input.a.x) | vec2<i32>(-2147483647i, -2147483647i)), Struct_2(func_2(Struct_3(u_input.a.yy, Struct_2(Struct_1(var_0.a, var_0.b), u_input.b.x, vec2<f32>(1538f, 906f)), u_input.b.wy, Struct_2(var_0, 0u, vec2<f32>(-344f, 907f)))).b, max(3713u | var_0.b, ~36216u), _wgslsmith_f_op_vec2_f32(vec2<f32>(-714f, 186f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(815f, 776f)))), countOneBits(~countOneBits(vec2<u32>(u_input.b.x, 0u))), func_2(Struct_3(vec2<i32>(var_0.a.x, -18570i) ^ var_0.a.xx, func_2(Struct_3(var_0.a.zz, Struct_2(var_0, u_input.b.x, vec2<f32>(-999f, -1000f)), u_input.b.wy, Struct_2(Struct_1(u_input.a, 20336u), u_input.b.x, vec2<f32>(-1326f, -711f)))).e, vec2<u32>(91466u, var_0.b), Struct_2(Struct_1(var_0.a, 70581u), 0u, vec2<f32>(566f, 2640f)))).e)).e;
    let var_2 = vec2<bool>(false || !(_wgslsmith_f_op_f32(round(var_1.c.x)) != var_1.c.x), true);
    global0 = array<Struct_4, 12>();
    var_1 = func_2(Struct_3(firstLeadingBit(vec2<i32>(1i, _wgslsmith_dot_vec4_i32(u_input.a, var_0.a))), func_2(Struct_3(_wgslsmith_clamp_vec2_i32(var_0.a.zy, vec2<i32>(var_1.a.a.x, 29310i), vec2<i32>(-2147483647i, var_0.a.x)), Struct_2(Struct_1(vec4<i32>(var_0.a.x, u_input.a.x, 8178i, var_0.a.x), u_input.b.x), 1u, vec2<f32>(var_1.c.x, var_1.c.x)), abs(vec2<u32>(0u, 0u)), Struct_2(Struct_1(vec4<i32>(u_input.a.x, var_1.a.a.x, 1i, var_1.a.a.x), u_input.b.x), 16068u, vec2<f32>(-375f, var_1.c.x)))).e, vec2<u32>(_wgslsmith_add_u32(24513u, 1u), u_input.b.x), Struct_2(var_1.a, 18938u, _wgslsmith_f_op_vec2_f32(min(var_1.c, _wgslsmith_f_op_vec2_f32(select(var_1.c, vec2<f32>(var_1.c.x, -486f), var_2))))))).e;
    var var_3 = Struct_3(firstTrailingBit(vec2<i32>(countOneBits(1i), _wgslsmith_sub_i32(u_input.a.x, -44230i))) >> (abs(vec2<u32>(37550u, 4294967295u | var_1.a.b)) % vec2<u32>(32u)), Struct_2(var_0, _wgslsmith_dot_vec3_u32(select(vec3<u32>(5431u, u_input.b.x, var_1.a.b) >> (u_input.b.wxy % vec3<u32>(32u)), ~vec3<u32>(var_0.b, u_input.b.x, 6562u), vec3<bool>(var_2.x, false, var_2.x)), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.b.x, 6666u), _wgslsmith_add_vec3_u32(u_input.b.zwy, u_input.b.xxz))), func_2(Struct_3(vec2<i32>(4978i, var_1.a.a.x) & var_0.a.yw, Struct_2(var_1.a, 25553u, var_1.c), vec2<u32>(u_input.b.x, var_1.a.b), Struct_2(Struct_1(u_input.a, u_input.b.x), var_0.b, vec2<f32>(var_1.c.x, var_1.c.x)))).e.c), ~(~_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(40894u, 49927u), u_input.b.yz), ~vec2<u32>(0u, 6613u))), func_2(Struct_3(vec2<i32>(-1i, select(2147483647i, 5050i, var_2.x)), func_2(Struct_3(var_0.a.zz, Struct_2(Struct_1(vec4<i32>(-2147483647i, 0i, -21362i, var_0.a.x), 4265u), 1u, var_1.c), u_input.b.yx, Struct_2(Struct_1(var_0.a, var_0.b), var_0.b, var_1.c))).e, vec2<u32>(var_0.b << (1u % 32u), ~var_1.a.b), func_2(Struct_3(vec2<i32>(0i, 1i), Struct_2(Struct_1(vec4<i32>(10877i, 19341i, u_input.a.x, var_1.a.a.x), var_1.b), u_input.b.x, var_1.c), u_input.b.xx, Struct_2(Struct_1(u_input.a, var_1.b), 0u, vec2<f32>(var_1.c.x, var_1.c.x)))).e)).e);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.yw, min(select(vec2<i32>(53978i, -var_0.a.x), firstTrailingBit(var_0.a.yw) & var_3.b.a.a.zw, select(vec2<bool>(false, var_2.x), select(vec2<bool>(false, var_2.x), vec2<bool>(true, false), true), !var_2.x)), vec2<i32>(-43894i, var_3.d.a.a.x)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -854f), var_1.c.x), _wgslsmith_f_op_f32(var_1.c.x + var_3.b.c.x))), 0i, vec4<u32>(abs(var_3.d.b), 1u, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(12561u, var_1.b, var_3.d.b, var_3.c.x) & u_input.b), ~(~vec4<u32>(40305u, 15173u, var_3.b.a.b, 4294967295u))), ~abs(u_input.b.x)));
}

