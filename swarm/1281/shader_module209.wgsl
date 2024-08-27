struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec3<bool>,
    e: vec3<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<i32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_3,
    c: Struct_3,
    d: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<bool>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 24> = array<bool, 24>(false, false, true, false, false, false, false, false, true, false, true, true, true, false, false, false, false, true, false, true, true, true, false, true);

var<private> global1: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(Struct_1(i32(-2147483648), vec2<i32>(1i, -4294i), vec4<u32>(1u, 4294967295u, 1u, 1u), vec2<i32>(35223i, -37696i)), 358f, Struct_1(119176i, vec2<i32>(2147483647i, -4955i), vec4<u32>(126913u, 1u, 4294967295u, 4294967295u), vec2<i32>(15090i, 48508i)), vec3<bool>(false, false, false), vec3<u32>(6367u, 73131u, 4294967295u)), Struct_2(Struct_1(14852i, vec2<i32>(2147483647i, -19578i), vec4<u32>(587u, 85503u, 0u, 1u), vec2<i32>(10128i, 2147483647i)), -1253f, Struct_1(-4600i, vec2<i32>(33766i, -10744i), vec4<u32>(0u, 1u, 23540u, 1u), vec2<i32>(-115i, 2147483647i)), vec3<bool>(false, false, true), vec3<u32>(1u, 59147u, 0u)), Struct_2(Struct_1(-10776i, vec2<i32>(-20782i, -1i), vec4<u32>(30082u, 4294967295u, 0u, 4294967295u), vec2<i32>(15612i, -56036i)), 1455f, Struct_1(-1413i, vec2<i32>(i32(-2147483648), 0i), vec4<u32>(4294967295u, 41510u, 1u, 1069u), vec2<i32>(-20031i, 1i)), vec3<bool>(true, true, false), vec3<u32>(59421u, 0u, 1u)), Struct_2(Struct_1(21383i, vec2<i32>(17290i, i32(-2147483648)), vec4<u32>(4294967295u, 12864u, 47395u, 75654u), vec2<i32>(i32(-2147483648), -1i)), -1354f, Struct_1(9171i, vec2<i32>(-1i, 2147483647i), vec4<u32>(44205u, 15780u, 16635u, 4294967295u), vec2<i32>(18565i, i32(-2147483648))), vec3<bool>(false, true, true), vec3<u32>(12518u, 14961u, 0u)), Struct_2(Struct_1(-21843i, vec2<i32>(-24732i, -5420i), vec4<u32>(22496u, 87587u, 0u, 1u), vec2<i32>(2147483647i, i32(-2147483648))), -1316f, Struct_1(i32(-2147483648), vec2<i32>(2147483647i, 28230i), vec4<u32>(4294967295u, 7473u, 1u, 0u), vec2<i32>(1i, -1i)), vec3<bool>(true, false, true), vec3<u32>(28303u, 2765u, 52434u)), Struct_2(Struct_1(2147483647i, vec2<i32>(-4373i, 41993i), vec4<u32>(4294967295u, 1u, 0u, 0u), vec2<i32>(15848i, 11646i)), -1294f, Struct_1(-54999i, vec2<i32>(i32(-2147483648), 1i), vec4<u32>(43940u, 140u, 1u, 0u), vec2<i32>(3804i, -26470i)), vec3<bool>(true, true, false), vec3<u32>(39359u, 1u, 24833u)), Struct_2(Struct_1(35292i, vec2<i32>(16153i, 2147483647i), vec4<u32>(82549u, 1u, 8859u, 32034u), vec2<i32>(-1i, 1i)), -463f, Struct_1(1i, vec2<i32>(-5825i, -8525i), vec4<u32>(0u, 0u, 370u, 11129u), vec2<i32>(1i, -3647i)), vec3<bool>(false, true, false), vec3<u32>(12760u, 5800u, 0u)), Struct_2(Struct_1(51940i, vec2<i32>(0i, 13508i), vec4<u32>(18326u, 62912u, 60819u, 4294967295u), vec2<i32>(i32(-2147483648), -77592i)), -1301f, Struct_1(-19045i, vec2<i32>(i32(-2147483648), i32(-2147483648)), vec4<u32>(11716u, 0u, 71757u, 6966u), vec2<i32>(1i, -1i)), vec3<bool>(false, true, true), vec3<u32>(1u, 48282u, 0u)), Struct_2(Struct_1(10231i, vec2<i32>(i32(-2147483648), -51133i), vec4<u32>(6730u, 1u, 93658u, 0u), vec2<i32>(-49634i, 7390i)), -425f, Struct_1(2147483647i, vec2<i32>(1i, 14016i), vec4<u32>(1u, 96828u, 1u, 60500u), vec2<i32>(2147483647i, 0i)), vec3<bool>(true, true, true), vec3<u32>(1u, 1u, 0u)), Struct_2(Struct_1(2147483647i, vec2<i32>(-2784i, 54405i), vec4<u32>(4294967295u, 4275u, 0u, 54103u), vec2<i32>(30495i, i32(-2147483648))), 747f, Struct_1(34500i, vec2<i32>(66946i, -43452i), vec4<u32>(4294967295u, 1u, 37302u, 4294967295u), vec2<i32>(-1i, 24329i)), vec3<bool>(false, false, false), vec3<u32>(113765u, 1u, 0u)), Struct_2(Struct_1(-23911i, vec2<i32>(-39507i, 1i), vec4<u32>(0u, 66119u, 60530u, 4250u), vec2<i32>(2147483647i, 0i)), 198f, Struct_1(-93626i, vec2<i32>(-3824i, 47069i), vec4<u32>(78368u, 69747u, 24168u, 65719u), vec2<i32>(0i, 2147483647i)), vec3<bool>(false, false, false), vec3<u32>(4294967295u, 64477u, 4294967295u)), Struct_2(Struct_1(i32(-2147483648), vec2<i32>(-1i, -1i), vec4<u32>(31067u, 1u, 1u, 9937u), vec2<i32>(-83935i, 1i)), -621f, Struct_1(2147483647i, vec2<i32>(6448i, -7697i), vec4<u32>(34754u, 1u, 22472u, 1u), vec2<i32>(9257i, 2147483647i)), vec3<bool>(false, true, false), vec3<u32>(53817u, 0u, 4294967295u)), Struct_2(Struct_1(-1i, vec2<i32>(1i, -1i), vec4<u32>(1u, 4294967295u, 0u, 28276u), vec2<i32>(2282i, 15044i)), -530f, Struct_1(15182i, vec2<i32>(178i, 37200i), vec4<u32>(5285u, 59207u, 5409u, 0u), vec2<i32>(-4739i, -11279i)), vec3<bool>(false, true, true), vec3<u32>(41251u, 65585u, 1u)), Struct_2(Struct_1(74404i, vec2<i32>(-1i, 25739i), vec4<u32>(46197u, 4294967295u, 0u, 0u), vec2<i32>(1i, 1i)), -782f, Struct_1(-1i, vec2<i32>(-1i, i32(-2147483648)), vec4<u32>(8145u, 44570u, 25623u, 1u), vec2<i32>(57296i, 25445i)), vec3<bool>(true, true, true), vec3<u32>(1u, 50971u, 61680u)), Struct_2(Struct_1(17324i, vec2<i32>(2147483647i, 64843i), vec4<u32>(0u, 28866u, 54680u, 4294967295u), vec2<i32>(-98538i, 0i)), 312f, Struct_1(i32(-2147483648), vec2<i32>(i32(-2147483648), -1i), vec4<u32>(37417u, 109143u, 1u, 27561u), vec2<i32>(-28278i, 1i)), vec3<bool>(false, false, true), vec3<u32>(48240u, 0u, 1u)), Struct_2(Struct_1(-35493i, vec2<i32>(21114i, -25871i), vec4<u32>(42698u, 4294967295u, 4294967295u, 1u), vec2<i32>(-22326i, -50321i)), 1386f, Struct_1(i32(-2147483648), vec2<i32>(-21173i, 1i), vec4<u32>(1u, 4294967295u, 11689u, 19462u), vec2<i32>(-13500i, 50603i)), vec3<bool>(false, false, false), vec3<u32>(33802u, 1u, 105093u)), Struct_2(Struct_1(105150i, vec2<i32>(2147483647i, 18277i), vec4<u32>(43052u, 62355u, 40260u, 0u), vec2<i32>(-22766i, -1i)), -138f, Struct_1(0i, vec2<i32>(0i, 1i), vec4<u32>(5325u, 5169u, 0u, 1u), vec2<i32>(1i, 1i)), vec3<bool>(true, true, true), vec3<u32>(23393u, 4294967295u, 8881u)), Struct_2(Struct_1(1i, vec2<i32>(-69973i, -36361i), vec4<u32>(11237u, 34068u, 8733u, 1u), vec2<i32>(17385i, 15116i)), -235f, Struct_1(-53670i, vec2<i32>(71098i, 2147483647i), vec4<u32>(34089u, 30311u, 11184u, 76796u), vec2<i32>(-12382i, i32(-2147483648))), vec3<bool>(true, true, true), vec3<u32>(4294967295u, 0u, 38668u)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: vec2<bool>, arg_1: u32, arg_2: Struct_2, arg_3: vec3<i32>) -> i32 {
    global0 = array<bool, 24>();
    return countOneBits(~u_input.a.x & abs(-1i));
}

