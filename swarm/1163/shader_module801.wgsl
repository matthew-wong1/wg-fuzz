struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: u32,
    d: vec4<i32>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: Struct_1,
    d: bool,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: f32,
    d: vec3<bool>,
    e: Struct_2,
}

struct Struct_5 {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-365f, -469f);

var<private> global1: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(886f, vec3<u32>(1u, 4294967295u, 1u), true, 0u), Struct_1(-1210f, vec3<u32>(4294967295u, 96541u, 1u), false, 30002u), Struct_1(-318f, vec3<u32>(4294967295u, 34837u, 1u), true, 1u), Struct_1(1436f, vec3<u32>(1u, 47462u, 25605u), true, 4294967295u), Struct_1(448f, vec3<u32>(16512u, 18761u, 27426u), false, 24946u), Struct_1(-1613f, vec3<u32>(623u, 0u, 1u), false, 110665u), Struct_1(-609f, vec3<u32>(29671u, 4294967295u, 1u), false, 117117u), Struct_1(-534f, vec3<u32>(6106u, 37783u, 335u), false, 48985u), Struct_1(1563f, vec3<u32>(4294967295u, 37449u, 4294967295u), true, 65664u), Struct_1(1773f, vec3<u32>(21395u, 0u, 35723u), false, 52276u), Struct_1(2148f, vec3<u32>(6763u, 5508u, 21300u), true, 17335u), Struct_1(632f, vec3<u32>(0u, 37459u, 14178u), false, 59299u), Struct_1(651f, vec3<u32>(13277u, 43369u, 1u), true, 15840u), Struct_1(901f, vec3<u32>(62801u, 30706u, 1u), true, 4294967295u), Struct_1(147f, vec3<u32>(1u, 0u, 1u), true, 4294967295u), Struct_1(1553f, vec3<u32>(1u, 2905u, 1u), true, 4294967295u), Struct_1(791f, vec3<u32>(0u, 4294967295u, 4294967295u), true, 43477u), Struct_1(2211f, vec3<u32>(1733u, 64810u, 1u), true, 1u), Struct_1(1360f, vec3<u32>(1u, 35947u, 8535u), false, 1u), Struct_1(-357f, vec3<u32>(0u, 4294967295u, 0u), true, 53906u), Struct_1(-681f, vec3<u32>(0u, 4294967295u, 1u), false, 1u), Struct_1(155f, vec3<u32>(13965u, 4294967295u, 17511u), false, 135929u), Struct_1(-294f, vec3<u32>(0u, 97019u, 4294967295u), true, 7981u), Struct_1(149f, vec3<u32>(0u, 6147u, 95556u), true, 36595u), Struct_1(-414f, vec3<u32>(4294967295u, 4294967295u, 0u), true, 77927u), Struct_1(1000f, vec3<u32>(0u, 4294967295u, 1u), true, 0u), Struct_1(333f, vec3<u32>(1u, 77842u, 72698u), true, 62432u), Struct_1(-708f, vec3<u32>(26162u, 22239u, 24947u), true, 50034u), Struct_1(206f, vec3<u32>(60878u, 31269u, 13663u), true, 4294967295u), Struct_1(2019f, vec3<u32>(46056u, 1u, 4294967295u), false, 19388u), Struct_1(-952f, vec3<u32>(30535u, 46966u, 25850u), true, 32838u), Struct_1(2000f, vec3<u32>(34209u, 74736u, 0u), true, 63929u));

var<private> global2: array<f32, 8>;

var<private> global3: vec3<i32> = vec3<i32>(65854i, -30690i, 1i);

