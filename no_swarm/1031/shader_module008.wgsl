struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: bool,
    d: bool,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: Struct_1,
    d: vec2<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec4<u32>, 14> = array<vec4<u32>, 14>(vec4<u32>(51117u, 69277u, 51177u, 22809u), vec4<u32>(4763u, 15041u, 4294967295u, 11453u), vec4<u32>(65780u, 65567u, 19787u, 4294967295u), vec4<u32>(26977u, 4294967295u, 19791u, 4294967295u), vec4<u32>(15287u, 4860u, 2643u, 5618u), vec4<u32>(0u, 57619u, 1u, 22290u), vec4<u32>(1u, 1u, 0u, 35884u), vec4<u32>(4294967295u, 65711u, 4294967295u, 6763u), vec4<u32>(119526u, 11302u, 11566u, 1u), vec4<u32>(4294967295u, 62747u, 28209u, 1u), vec4<u32>(1u, 0u, 12554u, 74934u), vec4<u32>(24044u, 1u, 0u, 4294967295u), vec4<u32>(4294967295u, 14621u, 27456u, 28953u), vec4<u32>(1u, 14526u, 85199u, 95411u));

var<private> global2: array<Struct_2, 10>;

var<private> global3: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(vec4<i32>(45183i, -40423i, i32(-2147483648), -25481i), vec3<i32>(9522i, 35707i, 0i), Struct_1(false, vec3<i32>(1i, 25253i, 56886i), false, true, vec2<f32>(-1000f, 232f)), vec2<bool>(true, false), Struct_1(true, vec3<i32>(-33970i, 12813i, 1i), false, false, vec2<f32>(647f, -1903f))), Struct_2(vec4<i32>(-59813i, -43964i, 0i, 0i), vec3<i32>(0i, 1i, -1i), Struct_1(true, vec3<i32>(i32(-2147483648), 0i, i32(-2147483648)), true, true, vec2<f32>(220f, -613f)), vec2<bool>(true, true), Struct_1(true, vec3<i32>(-19560i, 0i, 0i), false, true, vec2<f32>(-1000f, 1092f))), Struct_2(vec4<i32>(30329i, 0i, -16213i, i32(-2147483648)), vec3<i32>(-22847i, 24665i, 2147483647i), Struct_1(true, vec3<i32>(1i, 1i, -13476i), false, true, vec2<f32>(-1426f, -380f)), vec2<bool>(true, false), Struct_1(false, vec3<i32>(23813i, 8010i, -1i), false, true, vec2<f32>(-2866f, 838f))), Struct_2(vec4<i32>(8370i, -1i, 2147483647i, 1i), vec3<i32>(2147483647i, -1i, 23818i), Struct_1(true, vec3<i32>(-3321i, 2147483647i, -58337i), true, true, vec2<f32>(1088f, 122f)), vec2<bool>(false, false), Struct_1(true, vec3<i32>(1i, 0i, 2147483647i), true, true, vec2<f32>(1696f, -882f))), Struct_2(vec4<i32>(113006i, 1i, 1i, i32(-2147483648)), vec3<i32>(0i, i32(-2147483648), 0i), Struct_1(true, vec3<i32>(0i, -2494i, 45041i), false, false, vec2<f32>(365f, -880f)), vec2<bool>(true, true), Struct_1(false, vec3<i32>(58300i, 1i, 17622i), true, true, vec2<f32>(-1309f, 1036f))), Struct_2(vec4<i32>(-13738i, -2523i, i32(-2147483648), -28664i), vec3<i32>(2147483647i, 0i, 0i), Struct_1(false, vec3<i32>(28304i, -61615i, i32(-2147483648)), true, false, vec2<f32>(588f, -268f)), vec2<bool>(true, false), Struct_1(false, vec3<i32>(-36476i, 0i, 2147483647i), false, true, vec2<f32>(-1140f, 589f))), Struct_2(vec4<i32>(-3031i, 19479i, -3271i, -1i), vec3<i32>(2147483647i, 25641i, i32(-2147483648)), Struct_1(true, vec3<i32>(49038i, 1i, 19847i), false, true, vec2<f32>(389f, -2553f)), vec2<bool>(false, false), Struct_1(false, vec3<i32>(0i, 1i, 11012i), false, false, vec2<f32>(-556f, -675f))), Struct_2(vec4<i32>(36159i, 0i, -21777i, i32(-2147483648)), vec3<i32>(31155i, i32(-2147483648), -9066i), Struct_1(true, vec3<i32>(-38896i, -29133i, 2147483647i), false, false, vec2<f32>(-1000f, 664f)), vec2<bool>(true, false), Struct_1(false, vec3<i32>(-38904i, 37487i, 1429i), true, false, vec2<f32>(771f, 586f))), Struct_2(vec4<i32>(1931i, 0i, -1i, 1i), vec3<i32>(95303i, -10622i, 20348i), Struct_1(true, vec3<i32>(13163i, -5168i, -1i), false, false, vec2<f32>(-516f, 720f)), vec2<bool>(true, true), Struct_1(true, vec3<i32>(i32(-2147483648), 1i, i32(-2147483648)), true, true, vec2<f32>(186f, -284f))), Struct_2(vec4<i32>(i32(-2147483648), 21113i, 5040i, -1i), vec3<i32>(0i, -14094i, 38687i), Struct_1(false, vec3<i32>(0i, 2147483647i, 1i), true, true, vec2<f32>(601f, -673f)), vec2<bool>(false, true), Struct_1(false, vec3<i32>(-54151i, 11927i, 1i), true, false, vec2<f32>(1000f, 1120f))), Struct_2(vec4<i32>(20165i, -1i, -50040i, 76228i), vec3<i32>(0i, 13453i, -5059i), Struct_1(true, vec3<i32>(3164i, 34326i, -1i), false, true, vec2<f32>(-424f, 1017f)), vec2<bool>(false, true), Struct_1(false, vec3<i32>(51881i, 16410i, 6975i), true, false, vec2<f32>(1330f, 937f))), Struct_2(vec4<i32>(1414i, 1i, 5799i, 1i), vec3<i32>(-58027i, 2147483647i, 28420i), Struct_1(false, vec3<i32>(0i, -20513i, -1i), false, true, vec2<f32>(1000f, -2013f)), vec2<bool>(true, false), Struct_1(true, vec3<i32>(1i, 0i, -9076i), true, false, vec2<f32>(-1000f, 156f))), Struct_2(vec4<i32>(0i, 0i, 2147483647i, -18880i), vec3<i32>(0i, -1i, -4514i), Struct_1(false, vec3<i32>(1884i, -2078i, i32(-2147483648)), true, true, vec2<f32>(582f, -1730f)), vec2<bool>(true, false), Struct_1(true, vec3<i32>(-1i, -21623i, 53597i), true, true, vec2<f32>(-777f, 429f))), Struct_2(vec4<i32>(1i, 2147483647i, 47088i, -1i), vec3<i32>(25387i, 0i, -2097i), Struct_1(true, vec3<i32>(-17935i, -15843i, 0i), true, true, vec2<f32>(1000f, -422f)), vec2<bool>(true, true), Struct_1(true, vec3<i32>(-653i, -68715i, -43650i), false, true, vec2<f32>(-521f, 135f))), Struct_2(vec4<i32>(i32(-2147483648), 73042i, i32(-2147483648), 2147483647i), vec3<i32>(i32(-2147483648), 1i, 2147483647i), Struct_1(true, vec3<i32>(68886i, 1i, 49689i), true, false, vec2<f32>(-207f, 1708f)), vec2<bool>(false, true), Struct_1(false, vec3<i32>(-43382i, -20576i, -1i), true, true, vec2<f32>(1289f, 215f))), Struct_2(vec4<i32>(1i, 41747i, i32(-2147483648), -1i), vec3<i32>(1i, 2147483647i, 11365i), Struct_1(true, vec3<i32>(1953i, 14360i, -2004i), true, true, vec2<f32>(899f, 313f)), vec2<bool>(true, true), Struct_1(false, vec3<i32>(-11270i, 14498i, 33606i), false, true, vec2<f32>(586f, 1414f))), Struct_2(vec4<i32>(2147483647i, -35646i, -21646i, -23359i), vec3<i32>(-25176i, -5238i, 57029i), Struct_1(false, vec3<i32>(27706i, 28112i, 0i), true, true, vec2<f32>(-1431f, 198f)), vec2<bool>(false, true), Struct_1(false, vec3<i32>(2147483647i, i32(-2147483648), -1i), false, true, vec2<f32>(-409f, -865f))), Struct_2(vec4<i32>(0i, -1i, 29041i, 2147483647i), vec3<i32>(i32(-2147483648), 68661i, -14260i), Struct_1(false, vec3<i32>(i32(-2147483648), 15209i, 1205i), false, false, vec2<f32>(1245f, 1475f)), vec2<bool>(true, true), Struct_1(false, vec3<i32>(-1i, 5344i, 1i), false, true, vec2<f32>(-856f, 172f))));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_2) -> i32 {
    var var_0 = arg_1.c;
    let var_1 = arg_1.a;
    global3 = array<Struct_2, 18>();
    let var_2 = i32(-1i) * -1i;
    global2 = array<Struct_2, 10>();
    return -global0.a.x;
}

