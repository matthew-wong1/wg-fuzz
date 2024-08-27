struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: f32,
    d: vec2<f32>,
    e: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec2<i32>,
    c: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(Struct_1(vec4<bool>(false, true, true, true), vec3<bool>(false, true, true), vec2<i32>(-7858i, -52303i), vec4<u32>(1u, 23432u, 0u, 0u)), 4294967295u, 1116f, vec2<f32>(-251f, -1267f), vec4<i32>(-55787i, 1i, 16937i, -46326i)), Struct_2(Struct_1(vec4<bool>(true, true, true, true), vec3<bool>(true, false, false), vec2<i32>(1i, -374i), vec4<u32>(1u, 82812u, 4294967295u, 0u)), 51017u, 506f, vec2<f32>(1231f, -700f), vec4<i32>(0i, 9323i, -1i, 10565i)), Struct_2(Struct_1(vec4<bool>(true, true, true, false), vec3<bool>(false, true, true), vec2<i32>(0i, -18149i), vec4<u32>(36767u, 0u, 4294967295u, 0u)), 1u, 273f, vec2<f32>(317f, 588f), vec4<i32>(-1i, 0i, 0i, 0i)), Struct_2(Struct_1(vec4<bool>(true, false, false, false), vec3<bool>(true, false, true), vec2<i32>(2147483647i, 2147483647i), vec4<u32>(59494u, 26273u, 1u, 1u)), 40063u, -1000f, vec2<f32>(186f, -680f), vec4<i32>(i32(-2147483648), i32(-2147483648), 8806i, -1i)), Struct_2(Struct_1(vec4<bool>(true, true, true, true), vec3<bool>(false, false, false), vec2<i32>(-1i, 39949i), vec4<u32>(9160u, 1u, 1u, 104608u)), 1u, -993f, vec2<f32>(-680f, 1000f), vec4<i32>(22436i, -1i, 30194i, i32(-2147483648))), Struct_2(Struct_1(vec4<bool>(true, true, false, true), vec3<bool>(true, false, true), vec2<i32>(2147483647i, -2421i), vec4<u32>(5158u, 29759u, 4294967295u, 1u)), 77033u, -864f, vec2<f32>(-668f, -890f), vec4<i32>(2466i, 38940i, 2147483647i, 18706i)), Struct_2(Struct_1(vec4<bool>(false, false, false, true), vec3<bool>(true, false, true), vec2<i32>(-24953i, 46357i), vec4<u32>(1u, 0u, 21566u, 1u)), 84100u, -140f, vec2<f32>(-1000f, 778f), vec4<i32>(2147483647i, 1i, 1i, 2140i)), Struct_2(Struct_1(vec4<bool>(true, false, true, true), vec3<bool>(false, true, true), vec2<i32>(8088i, 2147483647i), vec4<u32>(6738u, 0u, 0u, 14181u)), 3999u, -1139f, vec2<f32>(1000f, -631f), vec4<i32>(3775i, 0i, i32(-2147483648), -1i)), Struct_2(Struct_1(vec4<bool>(true, false, true, false), vec3<bool>(true, true, false), vec2<i32>(28582i, -26778i), vec4<u32>(0u, 0u, 4294967295u, 6565u)), 4294967295u, 818f, vec2<f32>(-1091f, 392f), vec4<i32>(i32(-2147483648), -73869i, i32(-2147483648), -1i)), Struct_2(Struct_1(vec4<bool>(false, true, true, false), vec3<bool>(true, false, false), vec2<i32>(684i, i32(-2147483648)), vec4<u32>(0u, 4294967295u, 4294967295u, 45592u)), 37939u, 1352f, vec2<f32>(1512f, 440f), vec4<i32>(i32(-2147483648), -69828i, 10319i, 2147483647i)), Struct_2(Struct_1(vec4<bool>(true, false, true, true), vec3<bool>(true, true, false), vec2<i32>(8804i, 1i), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 1u)), 1u, 143f, vec2<f32>(-1517f, 509f), vec4<i32>(-1i, -14726i, 19265i, 0i)), Struct_2(Struct_1(vec4<bool>(false, false, false, false), vec3<bool>(false, false, true), vec2<i32>(0i, 50539i), vec4<u32>(0u, 1u, 0u, 1u)), 36847u, 954f, vec2<f32>(-368f, 1868f), vec4<i32>(65552i, i32(-2147483648), 0i, -40259i)), Struct_2(Struct_1(vec4<bool>(true, true, true, true), vec3<bool>(false, false, true), vec2<i32>(-11912i, 2147483647i), vec4<u32>(47475u, 7581u, 1u, 48241u)), 10759u, -333f, vec2<f32>(264f, 1954f), vec4<i32>(10550i, 0i, i32(-2147483648), i32(-2147483648))), Struct_2(Struct_1(vec4<bool>(false, false, false, false), vec3<bool>(false, false, true), vec2<i32>(2147483647i, 2147483647i), vec4<u32>(4294967295u, 15304u, 1u, 32262u)), 75215u, -1202f, vec2<f32>(754f, -306f), vec4<i32>(-4754i, i32(-2147483648), i32(-2147483648), -9343i)), Struct_2(Struct_1(vec4<bool>(true, true, false, false), vec3<bool>(false, true, true), vec2<i32>(1i, 17425i), vec4<u32>(92034u, 0u, 0u, 1u)), 4294967295u, 1267f, vec2<f32>(801f, 229f), vec4<i32>(1i, -23819i, 22339i, -66555i)), Struct_2(Struct_1(vec4<bool>(true, false, true, false), vec3<bool>(false, false, true), vec2<i32>(-30597i, i32(-2147483648)), vec4<u32>(4294967295u, 18698u, 0u, 2694u)), 1u, -817f, vec2<f32>(1000f, -313f), vec4<i32>(-10181i, 21754i, 2147483647i, 2147483647i)), Struct_2(Struct_1(vec4<bool>(false, false, true, false), vec3<bool>(true, true, true), vec2<i32>(1i, 2147483647i), vec4<u32>(31227u, 0u, 0u, 27005u)), 61438u, 576f, vec2<f32>(-567f, -631f), vec4<i32>(-13438i, 1i, -14801i, -1i)), Struct_2(Struct_1(vec4<bool>(true, true, true, true), vec3<bool>(false, false, true), vec2<i32>(-1i, 0i), vec4<u32>(105766u, 3909u, 16606u, 35981u)), 1u, -1507f, vec2<f32>(1000f, -479f), vec4<i32>(-27017i, -2449i, 2147483647i, 2147483647i)), Struct_2(Struct_1(vec4<bool>(false, false, false, true), vec3<bool>(false, true, true), vec2<i32>(3864i, -74247i), vec4<u32>(19799u, 4993u, 1u, 1u)), 0u, 528f, vec2<f32>(1000f, -1433f), vec4<i32>(1144i, 0i, 1i, -26305i)), Struct_2(Struct_1(vec4<bool>(true, true, true, false), vec3<bool>(true, true, false), vec2<i32>(-12372i, 2147483647i), vec4<u32>(102979u, 0u, 30846u, 8392u)), 100607u, -376f, vec2<f32>(338f, 1633f), vec4<i32>(0i, -25i, 2147483647i, 1i)), Struct_2(Struct_1(vec4<bool>(true, true, false, true), vec3<bool>(false, true, false), vec2<i32>(24726i, 3232i), vec4<u32>(0u, 7171u, 50458u, 1u)), 28572u, 164f, vec2<f32>(1058f, 740f), vec4<i32>(0i, 0i, -28140i, 49707i)), Struct_2(Struct_1(vec4<bool>(true, false, true, false), vec3<bool>(false, false, false), vec2<i32>(i32(-2147483648), -1i), vec4<u32>(1u, 802u, 0u, 3643u)), 4294967295u, -320f, vec2<f32>(2317f, -844f), vec4<i32>(0i, 33743i, -17224i, 0i)));