var<private> global4: array<Struct_4, 16> = array<Struct_4, 16>(Struct_4(false, -73491i, -435f, vec3<bool>(false, false, true), Struct_2(vec4<bool>(true, true, false, false), Struct_1(1360f, vec3<u32>(4294967295u, 22973u, 0u), true, 0u), 4294967295u, vec4<i32>(1i, -20256i, -18676i, -49093i), vec3<f32>(2476f, -184f, 465f))), Struct_4(false, 1i, -174f, vec3<bool>(true, false, false), Struct_2(vec4<bool>(false, true, false, true), Struct_1(727f, vec3<u32>(4294967295u, 37095u, 6426u), false, 4294967295u), 4294967295u, vec4<i32>(-6479i, 2147483647i, 49071i, 0i), vec3<f32>(-672f, -345f, 1639f))), Struct_4(false, -42802i, -560f, vec3<bool>(false, false, false), Struct_2(vec4<bool>(false, true, false, false), Struct_1(-1433f, vec3<u32>(27862u, 14352u, 147u), true, 25347u), 1u, vec4<i32>(0i, -34172i, -1i, 81883i), vec3<f32>(-1497f, 1000f, 1000f))), Struct_4(false, 2147483647i, 1000f, vec3<bool>(false, false, true), Struct_2(vec4<bool>(false, false, true, true), Struct_1(-1347f, vec3<u32>(0u, 49751u, 0u), false, 0u), 0u, vec4<i32>(1i, 23450i, 36498i, -40017i), vec3<f32>(-343f, -1627f, -555f))), Struct_4(false, 38200i, 955f, vec3<bool>(false, true, false), Struct_2(vec4<bool>(false, true, true, false), Struct_1(889f, vec3<u32>(1u, 17620u, 4294967295u), true, 0u), 0u, vec4<i32>(37168i, 2147483647i, i32(-2147483648), 0i), vec3<f32>(784f, 1029f, -283f))), Struct_4(true, -26442i, 151f, vec3<bool>(true, false, false), Struct_2(vec4<bool>(true, true, true, true), Struct_1(311f, vec3<u32>(0u, 1u, 0u), true, 17793u), 0u, vec4<i32>(-30424i, -6102i, 48913i, -8264i), vec3<f32>(190f, -885f, -458f))), Struct_4(false, -51144i, -1258f, vec3<bool>(true, false, true), Struct_2(vec4<bool>(true, false, false, true), Struct_1(-241f, vec3<u32>(0u, 4294967295u, 4294967295u), false, 1u), 4294967295u, vec4<i32>(25461i, 1i, -62072i, 29073i), vec3<f32>(-631f, 1428f, -578f))), Struct_4(true, -6551i, 904f, vec3<bool>(false, true, false), Struct_2(vec4<bool>(true, false, false, true), Struct_1(219f, vec3<u32>(0u, 4294967295u, 39218u), true, 4294967295u), 0u, vec4<i32>(-8557i, -35845i, i32(-2147483648), -38878i), vec3<f32>(-412f, 136f, -248f))), Struct_4(true, 20258i, 1575f, vec3<bool>(false, false, false), Struct_2(vec4<bool>(true, true, false, false), Struct_1(1289f, vec3<u32>(1u, 44686u, 1u), true, 14968u), 4294967295u, vec4<i32>(i32(-2147483648), -75138i, 2147483647i, 2147483647i), vec3<f32>(483f, 184f, -3534f))), Struct_4(false, 26627i, 1078f, vec3<bool>(true, true, false), Struct_2(vec4<bool>(true, true, false, false), Struct_1(-1000f, vec3<u32>(830u, 36453u, 0u), false, 4294967295u), 34531u, vec4<i32>(25358i, -1i, i32(-2147483648), 1i), vec3<f32>(-1098f, -746f, 866f))), Struct_4(true, 2147483647i, -520f, vec3<bool>(false, true, true), Struct_2(vec4<bool>(false, true, false, true), Struct_1(324f, vec3<u32>(74788u, 32464u, 0u), true, 1u), 1u, vec4<i32>(-1i, 2147483647i, 9114i, 2147483647i), vec3<f32>(1000f, -1154f, 102f))), Struct_4(true, i32(-2147483648), 325f, vec3<bool>(true, true, false), Struct_2(vec4<bool>(false, false, false, true), Struct_1(-1333f, vec3<u32>(3600u, 4294967295u, 66134u), true, 43897u), 1u, vec4<i32>(16101i, -1i, -38641i, 1i), vec3<f32>(-373f, 1174f, 1000f))), Struct_4(true, 11911i, 677f, vec3<bool>(false, true, true), Struct_2(vec4<bool>(true, false, false, true), Struct_1(816f, vec3<u32>(1u, 35244u, 1u), true, 0u), 0u, vec4<i32>(0i, -1i, 2147483647i, i32(-2147483648)), vec3<f32>(-331f, -2887f, 802f))), Struct_4(true, 1i, -1000f, vec3<bool>(true, false, true), Struct_2(vec4<bool>(false, false, true, true), Struct_1(-565f, vec3<u32>(47781u, 0u, 1u), true, 32996u), 97766u, vec4<i32>(85086i, -1i, 1i, -48568i), vec3<f32>(1965f, -164f, 860f))), Struct_4(false, 12181i, 462f, vec3<bool>(false, false, false), Struct_2(vec4<bool>(false, true, false, false), Struct_1(-307f, vec3<u32>(4294967295u, 5304u, 42011u), false, 4294967295u), 6338u, vec4<i32>(9082i, -1355i, 6924i, 0i), vec3<f32>(1161f, 257f, -382f))), Struct_4(true, -44009i, -826f, vec3<bool>(false, false, false), Struct_2(vec4<bool>(true, false, false, true), Struct_1(-154f, vec3<u32>(4294967295u, 28214u, 1u), false, 44559u), 0u, vec4<i32>(34474i, i32(-2147483648), 13424i, -3161i), vec3<f32>(143f, 1431f, 1000f))));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: u32) -> vec4<u32> {
    let var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(~(vec4<u32>(4294967295u, 1u, arg_0, arg_0) & vec4<u32>(arg_0, arg_0, 22353u, arg_0)), reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0, arg_0, 1u, arg_0), vec4<u32>(70u, arg_0, 1u, 15740u)))), reverseBits(countOneBits(5066u) & arg_0), ~(~(~39442u))), select(reverseBits(~vec3<u32>(arg_0, 28836u, arg_0) ^ vec3<u32>(1u, arg_0, 1u)), ~vec3<u32>(arg_0, arg_0, arg_0), !(u_input.b >= global3.x)));
    global2 = array<f32, 8>();
    var var_1 = any(select(select(!select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), vec2<bool>(true, true), false)), !vec2<bool>(all(vec3<bool>(true, false, false)), true), !all(vec3<bool>(false, false, true))));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.x * global0.x), global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.x))))));
    var_1 = _wgslsmith_f_op_f32(sign(1000f)) >= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2[_wgslsmith_index_u32(var_0, 8u)], -746f))));
    return _wgslsmith_clamp_vec4_u32(~(vec4<u32>(_wgslsmith_mult_u32(22582u, 36008u), abs(22986u), abs(0u), ~0u) << ((~vec4<u32>(arg_0, var_0, var_0, 3823u) ^ vec4<u32>(0u, 65644u, arg_0, var_0)) % vec4<u32>(32u))), abs(vec4<u32>(var_0 | var_0, max(firstTrailingBit(arg_0), ~var_0), 17966u, _wgslsmith_mod_u32(_wgslsmith_mod_u32(var_0, arg_0), min(20422u, arg_0)))), min(~firstLeadingBit(vec4<u32>(arg_0, 19296u, 4294967295u, var_0)) << (min(vec4<u32>(0u, 34820u, 28952u, arg_0), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0, var_0, var_0, var_0), vec4<u32>(1u, arg_0, arg_0, var_0))) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(38357u, var_0, 58591u, 2155u), vec4<u32>(1u, 4294967295u, arg_0, arg_0)) | _wgslsmith_add_vec4_u32(vec4<u32>(10955u, var_0, arg_0, 0u), vec4<u32>(arg_0, 30618u, 10659u, arg_0)), _wgslsmith_div_vec4_u32(vec4<u32>(var_0, var_0, arg_0, arg_0), min(vec4<u32>(var_0, 23847u, var_0, 1u), vec4<u32>(var_0, 4294967295u, 0u, 63528u))))));
}