fn func_3(arg_0: vec4<u32>) -> vec3<i32> {
    let var_0 = global0.c;
    var var_1 = _wgslsmith_mult_i32(-1i, -25129i);
    let var_2 = Struct_1(global0.c.a, _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(countOneBits(var_0.b & var_0.b), global0.b), var_0.b), true, _wgslsmith_clamp_i32(2147483647i, -firstLeadingBit(1i), -u_input.a) <= -_wgslsmith_dot_vec3_i32(var_0.b, global0.c.b), vec2<f32>(966f, _wgslsmith_f_op_f32(max(750f, _wgslsmith_f_op_f32(-var_0.e.x)))));
    global3 = array<Struct_2, 18>();
    let var_3 = vec3<bool>(true, var_0.d, var_0.a);
    return var_2.b;
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> Struct_2 {
    global2 = array<Struct_2, 10>();
    global3 = array<Struct_2, 18>();
    let var_0 = Struct_2(firstTrailingBit(vec4<i32>(~1i, abs(arg_0), i32(-1i) * -29532i, func_2(vec4<f32>(global0.e.e.x, arg_1.e.x, global0.c.e.x, 1173f), global3[_wgslsmith_index_u32(1u, 18u)]))), max(_wgslsmith_clamp_vec3_i32(arg_1.b, vec3<i32>(-2147483647i, arg_0, 0i), -func_3(vec4<u32>(0u, 72232u, 1u, 39507u))), vec3<i32>(-(arg_1.b.x >> (34439u % 32u)), -global0.e.b.x, global0.a.x)), global0.c, !(!select(global0.d, global0.d, !vec2<bool>(global0.c.a, false))), global0.c);
    var var_1 = 1u;
    let var_2 = global3[_wgslsmith_index_u32(1u, 18u)];
    return Struct_2(vec4<i32>(~(-_wgslsmith_add_i32(arg_1.b.x, arg_0)), var_0.b.x, max(abs(var_2.e.b.x), firstTrailingBit(_wgslsmith_mult_i32(arg_1.b.x, var_2.b.x))), var_2.a.x), global0.b, var_2.c, !select(!select(vec2<bool>(false, false), global0.d, vec2<bool>(true, false)), !(!vec2<bool>(arg_1.d, var_0.e.d)), select(select(vec2<bool>(var_0.c.a, true), global0.d, var_2.d), select(vec2<bool>(true, false), vec2<bool>(true, arg_1.c), false), global0.d)), var_0.c);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: vec4<i32>) -> Struct_1 {
    var var_0 = func_1(_wgslsmith_div_i32(arg_3.x, arg_0.a.x << (~1u % 32u)), func_1(2002i, arg_2).e);
    let var_1 = arg_1.zz;
    var var_2 = func_1(_wgslsmith_dot_vec4_i32(var_0.a << (~_wgslsmith_div_vec4_u32(global1[_wgslsmith_index_u32(22298u, 14u)], vec4<u32>(39233u, 44473u, 1u, 106065u)) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(~7941i, arg_3.x, ~30102i, _wgslsmith_mod_i32(u_input.a, arg_3.x)), select(-vec4<i32>(-1i, 0i, 0i, arg_2.b.x), -vec4<i32>(-1i, arg_3.x, 1i, -14232i), vec4<bool>(var_0.d.x, true, var_0.e.a, arg_0.d.x)))), func_1(arg_2.b.x, Struct_1(!(var_1.x && arg_1.x), arg_0.b, !arg_2.d, select(true, !global0.c.d, false), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.c.e)))).e).c;
    var var_3 = Struct_1(false, arg_0.c.b, false, !(func_1(reverseBits(arg_3.x), var_0.e).c.d & var_1.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.e.x + -452f) + _wgslsmith_f_op_f32(round(-1384f))), -1000f)));
    global3 = array<Struct_2, 18>();
    return var_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_2, 18>();
    let var_0 = vec4<bool>(false && all(!select(vec4<bool>(true, global0.d.x, global0.e.d, false), vec4<bool>(global0.e.c, true, global0.c.c, true), false)), global0.e.a, true | all(!(!vec3<bool>(true, true, global0.d.x))), true);
    global2 = array<Struct_2, 10>();
    var var_1 = -global0.a.x;
    let var_2 = func_4(func_1(-808i, global0.e), !(!select(vec4<bool>(false, global0.d.x, var_0.x, var_0.x), var_0, !vec4<bool>(false, true, var_0.x, false))), func_1(global0.a.x, global0.e).c, _wgslsmith_clamp_vec4_i32(vec4<i32>(global0.b.x, -24883i, -global0.c.b.x, ~u_input.a) & select(global0.a, global0.a | global0.a, global0.d.x), vec4<i32>(~(-1i), -2147483647i, u_input.a, global0.b.x), select(firstLeadingBit(global0.a), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, 1i, global0.e.b.x, 36732i), vec4<i32>(-22217i, global0.a.x, u_input.a, u_input.a)), true) ^ global0.a));
    var var_3 = vec3<u32>(~abs(~33206u), ~reverseBits(_wgslsmith_mult_u32(101377u, 1u)), ~max(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(34507u, 0u, 4294967295u)), abs(26606u))) ^ ~vec3<u32>(1u, 1u, 1u);
    global3 = array<Struct_2, 18>();
    let var_4 = global0.e;
    let x = u_input.a;
    s_output = StorageBuffer(-1i);
}

