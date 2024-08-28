struct Struct_1 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct Struct_4 {
    a: f32,
    b: u32,
    c: f32,
    d: vec2<u32>,
    e: f32,
}

struct Struct_5 {
    a: Struct_3,
    b: u32,
    c: vec4<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: f32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec2<i32>(-16179i, 2147483647i), vec3<u32>(0u, 60465u, 60468u));

var<private> global1: array<bool, 24> = array<bool, 24>(true, false, true, true, false, true, false, false, false, false, true, true, true, true, false, false, false, true, true, false, false, false, true, false);

var<private> global2: array<Struct_5, 31> = array<Struct_5, 31>(Struct_5(Struct_3(vec2<i32>(1i, -1i), vec3<u32>(0u, 1u, 14564u)), 48776u, vec4<i32>(6525i, i32(-2147483648), 0i, 20315i), Struct_1(vec2<f32>(158f, 277f), 5618u), Struct_1(vec2<f32>(1952f, 1354f), 65440u)), Struct_5(Struct_3(vec2<i32>(-1i, 9304i), vec3<u32>(17535u, 0u, 4294967295u)), 43776u, vec4<i32>(1i, 2147483647i, -24402i, 22375i), Struct_1(vec2<f32>(941f, 2060f), 1u), Struct_1(vec2<f32>(119f, 1611f), 4294967295u)), Struct_5(Struct_3(vec2<i32>(1i, 36470i), vec3<u32>(124079u, 17148u, 0u)), 0u, vec4<i32>(2147483647i, 4693i, -2007i, i32(-2147483648)), Struct_1(vec2<f32>(1672f, -2650f), 4294967295u), Struct_1(vec2<f32>(-951f, 689f), 0u)), Struct_5(Struct_3(vec2<i32>(1623i, 1i), vec3<u32>(0u, 25231u, 10022u)), 30934u, vec4<i32>(8190i, 12695i, -1i, i32(-2147483648)), Struct_1(vec2<f32>(489f, 842f), 4294967295u), Struct_1(vec2<f32>(-879f, -1000f), 0u)), Struct_5(Struct_3(vec2<i32>(-17934i, 74554i), vec3<u32>(20475u, 55669u, 4294967295u)), 4294967295u, vec4<i32>(-72132i, -1381i, -1i, 0i), Struct_1(vec2<f32>(1000f, -483f), 33781u), Struct_1(vec2<f32>(507f, -249f), 100598u)), Struct_5(Struct_3(vec2<i32>(2147483647i, 1i), vec3<u32>(35337u, 21798u, 0u)), 0u, vec4<i32>(-1i, i32(-2147483648), -18778i, -23558i), Struct_1(vec2<f32>(-1213f, 1140f), 1598u), Struct_1(vec2<f32>(-1294f, 329f), 1u)), Struct_5(Struct_3(vec2<i32>(25870i, -4681i), vec3<u32>(4294967295u, 4294967295u, 0u)), 0u, vec4<i32>(-1i, 2147483647i, -1i, 62110i), Struct_1(vec2<f32>(-577f, 211f), 0u), Struct_1(vec2<f32>(900f, -1016f), 66079u)), Struct_5(Struct_3(vec2<i32>(0i, -1i), vec3<u32>(1499u, 0u, 4294967295u)), 93050u, vec4<i32>(0i, -1i, -5992i, 29521i), Struct_1(vec2<f32>(961f, -693f), 4294967295u), Struct_1(vec2<f32>(-767f, 351f), 0u)), Struct_5(Struct_3(vec2<i32>(40281i, 41847i), vec3<u32>(4294967295u, 1u, 73692u)), 0u, vec4<i32>(12398i, 0i, 1i, -45350i), Struct_1(vec2<f32>(-167f, 1000f), 6349u), Struct_1(vec2<f32>(1278f, -820f), 49567u)), Struct_5(Struct_3(vec2<i32>(1i, 58951i), vec3<u32>(1323u, 22909u, 4294967295u)), 66598u, vec4<i32>(1i, -1i, -1i, 7696i), Struct_1(vec2<f32>(723f, 1404f), 58101u), Struct_1(vec2<f32>(227f, 2367f), 0u)), Struct_5(Struct_3(vec2<i32>(1i, -8524i), vec3<u32>(0u, 0u, 1774u)), 4294967295u, vec4<i32>(-1i, 2147483647i, 2147483647i, 58271i), Struct_1(vec2<f32>(949f, 768f), 0u), Struct_1(vec2<f32>(-619f, -378f), 0u)), Struct_5(Struct_3(vec2<i32>(-1i, -1i), vec3<u32>(14484u, 13847u, 3281u)), 4294967295u, vec4<i32>(2147483647i, 46391i, 0i, 16462i), Struct_1(vec2<f32>(-1489f, -1000f), 1u), Struct_1(vec2<f32>(-872f, -638f), 0u)), Struct_5(Struct_3(vec2<i32>(-66910i, -13413i), vec3<u32>(19484u, 0u, 0u)), 66884u, vec4<i32>(-9882i, -11524i, i32(-2147483648), i32(-2147483648)), Struct_1(vec2<f32>(1142f, -413f), 0u), Struct_1(vec2<f32>(103f, 1616f), 32855u)), Struct_5(Struct_3(vec2<i32>(2147483647i, -5475i), vec3<u32>(0u, 35658u, 54674u)), 4294967295u, vec4<i32>(1i, 1i, 1i, 12888i), Struct_1(vec2<f32>(1247f, 458f), 21694u), Struct_1(vec2<f32>(520f, -180f), 0u)), Struct_5(Struct_3(vec2<i32>(0i, 41541i), vec3<u32>(0u, 0u, 7021u)), 50444u, vec4<i32>(30746i, 7111i, 7574i, 1i), Struct_1(vec2<f32>(1078f, -2321f), 4294967295u), Struct_1(vec2<f32>(-830f, 539f), 4294967295u)), Struct_5(Struct_3(vec2<i32>(42228i, 19654i), vec3<u32>(32571u, 14454u, 16872u)), 35506u, vec4<i32>(1i, -13712i, 0i, i32(-2147483648)), Struct_1(vec2<f32>(192f, -1145f), 4294967295u), Struct_1(vec2<f32>(451f, 319f), 4294967295u)), Struct_5(Struct_3(vec2<i32>(31587i, -45619i), vec3<u32>(3180u, 85841u, 1u)), 8796u, vec4<i32>(2147483647i, 0i, -3685i, -35826i), Struct_1(vec2<f32>(-293f, -1053f), 36637u), Struct_1(vec2<f32>(-1053f, 208f), 34031u)), Struct_5(Struct_3(vec2<i32>(-1i, 2147483647i), vec3<u32>(104452u, 1u, 0u)), 4294967295u, vec4<i32>(-67504i, 2147483647i, -37997i, 13427i), Struct_1(vec2<f32>(-897f, -473f), 32971u), Struct_1(vec2<f32>(-1000f, 871f), 28979u)), Struct_5(Struct_3(vec2<i32>(9005i, i32(-2147483648)), vec3<u32>(61124u, 14385u, 10708u)), 27354u, vec4<i32>(i32(-2147483648), 22886i, -21041i, i32(-2147483648)), Struct_1(vec2<f32>(-648f, -1000f), 1u), Struct_1(vec2<f32>(1113f, -2558f), 148080u)), Struct_5(Struct_3(vec2<i32>(i32(-2147483648), 18440i), vec3<u32>(1u, 71341u, 3795u)), 15654u, vec4<i32>(-28865i, 65030i, i32(-2147483648), 0i), Struct_1(vec2<f32>(-1063f, 193f), 37442u), Struct_1(vec2<f32>(497f, 696f), 1u)), Struct_5(Struct_3(vec2<i32>(59221i, 59881i), vec3<u32>(0u, 1u, 33802u)), 25183u, vec4<i32>(52346i, -82985i, 2147483647i, i32(-2147483648)), Struct_1(vec2<f32>(-1273f, -290f), 0u), Struct_1(vec2<f32>(564f, 378f), 69462u)), Struct_5(Struct_3(vec2<i32>(-11425i, 1i), vec3<u32>(27033u, 1u, 1u)), 45308u, vec4<i32>(-52143i, -15567i, 1i, 1i), Struct_1(vec2<f32>(813f, 878f), 18400u), Struct_1(vec2<f32>(-630f, -1298f), 52248u)), Struct_5(Struct_3(vec2<i32>(23107i, 0i), vec3<u32>(8955u, 1u, 827u)), 4294967295u, vec4<i32>(-1i, 1i, 1i, 12909i), Struct_1(vec2<f32>(447f, -939f), 0u), Struct_1(vec2<f32>(1701f, 221f), 2743u)), Struct_5(Struct_3(vec2<i32>(-21624i, -58763i), vec3<u32>(1u, 1u, 36670u)), 1u, vec4<i32>(0i, -7203i, 2147483647i, 0i), Struct_1(vec2<f32>(1000f, 2414f), 4294967295u), Struct_1(vec2<f32>(493f, 1347f), 0u)), Struct_5(Struct_3(vec2<i32>(-42774i, i32(-2147483648)), vec3<u32>(22722u, 0u, 0u)), 0u, vec4<i32>(-1i, 1i, -1i, i32(-2147483648)), Struct_1(vec2<f32>(1000f, 1114f), 4294967295u), Struct_1(vec2<f32>(276f, 476f), 4294967295u)), Struct_5(Struct_3(vec2<i32>(i32(-2147483648), 1i), vec3<u32>(4294967295u, 41181u, 4294967295u)), 96558u, vec4<i32>(2147483647i, 0i, 53242i, 10510i), Struct_1(vec2<f32>(776f, 105f), 0u), Struct_1(vec2<f32>(466f, 105f), 4294967295u)), Struct_5(Struct_3(vec2<i32>(i32(-2147483648), 264i), vec3<u32>(42657u, 0u, 8827u)), 32707u, vec4<i32>(18316i, 1i, 45763i, 10737i), Struct_1(vec2<f32>(-317f, 1918f), 25809u), Struct_1(vec2<f32>(754f, -1100f), 9389u)), Struct_5(Struct_3(vec2<i32>(i32(-2147483648), -10024i), vec3<u32>(1u, 4294967295u, 53145u)), 0u, vec4<i32>(i32(-2147483648), 6313i, i32(-2147483648), -1i), Struct_1(vec2<f32>(420f, 564f), 97342u), Struct_1(vec2<f32>(866f, -209f), 32935u)), Struct_5(Struct_3(vec2<i32>(2147483647i, -1i), vec3<u32>(1u, 1u, 4294967295u)), 73933u, vec4<i32>(i32(-2147483648), -16965i, 1i, -1i), Struct_1(vec2<f32>(-660f, -1361f), 25729u), Struct_1(vec2<f32>(1014f, 594f), 1u)), Struct_5(Struct_3(vec2<i32>(-18329i, 15568i), vec3<u32>(90483u, 4294967295u, 23338u)), 0u, vec4<i32>(29506i, -67746i, 0i, 26495i), Struct_1(vec2<f32>(831f, -474f), 4846u), Struct_1(vec2<f32>(-486f, 1028f), 0u)), Struct_5(Struct_3(vec2<i32>(0i, 0i), vec3<u32>(1u, 63458u, 0u)), 37105u, vec4<i32>(-5878i, -36888i, 3937i, -15562i), Struct_1(vec2<f32>(244f, -1468f), 35980u), Struct_1(vec2<f32>(-870f, 1630f), 50987u)));