fn func_2(arg_0: vec3<i32>, arg_1: u32, arg_2: vec2<f32>, arg_3: Struct_3) -> u32 {
    let var_0 = select(arg_3.a.wx, vec2<bool>(all(arg_3.a.yw), arg_3.d), vec2<bool>(arg_3.a.x, true && (~arg_0.x > -2147483647i)));
    let var_1 = arg_3.a.yx;
    var var_2 = _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(func_3(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_1, 9128u), arg_3.c.b)), vec4<u32>(_wgslsmith_mod_u32(arg_1, 1u), 37829u, ~24756u, arg_3.c.d & arg_3.c.d)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(arg_3.c.b.x, ~55407u, arg_1, ~arg_3.c.b.x), ~vec4<u32>(69567u, arg_3.c.d, 0u, arg_3.c.d)) % vec4<u32>(32u)), select(~vec4<u32>(~arg_3.c.d, 4294967295u, 16006u, ~0u), select(~firstTrailingBit(vec4<u32>(arg_1, arg_1, arg_1, arg_3.c.b.x)), _wgslsmith_mult_vec4_u32(~vec4<u32>(1u, arg_1, 85960u, arg_3.c.d), ~vec4<u32>(1u, 4294967295u, arg_1, 33392u)), any(!var_1)), select(vec4<bool>(all(vec2<bool>(true, true)), all(vec4<bool>(var_1.x, false, arg_3.d, arg_3.c.c)), true, true), !arg_3.a, global2[_wgslsmith_index_u32(arg_3.c.d ^ 10745u, 8u)] < arg_3.c.a)));
    global4 = array<Struct_4, 16>();
    var var_3 = ~vec4<u32>(var_2.x, max(0u, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(arg_3.c.b, arg_3.c.b), 73123u)), arg_3.c.d, 6521u);
    return 1344u;
}