fn func_3(arg_0: Struct_4) -> i32 {
    var var_0 = Struct_1(u_input.a.x, abs(arg_0.a.zy), abs(~(~vec4<u32>(97990u, 16953u, 4294967295u, 37791u))), ~u_input.a.zz);
    return _wgslsmith_add_i32(arg_0.a.x, arg_0.a.x);
}

fn func_2(arg_0: bool, arg_1: vec3<f32>) -> vec4<i32> {
    let var_0 = Struct_5(global1[_wgslsmith_index_u32(~firstLeadingBit(1830u), 18u)], vec2<bool>(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-arg_1.x)) >= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1.x + -443f), arg_1.x)), false), arg_1.x);
    let var_1 = min(countOneBits(u_input.a) | ~u_input.a, vec4<i32>(0i & select(u_input.a.x, 31117i, global0[_wgslsmith_index_u32(96945u, 24u)]), abs(-var_0.a.c.a), ~_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, u_input.a.x, var_0.a.a.d.x, var_0.a.c.d.x)), 2147483647i)) & vec4<i32>(_wgslsmith_dot_vec2_i32(var_0.a.a.d, firstLeadingBit(vec2<i32>(1i, -1i) ^ vec2<i32>(-7466i, u_input.a.x))), _wgslsmith_dot_vec4_i32(-(~u_input.a), vec4<i32>(func_3(Struct_4(vec3<i32>(var_0.a.a.b.x, u_input.a.x, 4195i), Struct_3(vec3<f32>(arg_1.x, 444f, 102f), vec3<i32>(var_0.a.c.a, 30108i, u_input.a.x)), Struct_3(arg_1, vec3<i32>(var_0.a.a.b.x, u_input.a.x, var_0.a.a.b.x)), Struct_3(vec3<f32>(var_0.a.b, -1618f, arg_1.x), vec3<i32>(u_input.a.x, u_input.a.x, 1i)))), _wgslsmith_clamp_i32(var_0.a.a.b.x, -1i, -28888i), u_input.a.x, u_input.a.x)), var_0.a.c.a, var_0.a.c.d.x);
    let var_2 = Struct_4(~abs(vec3<i32>(_wgslsmith_clamp_i32(u_input.a.x, 41969i, var_1.x), u_input.a.x, ~u_input.a.x)), Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(231f, 251f, -677f) - vec3<f32>(var_0.c, -954f, 1156f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1 * arg_1) + _wgslsmith_f_op_vec3_f32(vec3<f32>(632f, 122f, arg_1.x) - vec3<f32>(-1000f, arg_1.x, arg_1.x)))), vec3<i32>(1i, firstTrailingBit(u_input.a.x), ~var_0.a.a.d.x & func_1(var_0.b, 0u, var_0.a, vec3<i32>(62828i, var_1.x, -1i)))), Struct_3(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(arg_1 - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_1.x, -235f, -461f)))))), _wgslsmith_mod_vec3_i32(countOneBits(u_input.a.yzw) << (countOneBits(vec3<u32>(var_0.a.a.c.x, var_0.a.c.c.x, 0u)) % vec3<u32>(32u)), var_1.wwz)), Struct_3(arg_1, max(var_1.zyw, _wgslsmith_mod_vec3_i32(vec3<i32>(0i, var_0.a.a.d.x, -42890i), vec3<i32>(1i, -2147483647i, -2147483647i)))));
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-761f, var_2.c.a.x) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.d.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x * var_2.d.a.x) - -734f))));
    global1 = array<Struct_2, 18>();
    return select((~abs(u_input.a) << (vec4<u32>(var_0.a.a.c.x, var_0.a.e.x, firstLeadingBit(var_0.a.e.x), 90600u) % vec4<u32>(32u))) ^ vec4<i32>(u_input.a.x, _wgslsmith_mod_i32(_wgslsmith_mod_i32(var_1.x, var_1.x), -37592i), select(u_input.a.x, var_2.b.b.x, var_0.b.x), _wgslsmith_dot_vec3_i32(max(var_2.d.b, var_2.d.b), vec3<i32>(1i, -47479i, -17030i))), vec4<i32>(-1i) * -(~(-var_1)), any(vec3<bool>(any(vec4<bool>(arg_0, true, false, false)), -1i != firstTrailingBit(730i), any(vec4<bool>(var_0.b.x, false, true, true)))));
}