var<private> global3: vec3<bool>;

var<private> global4: array<i32, 23> = array<i32, 23>(-1i, 8150i, -1i, 67061i, -23052i, -2558i, i32(-2147483648), 0i, 1i, 2913i, 1i, -7708i, i32(-2147483648), 601i, i32(-2147483648), 2978i, 11516i, 31302i, 66924i, 0i, -52241i, 16251i, i32(-2147483648));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32, arg_1: vec4<u32>, arg_2: vec4<f32>, arg_3: vec3<f32>) -> u32 {
    return u_input.b.x;
}

fn func_2(arg_0: Struct_5, arg_1: Struct_5) -> i32 {
    let var_0 = ~((33089u << (countOneBits(arg_0.a.b.x >> (arg_0.e.b % 32u)) % 32u)) >> (~arg_1.e.b % 32u));
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.e.a.x), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_1.d.a.x, arg_0.e.a.x), -358f)), arg_0.e.a.x) * vec3<f32>(284f, arg_0.d.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.d.a.x, 156f))))), select(vec2<bool>(func_3(arg_0.a.a.x, vec4<u32>(1u, 1u, arg_1.e.b, 33796u), vec4<f32>(2243f, 336f, -1193f, 535f), vec3<f32>(-1152f, -1197f, arg_0.d.a.x)) >= ~1u, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_1.d.b, ~global0.b.x), 24u)]), !(!vec2<bool>(global1[_wgslsmith_index_u32(var_0, 24u)], global1[_wgslsmith_index_u32(47798u, 24u)])), !(_wgslsmith_f_op_f32(step(-1042f, arg_0.e.a.x)) < _wgslsmith_f_op_f32(arg_1.d.a.x - arg_1.d.a.x))), vec4<bool>(global1[_wgslsmith_index_u32(arg_1.e.b, 24u)], true, var_0 == ~var_0, all(vec4<bool>(global1[_wgslsmith_index_u32(var_0, 24u)] | global3.x, true, !global1[_wgslsmith_index_u32(global0.b.x, 24u)], var_0 >= arg_1.e.b))));
    global1 = array<bool, 24>();
    let var_2 = -347f;
    global1 = array<bool, 24>();
    return -firstLeadingBit(u_input.a) ^ arg_1.a.a.x;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: i32, arg_3: Struct_2) -> i32 {
    return abs(u_input.d);
}