fn func_4(arg_0: u32, arg_1: vec2<u32>, arg_2: f32, arg_3: vec4<f32>) -> Struct_3 {
    let var_0 = vec4<u32>(_wgslsmith_div_u32(~_wgslsmith_mod_u32(~0u, _wgslsmith_mod_u32(1603u, arg_0)), arg_0), ~(~(~20343u)) >> (0u % 32u), ~firstLeadingBit(_wgslsmith_mult_u32(~4294967295u, firstTrailingBit(arg_0))), 2033u);
    var var_1 = Struct_3(select(vec4<bool>(any(vec2<bool>(false, true)) & false, any(vec2<bool>(true, true)), true, true), !vec4<bool>(true, false, all(vec2<bool>(false, true)), false), vec4<bool>(false, false, true, all(vec3<bool>(true, true, true)))), _wgslsmith_clamp_vec3_i32(vec3<i32>(-global3.x, 0i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, global3.x, -2147483647i) >> (vec3<u32>(2809u, 0u, arg_0) % vec3<u32>(32u)), vec3<i32>(global3.x, u_input.c, -13417i) ^ vec3<i32>(global3.x, -2147483647i, 1i))), vec3<i32>(-1i, _wgslsmith_dot_vec2_i32(select(vec2<i32>(2147483647i, u_input.a), vec2<i32>(16584i, -1i), true), select(global3.yy, global3.xx, true)), 1i & u_input.c), -_wgslsmith_add_vec3_i32(~vec3<i32>(global3.x, u_input.b, 17556i), select(vec3<i32>(u_input.a, -7457i, 3234i), vec3<i32>(2147483647i, 2147483647i, global3.x), false))), global1[_wgslsmith_index_u32(12547u, 32u)], _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 8u)] * 253f) <= 217f);
    global4 = array<Struct_4, 16>();
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-897f, _wgslsmith_f_op_f32(-arg_3.x)));
    let var_3 = firstTrailingBit(abs(vec4<u32>(_wgslsmith_div_u32(arg_0, arg_1.x) | (arg_1.x & 4294967295u), arg_0, 29078u, _wgslsmith_div_u32(~var_1.c.b.x, arg_1.x))));
    return Struct_3(vec4<bool>(!((1u != var_1.c.b.x) & false), var_1.d, false, true), _wgslsmith_mod_vec3_i32(~vec3<i32>(-var_1.b.x, min(var_1.b.x, 22764i), 1i), -select(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, u_input.a, -1i), var_1.b, var_1.b), var_1.b, true && var_1.a.x)), global1[_wgslsmith_index_u32(arg_1.x, 32u)], true);
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: Struct_3) -> Struct_1 {
    var var_0 = arg_2;
    return arg_2.c;
}