fn func_4(arg_0: i32, arg_1: vec4<i32>) -> StorageBuffer {
    global1 = array<Struct_2, 18>();
    var var_0 = Struct_1(arg_0, abs(u_input.a.yy | u_input.a.yz) ^ _wgslsmith_mult_vec2_i32(-vec2<i32>(arg_1.x, 17678i), _wgslsmith_clamp_vec2_i32(firstLeadingBit(vec2<i32>(-2147483647i, 15737i)), vec2<i32>(-2147483647i, arg_0), arg_1.xw)), _wgslsmith_clamp_vec4_u32(max(abs(~vec4<u32>(47747u, 1u, 1u, 9333u)), firstTrailingBit(vec4<u32>(45336u, 19881u, 10616u, 46845u)) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))), ~(~vec4<u32>(4294967295u, 37078u, 4294967295u, 29169u)), _wgslsmith_sub_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u))), select(-u_input.a.xz & select(-vec2<i32>(arg_1.x, 9776i), vec2<i32>(-2147483647i, 1i), select(vec2<bool>(global0[_wgslsmith_index_u32(17u, 24u)], global0[_wgslsmith_index_u32(12812u, 24u)]), vec2<bool>(global0[_wgslsmith_index_u32(21575u, 24u)], global0[_wgslsmith_index_u32(65478u, 24u)]), true)), -u_input.a.zz, select(select(!vec2<bool>(false, global0[_wgslsmith_index_u32(2078u, 24u)]), !vec2<bool>(global0[_wgslsmith_index_u32(0u, 24u)], true), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(39576u, 1u), 24u)]), vec2<bool>(true, any(vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 24u)]))), true)));
    var_0 = Struct_1(reverseBits(_wgslsmith_mod_i32(2147483647i, -u_input.a.x)), ~arg_1.yw, abs(firstLeadingBit(~_wgslsmith_div_vec4_u32(vec4<u32>(56757u, var_0.c.x, 38838u, var_0.c.x), vec4<u32>(var_0.c.x, 104191u, var_0.c.x, var_0.c.x)))), var_0.b);
    global1 = array<Struct_2, 18>();
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(ceil(1738f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(475f, 1000f))), 1f) * 2013f));
    return StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(max(-473f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(923f - var_1.x) + -2027f))), 1368f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.x))))), var_1.x), ~var_0.c.wz, _wgslsmith_add_i32(arg_0 << ((firstTrailingBit(4294967295u) | ~var_0.c.x) % 32u), -_wgslsmith_add_i32(var_0.a, -1i)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 18>();
    global0 = array<bool, 24>();
    let x = u_input.a;
    s_output = func_4((u_input.a.x ^ func_1(!vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 24u)]), 63755u, global1[_wgslsmith_index_u32(~4294967295u, 18u)], u_input.a.xww)) | ~firstTrailingBit(u_input.a.x), ~func_2(true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(662f, -1318f, 668f), vec3<f32>(189f, 148f, 546f))) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1632f, -303f, -333f))))));
}