var<private> global1: array<f32, 18>;

var<private> global2: array<vec3<i32>, 17> = array<vec3<i32>, 17>(vec3<i32>(-26051i, 42062i, -1i), vec3<i32>(-22128i, 1i, i32(-2147483648)), vec3<i32>(1i, 0i, 0i), vec3<i32>(i32(-2147483648), -4727i, 0i), vec3<i32>(-57727i, -39890i, -1i), vec3<i32>(30147i, 2147483647i, 60148i), vec3<i32>(26349i, 42953i, i32(-2147483648)), vec3<i32>(14723i, 33909i, 47179i), vec3<i32>(-1i, 70321i, 2147483647i), vec3<i32>(i32(-2147483648), -28980i, -40446i), vec3<i32>(-1i, -63210i, 2147483647i), vec3<i32>(i32(-2147483648), -1i, -1i), vec3<i32>(i32(-2147483648), 1i, 0i), vec3<i32>(1i, 3829i, -65189i), vec3<i32>(-1i, 1i, 1i), vec3<i32>(i32(-2147483648), -59137i, 4997i), vec3<i32>(2147483647i, -15440i, 1i));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_2() -> i32 {
    return -min(u_input.b, u_input.a.x);
}

fn func_1(arg_0: bool, arg_1: bool) -> Struct_5 {
    let var_0 = 1u;
    let var_1 = vec4<i32>(0i, 52064i, firstTrailingBit(1i) & _wgslsmith_div_i32(u_input.a.x << ((var_0 >> (118341u % 32u)) % 32u), u_input.d), _wgslsmith_div_i32(_wgslsmith_mod_i32(~(-u_input.a.x), func_2()), ~(~(0i | u_input.a.x))));
    var var_2 = -u_input.d;
    var var_3 = ~u_input.e.yy;
    let var_4 = firstTrailingBit(~13762u);
    return Struct_5(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_4, var_0, var_0) << ((vec4<u32>(var_3.x, 1u, 28883u, var_3.x) ^ vec4<u32>(var_0, var_0, 35634u, var_0)) % vec4<u32>(32u)), ~vec4<u32>(var_0, 4294967295u, 35090u, 0u)), firstTrailingBit(0u >> (~u_input.c % 32u))), 22u)]);
}