fn func_1(arg_0: u32, arg_1: vec4<u32>) -> vec3<i32> {
    let var_0 = -vec2<i32>(select(1i, (u_input.a | global4[_wgslsmith_index_u32(global0.b.x, 23u)]) >> (~4294967295u % 32u), global3.x), select(u_input.a, func_4(Struct_2(vec3<f32>(-2384f, -963f, -389f), global3.zy, vec4<bool>(global1[_wgslsmith_index_u32(1u, 24u)], global3.x, global1[_wgslsmith_index_u32(4294967295u, 24u)], false)), vec4<i32>(-38627i, -1i, -8577i, global4[_wgslsmith_index_u32(u_input.b.x, 23u)]), func_2(Struct_5(Struct_3(vec2<i32>(u_input.d, -21616i), global0.b), arg_0, vec4<i32>(global0.a.x, 0i, u_input.a, u_input.a), Struct_1(vec2<f32>(681f, 809f), 1u), Struct_1(vec2<f32>(805f, 1591f), arg_0)), Struct_5(Struct_3(global0.a, vec3<u32>(arg_0, 4294967295u, arg_0)), arg_0, vec4<i32>(-16739i, 41065i, u_input.d, -2147483647i), Struct_1(vec2<f32>(-1677f, 1731f), 18461u), Struct_1(vec2<f32>(923f, 413f), arg_1.x))), Struct_2(vec3<f32>(1707f, -608f, -375f), global3.zy, vec4<bool>(true, global3.x, true, global3.x))), global1[_wgslsmith_index_u32(countOneBits(62361u), 24u)]));
    global4 = array<i32, 23>();
    return vec3<i32>(u_input.a, global0.a.x, _wgslsmith_dot_vec2_i32(~var_0, _wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(-var_0, vec2<i32>(global4[_wgslsmith_index_u32(arg_1.x, 23u)], global0.a.x), vec2<i32>(u_input.d, 0i)), -vec2<i32>(2147483647i, 1i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_i32(-2147483647i, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(-(~vec3<i32>(36727i, -19529i, 8836i)), abs(max(vec3<i32>(-1i, global0.a.x, -1i), vec3<i32>(-8286i, global0.a.x, global4[_wgslsmith_index_u32(1u, 23u)]))), countOneBits(min(vec3<i32>(global0.a.x, -1i, global0.a.x), vec3<i32>(-3860i, 14171i, 1i)))), ~func_1(countOneBits(1u), _wgslsmith_sub_vec4_u32(vec4<u32>(global0.b.x, global0.b.x, u_input.c, 67042u), vec4<u32>(u_input.c, 70499u, global0.b.x, global0.b.x)))));
    let var_1 = _wgslsmith_mult_vec4_u32(vec4<u32>(global0.b.x, u_input.b.x, u_input.b.x, global0.b.x), ~(select(~vec4<u32>(82310u, 16366u, 1u, global0.b.x), vec4<u32>(0u, 72615u, global0.b.x, global0.b.x), vec4<bool>(false, false, global1[_wgslsmith_index_u32(14311u, 24u)], global3.x)) & vec4<u32>(firstTrailingBit(1u), global0.b.x, u_input.b.x, max(36752u, global0.b.x))));
    let var_2 = _wgslsmith_dot_vec3_i32(max(_wgslsmith_mult_vec3_i32(-(~vec3<i32>(global0.a.x, 35772i, u_input.a)), vec3<i32>(global0.a.x, 1i, 1i) << (~vec3<u32>(global0.b.x, var_1.x, var_1.x) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(global0.a.x, 46510i, global4[_wgslsmith_index_u32(4294967295u, 23u)])), abs(vec3<i32>(global4[_wgslsmith_index_u32(global0.b.x, 23u)], -30683i, 34336i))), reverseBits(global4[_wgslsmith_index_u32(4294967295u, 23u)] >> (4294967295u % 32u)), global0.a.x)), countOneBits(-vec3<i32>(~global4[_wgslsmith_index_u32(global0.b.x, 23u)], ~2147483647i, -2147483647i)));
    var var_3 = (_wgslsmith_sub_i32(min(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2, var_2, global4[_wgslsmith_index_u32(124136u, 23u)]), vec3<i32>(global4[_wgslsmith_index_u32(0u, 23u)], 2147483647i, 2147483647i)), global0.a.x), global4[_wgslsmith_index_u32(0u, 23u)]) >> (4294967295u % 32u)) < u_input.a;
    global0 = Struct_3(global0.a | max(global0.a, select(_wgslsmith_mod_vec2_i32(global0.a, vec2<i32>(var_2, var_2)), global0.a, !global3.xz)), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x & 0u, global0.b.x), var_1.yz), max(1u, firstTrailingBit(~14133u)), 3945u));
    global3 = select(!select(vec3<bool>(false || global3.x, true, true), vec3<bool>(global1[_wgslsmith_index_u32(u_input.c, 24u)], global1[_wgslsmith_index_u32(select(59697u, u_input.c, global3.x), 24u)], global3.x || global1[_wgslsmith_index_u32(u_input.b.x, 24u)]), select(!vec3<bool>(global1[_wgslsmith_index_u32(4495u, 24u)], true, global1[_wgslsmith_index_u32(1u, 24u)]), !vec3<bool>(true, global3.x, false), all(global3.xz))), select(!(!(!vec3<bool>(global3.x, true, false))), vec3<bool>(global3.x, !global1[_wgslsmith_index_u32(global0.b.x, 24u)] && global3.x, false), all(vec2<bool>(false & global3.x, true))), !(!select(!vec3<bool>(global3.x, true, global1[_wgslsmith_index_u32(u_input.b.x, 24u)]), select(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 24u)], true, false), vec3<bool>(global1[_wgslsmith_index_u32(3736u, 24u)], global1[_wgslsmith_index_u32(u_input.b.x, 24u)], false), false), global1[_wgslsmith_index_u32(var_1.x, 24u)] | true)));
    let var_4 = ~_wgslsmith_mult_i32(0i, global4[_wgslsmith_index_u32(49335u, 23u)]);
    global0 = Struct_3(global0.a, var_1.zxw);
    global2 = array<Struct_5, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(1219f, -1015f) - vec2<f32>(357f, 629f)), vec2<f32>(-178f, -540f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1322f, 797f), vec2<f32>(-1088f, -561f))) - vec2<f32>(1527f, -2952f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1160f, 522f), vec2<f32>(-1365f, -1337f), global1[_wgslsmith_index_u32(9274u, 24u)])) - vec2<f32>(-638f, -1156f)))), _wgslsmith_add_u32(1u, ~(0u << (~var_1.x % 32u))), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(max(824f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1301f))))), global0.b.x ^ reverseBits(~global0.b.x), _wgslsmith_sub_u32(global0.b.x, u_input.c));
}