fn func_1() -> vec3<i32> {
    var var_0 = func_5(global1[_wgslsmith_index_u32(~(0u >> (0u % 32u)), 32u)], true, func_4(abs(1u), vec2<u32>(func_2(vec3<i32>(-40675i, u_input.b, 38541i), 26597u, vec2<f32>(global0.x, -1000f), Struct_3(vec4<bool>(true, false, false, true), vec3<i32>(u_input.c, 32889i, -2147483647i), Struct_1(global2[_wgslsmith_index_u32(4294967295u, 8u)], vec3<u32>(64586u, 35878u, 0u), false, 39467u), true)) | ~15616u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(34733u, 98458u), vec2<u32>(1u, 35920u))), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~(~1u), 8u)]), vec4<f32>(global2[_wgslsmith_index_u32(1u, 8u)], -1594f, 1906f, _wgslsmith_div_f32(global0.x, global2[_wgslsmith_index_u32(~40585u, 8u)]))));
    var var_1 = any(func_4(_wgslsmith_dot_vec2_u32(~(vec2<u32>(var_0.b.x, 29507u) ^ var_0.b.yx), ~(var_0.b.yz >> (vec2<u32>(var_0.d, 27681u) % vec2<u32>(32u)))), _wgslsmith_div_vec2_u32(~vec2<u32>(4294967295u, 30466u), vec2<u32>(var_0.b.x, 4294967295u) ^ vec2<u32>(4294967295u, 66664u)) << (reverseBits(~vec2<u32>(0u, 1u)) % vec2<u32>(32u)), var_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2[_wgslsmith_index_u32(24623u, 8u)], var_0.a, -1339f, 880f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -1392f, -1053f, var_0.a))))).a.xzx);
    var var_2 = Struct_2(!vec4<bool>(true, any(vec2<bool>(false, var_0.c)), any(select(vec3<bool>(var_0.c, var_0.c, var_0.c), vec3<bool>(true, var_0.c, true), var_0.c)), func_5(Struct_1(global0.x, var_0.b, false, var_0.d), -704f < global2[_wgslsmith_index_u32(4294967295u, 8u)], Struct_3(vec4<bool>(true, true, true, var_0.c), vec3<i32>(global3.x, -8943i, -21156i), global1[_wgslsmith_index_u32(0u, 32u)], var_0.c)).c), Struct_1(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(36732u, 4294967295u), 8u)] - -640f), var_0.b, !var_0.c || all(!vec2<bool>(false, var_0.c)), ~(~4294967295u)), firstLeadingBit(~var_0.b.x), -firstTrailingBit(-(vec4<i32>(0i, global3.x, -27732i, -1i) ^ vec4<i32>(39204i, u_input.b, 2147483647i, global3.x))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(29801u, 8u)], _wgslsmith_f_op_f32(642f - -1000f), var_0.b.x < 4294967295u)), _wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(var_0.a + var_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.x, -385f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1438f, 2052f, global2[_wgslsmith_index_u32(var_0.b.x, 8u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-155f, 149f, global0.x))))))));
    var var_3 = var_2.d;
    let var_4 = ~var_0.b;
    return ~vec3<i32>(-28481i, 2844i, var_2.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -456f;
    var var_1 = select(~abs(global3.x), u_input.c, false);
    global3 = _wgslsmith_sub_vec3_i32(func_1(), vec3<i32>(-(_wgslsmith_mult_i32(global3.x, global3.x) >> (~1u % 32u)), countOneBits(func_1().x), global3.x));
    global1 = array<Struct_1, 32>();
    var var_2 = Struct_5(~vec2<u32>(firstTrailingBit(1u), 1u), ~0u | firstTrailingBit(3257u), _wgslsmith_add_vec2_u32(~select(vec2<u32>(0u, 4294967295u), ~vec2<u32>(0u, 42850u), func_4(44380u, vec2<u32>(4294967295u, 4294967295u), -601f, vec4<f32>(global0.x, -1073f, 944f, global2[_wgslsmith_index_u32(63674u, 8u)])).a.xz), vec2<u32>(1u, firstTrailingBit(5155u))), Struct_3(vec4<bool>(any(vec3<bool>(true, false, false)) | true, !any(vec3<bool>(true, false, false)), any(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false))), true), -firstTrailingBit(vec3<i32>(global3.x, global3.x, 20345i)), global1[_wgslsmith_index_u32(0u, 32u)], all(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), false))));
    let var_3 = !any(var_2.d.a.zyz);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.d.b.x, var_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1044f + _wgslsmith_f_op_f32(-global0.x))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(var_2.d.c.d, 8u)])))))));
}