fn func_3(arg_0: Struct_5, arg_1: bool, arg_2: i32, arg_3: i32) -> Struct_4 {
    global0 = array<Struct_2, 22>();
    global2 = array<vec3<i32>, 17>();
    global1 = array<f32, 18>();
    let var_0 = func_1(arg_1, arg_0.a.a.a.x);
    global0 = array<Struct_2, 22>();
    return Struct_4(arg_0.a.d.x, _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(var_0.a.e, vec4<i32>(arg_3, arg_2, arg_3, 1554i)), arg_0.a.e.x), -select(u_input.a.zz, vec2<i32>(2147483647i, arg_2), vec2<bool>(false, true))), firstTrailingBit(reverseBits(vec2<i32>(var_0.a.e.x, -1i)))), Struct_3(Struct_2(var_0.a.a, arg_0.a.a.d.x, _wgslsmith_div_f32(-357f, var_0.a.c), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(arg_0.a.a.d.x, 18u)], global1[_wgslsmith_index_u32(arg_0.a.a.d.x, 18u)]) * vec2<f32>(global1[_wgslsmith_index_u32(1u, 18u)], 714f)))), vec4<i32>(arg_3, -11016i, arg_2, 12654i)), Struct_1(arg_0.a.a.a, !arg_0.a.a.b, var_0.a.e.wx, vec4<u32>(_wgslsmith_add_u32(27976u, u_input.c), var_0.a.a.d.x, 9640u, u_input.e.x)), var_0.a, Struct_2(arg_0.a.a, ~min(var_0.a.b, var_0.a.a.d.x), var_0.a.d.x, arg_0.a.d, max(_wgslsmith_sub_vec4_i32(var_0.a.e, vec4<i32>(0i, var_0.a.a.c.x, u_input.a.x, var_0.a.a.c.x)), _wgslsmith_div_vec4_i32(arg_0.a.e, vec4<i32>(0i, var_0.a.a.c.x, -44351i, 1i))))));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_4, arg_2: Struct_1, arg_3: Struct_3) -> Struct_1 {
    var var_0 = func_3(Struct_5(Struct_2(func_3(func_1(true, false), all(vec4<bool>(arg_3.b.b.x, arg_1.c.c.a.a.x, true, false)), -4807i, -arg_1.c.c.e.x).c.b, 1u, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1548f + -1461f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-646f, 451f) + vec2<f32>(global1[_wgslsmith_index_u32(arg_2.d.x, 18u)], arg_3.a.d.x)), vec2<f32>(527f, -308f)), -arg_3.c.e & countOneBits(arg_1.c.c.e))), arg_1.c.a.a.b.x, -_wgslsmith_dot_vec3_i32(select(select(arg_3.c.e.yxw, vec3<i32>(arg_1.b.x, arg_3.a.a.c.x, 2147483647i), true), reverseBits(arg_3.c.e.xwx), select(arg_2.a.wzz, arg_3.b.a.zyw, arg_1.c.d.a.b)), abs(-vec3<i32>(-1944i, -1i, arg_1.c.a.e.x))), (i32(-1i) * -abs(arg_3.a.e.x)) & _wgslsmith_dot_vec2_i32(arg_3.d.a.c, _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(1i, -1i), vec2<i32>(11740i, -5114i)), u_input.a.xz))).c.a.a;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(137f - global1[_wgslsmith_index_u32(~arg_0.x, 18u)]) - arg_1.a);
    global0 = array<Struct_2, 22>();
    let var_2 = vec3<u32>(0u, _wgslsmith_add_u32(_wgslsmith_clamp_u32(firstLeadingBit(55389u), _wgslsmith_sub_u32(~17554u, 62589u), 1u), ~max(_wgslsmith_add_u32(arg_3.c.b, var_0.d.x), ~u_input.c)), func_3(func_1(true, false), true, _wgslsmith_dot_vec2_i32(-arg_1.c.a.a.c, vec2<i32>(-30004i, arg_3.a.a.c.x)), -u_input.a.x).c.c.b << (arg_0.x % 32u));
    global1 = array<f32, 18>();
    return Struct_1(func_1(any(!var_0.a.xw), arg_2.b.x).a.a.a, !select(!arg_3.a.a.a.xzw, select(vec3<bool>(arg_3.b.b.x, var_0.a.x, false), !arg_1.c.a.a.a.yyy, true), arg_1.c.b.a.zyy), -firstLeadingBit(reverseBits(-vec2<i32>(0i, arg_3.a.e.x))), arg_2.d);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 22>();
    let var_0 = func_4(vec3<u32>(u_input.e.x, _wgslsmith_add_u32(4294967295u, 9345u >> ((9597u | u_input.c) % 32u)), 0u), func_3(func_1(false, abs(u_input.c) <= ~u_input.e.x), global1[_wgslsmith_index_u32(u_input.e.x, 18u)] <= 929f, -_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(-2147483647i, u_input.b, u_input.a.x)) & -1i, -50008i), Struct_1(vec4<bool>(true, false, true, !all(vec2<bool>(true, false))), vec3<bool>(true, select(u_input.c == 10240u, false, all(vec3<bool>(true, false, false))), all(vec4<bool>(true, true, false, true)) && all(vec3<bool>(false, true, true))), ~func_3(func_1(false, true), true, abs(-26566i), -u_input.d).c.a.a.c, vec4<u32>(u_input.c, u_input.c, 29130u, 4294967295u)), func_3(func_1(false, true), false, firstLeadingBit(abs(43444i)), _wgslsmith_sub_i32(u_input.a.x, u_input.a.x)).c);
    var var_1 = vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.e.wx, vec2<u32>(firstTrailingBit(abs(47761u)), u_input.c)), ~1u, 25423u, ~u_input.c << (_wgslsmith_add_u32(var_0.d.x | firstLeadingBit(4294967295u), 6821u) % 32u));
    var var_2 = func_4(firstTrailingBit(u_input.e.wyy), func_3(Struct_5(Struct_2(Struct_1(vec4<bool>(false, true, true, var_0.a.x), vec3<bool>(var_0.b.x, false, false), u_input.a.zy, var_0.d), var_1.x, _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(var_1.x, 18u)])), vec2<f32>(global1[_wgslsmith_index_u32(0u, 18u)], 129f), ~vec4<i32>(u_input.b, u_input.b, u_input.a.x, var_0.c.x))), var_0.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(u_input.a.x, 20806i), u_input.d, -u_input.a.x), _wgslsmith_div_vec3_i32(func_1(false, var_0.a.x).a.e.wzx, vec3<i32>(2147483647i, -1i, 2147483647i))), 3928i), Struct_1(func_1(_wgslsmith_mult_u32(var_0.d.x, 1u) != u_input.e.x, var_0.b.x).a.a.a, select(vec3<bool>(all(var_0.b.xy), !var_0.b.x, !var_0.b.x), var_0.a.wyy, vec3<bool>(var_0.a.x && false, true, false)), ~max(_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, 640i), vec2<i32>(var_0.c.x, 0i)), _wgslsmith_sub_vec2_i32(u_input.a.yy, vec2<i32>(u_input.a.x, -57269i))), abs(vec4<u32>(~0u, ~1u, _wgslsmith_mod_u32(1u, u_input.c), func_1(true, var_0.b.x).a.b))), Struct_3(func_1(var_0.b.x, var_0.b.x).a, var_0, global0[_wgslsmith_index_u32(var_0.d.x, 22u)], Struct_2(var_0, ~_wgslsmith_div_u32(16116u, var_1.x), 185f, vec2<f32>(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 25500u), 18u)], -1318f), (vec4<i32>(0i, var_0.c.x, 11705i, var_0.c.x) ^ vec4<i32>(8170i, 0i, 1i, var_0.c.x)) << (vec4<u32>(var_1.x, var_0.d.x, 32751u, 1u) % vec4<u32>(32u))))).b.x;
    global1 = array<f32, 18>();
    var var_3 = Struct_5(Struct_2(var_0, 1u, global1[_wgslsmith_index_u32(4294967295u & _wgslsmith_sub_u32(func_4(vec3<u32>(var_1.x, 60025u, var_1.x), Struct_4(global1[_wgslsmith_index_u32(u_input.e.x, 18u)], vec2<i32>(-2147483647i, var_0.c.x), Struct_3(Struct_2(Struct_1(vec4<bool>(false, false, true, var_0.b.x), var_0.a.yyz, vec2<i32>(2147483647i, u_input.a.x), vec4<u32>(83520u, 4294967295u, var_0.d.x, 67743u)), var_0.d.x, 218f, vec2<f32>(global1[_wgslsmith_index_u32(u_input.c, 18u)], 349f), vec4<i32>(u_input.d, u_input.d, var_0.c.x, 33866i)), var_0, Struct_2(Struct_1(var_0.a, var_0.b, vec2<i32>(0i, u_input.a.x), var_0.d), 75504u, 288f, vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 18u)], 718f), vec4<i32>(54996i, 61860i, -485i, var_0.c.x)), Struct_2(var_0, 15062u, global1[_wgslsmith_index_u32(var_1.x, 18u)], vec2<f32>(global1[_wgslsmith_index_u32(516u, 18u)], global1[_wgslsmith_index_u32(1u, 18u)]), vec4<i32>(3952i, 47142i, 2147483647i, -11510i)))), var_0, Struct_3(global0[_wgslsmith_index_u32(37381u, 22u)], Struct_1(vec4<bool>(var_0.b.x, false, var_0.a.x, var_0.a.x), vec3<bool>(true, true, var_0.a.x), u_input.a.yz, var_0.d), Struct_2(var_0, var_0.d.x, global1[_wgslsmith_index_u32(89016u, 18u)], vec2<f32>(-2002f, global1[_wgslsmith_index_u32(var_1.x, 18u)]), vec4<i32>(0i, u_input.b, var_0.c.x, var_0.c.x)), Struct_2(var_0, u_input.e.x, -488f, vec2<f32>(706f, global1[_wgslsmith_index_u32(var_1.x, 18u)]), vec4<i32>(var_0.c.x, 2147483647i, -29176i, 2147483647i)))).d.x, 0u >> (var_1.x % 32u)), 18u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(1371f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(28614u, 18u)] - -923f))), -firstTrailingBit(-vec4<i32>(u_input.d, var_0.c.x, 6472i, 17420i))));
    let x = u_input.a;
    s_output = StorageBuffer(~((70278u << (var_3.a.b % 32u)) ^ _wgslsmith_div_u32(var_3.a.a.d.x, 0u)) << (_wgslsmith_mod_u32(~1u, _wgslsmith_mult_u32(var_0.d.x, ~0u)) % 32u), vec3<i32>(-1i) * -(~_wgslsmith_add_vec3_i32(vec3<i32>(var_3.a.a.c.x, 41150i, -39596i), u_input.a)), vec2<i32>(_wgslsmith_add_i32(-54748i, 1i << (var_3.a.b % 32u)), 2147483647i), -1088f);
}

