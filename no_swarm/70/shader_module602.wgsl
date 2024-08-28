struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<i32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct Struct_5 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec4<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -498f;

var<private> global1: array<vec4<u32>, 30> = array<vec4<u32>, 30>(vec4<u32>(52100u, 38503u, 26379u, 1u), vec4<u32>(1u, 26083u, 4294967295u, 0u), vec4<u32>(4849u, 4294967295u, 0u, 74262u), vec4<u32>(80313u, 28783u, 89974u, 4395u), vec4<u32>(7795u, 2834u, 49230u, 1u), vec4<u32>(1u, 0u, 37071u, 1u), vec4<u32>(4294967295u, 1u, 93055u, 109405u), vec4<u32>(118894u, 44412u, 3083u, 1u), vec4<u32>(0u, 1u, 1u, 35933u), vec4<u32>(4294967295u, 6796u, 0u, 90247u), vec4<u32>(4294967295u, 23311u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 43740u, 0u, 52144u), vec4<u32>(31970u, 66694u, 0u, 4294967295u), vec4<u32>(25909u, 4294967295u, 20992u, 53627u), vec4<u32>(31174u, 4294967295u, 1u, 10944u), vec4<u32>(0u, 4294967295u, 51662u, 26256u), vec4<u32>(81619u, 1u, 1u, 41688u), vec4<u32>(0u, 0u, 38040u, 0u), vec4<u32>(3178u, 49458u, 5913u, 42155u), vec4<u32>(0u, 0u, 0u, 4294967295u), vec4<u32>(4294967295u, 39375u, 1u, 116609u), vec4<u32>(21975u, 37636u, 1u, 0u), vec4<u32>(18528u, 0u, 0u, 1053u), vec4<u32>(1u, 76917u, 0u, 0u), vec4<u32>(3752u, 4294967295u, 4294967295u, 46625u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 1u), vec4<u32>(21063u, 0u, 1u, 105904u), vec4<u32>(0u, 27218u, 23620u, 0u), vec4<u32>(4294967295u, 37421u, 1u, 64397u), vec4<u32>(1u, 1u, 0u, 0u));

var<private> global2: vec3<bool> = vec3<bool>(true, false, true);

var<private> global3: array<Struct_3, 14> = array<Struct_3, 14>(Struct_3(vec3<u32>(35483u, 4294967295u, 1u), Struct_2(495f, vec2<f32>(-208f, -849f), Struct_1(1000f, true, vec4<i32>(-39848i, 390i, -29639i, i32(-2147483648)), vec2<bool>(true, false)), vec4<i32>(2147483647i, 2147483647i, 25083i, 0i))), Struct_3(vec3<u32>(4294967295u, 17049u, 4294967295u), Struct_2(1537f, vec2<f32>(392f, -1000f), Struct_1(1508f, true, vec4<i32>(21632i, -1i, 0i, -7715i), vec2<bool>(false, true)), vec4<i32>(1i, -1i, i32(-2147483648), -44102i))), Struct_3(vec3<u32>(4294967295u, 4294967295u, 9760u), Struct_2(1000f, vec2<f32>(-745f, -1041f), Struct_1(-1299f, false, vec4<i32>(-4480i, 0i, -1i, 0i), vec2<bool>(false, true)), vec4<i32>(2147483647i, 23079i, 39709i, 1i))), Struct_3(vec3<u32>(15216u, 4294967295u, 8006u), Struct_2(2593f, vec2<f32>(1229f, -1000f), Struct_1(-330f, true, vec4<i32>(43168i, 0i, i32(-2147483648), i32(-2147483648)), vec2<bool>(true, true)), vec4<i32>(2147483647i, 71187i, 27156i, -14670i))), Struct_3(vec3<u32>(26784u, 1u, 1950u), Struct_2(-1226f, vec2<f32>(1188f, 151f), Struct_1(-1925f, false, vec4<i32>(1i, 1i, 55773i, i32(-2147483648)), vec2<bool>(true, false)), vec4<i32>(-46111i, 986i, 12740i, 0i))), Struct_3(vec3<u32>(0u, 119892u, 16878u), Struct_2(-415f, vec2<f32>(-398f, -888f), Struct_1(-1000f, true, vec4<i32>(19759i, -1i, -62643i, 39574i), vec2<bool>(false, false)), vec4<i32>(i32(-2147483648), -1i, 18399i, -46928i))), Struct_3(vec3<u32>(81882u, 1u, 4294967295u), Struct_2(-383f, vec2<f32>(-151f, -396f), Struct_1(-491f, false, vec4<i32>(-14199i, 72628i, -15954i, 2147483647i), vec2<bool>(true, true)), vec4<i32>(-1i, 1i, -26247i, 35931i))), Struct_3(vec3<u32>(0u, 4294967295u, 1u), Struct_2(834f, vec2<f32>(437f, 995f), Struct_1(1576f, false, vec4<i32>(1i, -28214i, -18008i, -1i), vec2<bool>(false, true)), vec4<i32>(-39553i, -33065i, -1i, 1i))), Struct_3(vec3<u32>(6038u, 66622u, 0u), Struct_2(1206f, vec2<f32>(-437f, 794f), Struct_1(-1329f, false, vec4<i32>(8906i, -10520i, i32(-2147483648), 0i), vec2<bool>(false, false)), vec4<i32>(-37269i, i32(-2147483648), 1i, 28056i))), Struct_3(vec3<u32>(14335u, 36730u, 4294967295u), Struct_2(-521f, vec2<f32>(216f, 261f), Struct_1(153f, false, vec4<i32>(-4745i, -11201i, -1i, i32(-2147483648)), vec2<bool>(true, false)), vec4<i32>(42i, 6513i, -1i, 3974i))), Struct_3(vec3<u32>(32391u, 52846u, 4294967295u), Struct_2(-286f, vec2<f32>(893f, 568f), Struct_1(1010f, false, vec4<i32>(0i, 46578i, 0i, 2147483647i), vec2<bool>(false, true)), vec4<i32>(-4684i, i32(-2147483648), 1i, 0i))), Struct_3(vec3<u32>(36503u, 0u, 4294967295u), Struct_2(396f, vec2<f32>(-2447f, 1678f), Struct_1(990f, true, vec4<i32>(-1i, -34963i, 0i, -1i), vec2<bool>(true, true)), vec4<i32>(38281i, 1i, -40575i, 0i))), Struct_3(vec3<u32>(32880u, 1u, 38245u), Struct_2(1000f, vec2<f32>(1146f, -1341f), Struct_1(-175f, true, vec4<i32>(1i, -1i, i32(-2147483648), 1i), vec2<bool>(false, false)), vec4<i32>(2147483647i, i32(-2147483648), 44931i, 1i))), Struct_3(vec3<u32>(65526u, 14015u, 0u), Struct_2(762f, vec2<f32>(-1351f, -1150f), Struct_1(237f, false, vec4<i32>(-1442i, 42873i, 2147483647i, -1i), vec2<bool>(true, true)), vec4<i32>(2147483647i, 0i, i32(-2147483648), i32(-2147483648)))));

var<private> global4: array<vec2<u32>, 4> = array<vec2<u32>, 4>(vec2<u32>(23176u, 0u), vec2<u32>(1u, 0u), vec2<u32>(20002u, 7664u), vec2<u32>(3682u, 8716u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32, arg_1: vec4<u32>) -> vec3<i32> {
    let var_0 = countOneBits(firstTrailingBit(vec4<u32>(abs(~46232u), select(4294967295u >> (0u % 32u), 20377u, global2.x != global2.x), firstLeadingBit(~arg_1.x), firstLeadingBit(8099u | arg_0))));
    var var_1 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(~arg_1.x & var_0.x, min(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 35910u, arg_1.x), vec3<u32>(1013u, arg_0, var_0.x)), arg_0)) << (~(~countOneBits(firstTrailingBit(arg_0))) % 32u), 14u)];
    global2 = select(!(!vec3<bool>(select(var_1.b.c.d.x, var_1.b.c.d.x, false), var_1.b.c.d.x, true)), vec3<bool>(any(vec2<bool>(global2.x, var_1.b.c.d.x & var_1.b.c.b)), true, var_1.b.c.d.x), 0u > arg_0);
    var var_2 = 2147483647i;
    var var_3 = Struct_5(~firstTrailingBit(~arg_1.xy));
    return -vec3<i32>(u_input.b, ~(-(var_1.b.d.x | 2147483647i)), -2147483647i);
}

fn func_2(arg_0: bool) -> vec2<u32> {
    var var_0 = ~_wgslsmith_mod_i32(5258i, u_input.a);
    global0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1376f))));
    var var_1 = func_3(abs(~(~max(24989u, 0u))), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(~36209u, firstTrailingBit(0u)), 36515u) ^ 20392u, 30u)]);
    let var_2 = ~min(~firstLeadingBit(firstLeadingBit(1u)), max(_wgslsmith_dot_vec2_u32(global4[_wgslsmith_index_u32(abs(4294967295u), 4u)], vec2<u32>(4294967295u, 76496u)), ~firstLeadingBit(1198u)));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1208f, 749f))), 1i <= _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(-vec3<i32>(-1i, 14552i, u_input.a), select(vec3<i32>(var_1.x, 13987i, u_input.b), vec3<i32>(17263i, u_input.b, 11163i), true)), reverseBits(select(vec3<i32>(var_1.x, -20989i, u_input.a), vec3<i32>(u_input.b, -23974i, 555i), false))), _wgslsmith_sub_vec4_i32(-vec4<i32>(-var_1.x, var_1.x, -u_input.b, ~2147483647i), -(~firstTrailingBit(vec4<i32>(var_1.x, 50243i, -1i, -16948i)))), !global2.xy);
    return global4[_wgslsmith_index_u32(var_2, 4u)];
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>) -> Struct_4 {
    var var_0 = Struct_4(vec3<u32>(arg_1.x, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, arg_1.x) >> (firstLeadingBit(vec2<u32>(arg_1.x, arg_1.x)) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(func_2(false), vec2<u32>(arg_1.x, 0u))), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(abs(arg_1.x), firstTrailingBit(arg_1.x), 3514u), ~arg_1.x)));
    var var_1 = -258f;
    var var_2 = Struct_5(select(countOneBits(vec2<u32>(_wgslsmith_mult_u32(arg_1.x, 30926u), abs(var_0.a.x))), ~abs(countOneBits(vec2<u32>(arg_1.x, 1u))), select(!(!vec2<bool>(arg_0.d.x, global2.x)), !vec2<bool>(arg_0.b, arg_0.d.x), vec2<bool>(false, true))));
    let var_3 = _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(~arg_1.x, max(0u, 20876u)), arg_1.x) ^ ~vec2<u32>(func_2(global2.x).x, 108856u), vec2<u32>(~35251u, arg_1.x));
    var var_4 = _wgslsmith_f_op_f32(f32(-1f) * -159f);
    return Struct_4(~var_0.a >> (var_0.a % vec3<u32>(32u)));
}

fn func_4(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: vec2<i32>) -> bool {
    global3 = array<Struct_3, 14>();
    global4 = array<vec2<u32>, 4>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1250f)))) + _wgslsmith_f_op_f32(abs(275f))), global2.x, vec4<i32>(arg_2.x, _wgslsmith_dot_vec4_i32(vec4<i32>(33849i, i32(-1i) * -2147483647i, u_input.a, 1i), firstLeadingBit(vec4<i32>(u_input.b, arg_2.x, 49917i, arg_2.x) << (vec4<u32>(arg_0.a.x, 0u, arg_0.a.x, 4294967295u) % vec4<u32>(32u)))), max(-2147483647i, u_input.b), _wgslsmith_mult_i32(_wgslsmith_div_i32(_wgslsmith_sub_i32(-8230i, arg_2.x), arg_2.x), ~select(u_input.b, arg_2.x, false))), select(select(vec2<bool>(!global2.x, global2.x), select(vec2<bool>(global2.x, true), select(vec2<bool>(global2.x, arg_1.x), global2.yy, arg_1.yw), true), false), select(select(select(arg_1.xx, global2.xx, arg_1.x), select(arg_1.xz, arg_1.wz, arg_1.x), select(global2.yx, vec2<bool>(true, global2.x), true)), arg_1.xz, ~u_input.a > select(arg_2.x, u_input.a, arg_1.x)), any(vec4<bool>(global2.x, arg_1.x, true, any(vec3<bool>(global2.x, false, global2.x))))));
    global2 = !vec3<bool>(var_0.d.x, any(vec3<bool>(true, true, false)), true);
    global4 = array<vec2<u32>, 4>();
    return any(global2.zy);
}

fn func_5(arg_0: bool, arg_1: u32, arg_2: vec3<u32>) -> Struct_2 {
    var var_0 = func_1(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-2051f, 1035f)))), arg_0, vec4<i32>(u_input.a & 1i, 1i ^ u_input.b, _wgslsmith_add_i32(53287i, 6631i), max(countOneBits(-22434i), u_input.b << (arg_2.x % 32u))), global2.zy), global4[_wgslsmith_index_u32(~1u, 4u)]);
    var var_1 = min(vec3<u32>(firstLeadingBit(func_2(global2.x).x >> ((var_0.a.x ^ var_0.a.x) % 32u)), ~1u, reverseBits(abs(18936u & arg_2.x))), arg_2 | ~vec3<u32>(countOneBits(arg_1), arg_1 >> (arg_2.x % 32u), arg_1));
    let var_2 = func_1(Struct_1(_wgslsmith_f_op_f32(abs(1146f)), global2.x, -min(select(vec4<i32>(u_input.b, 14269i, u_input.b, u_input.a), vec4<i32>(u_input.a, u_input.b, 0i, -1i), false), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, -1i, u_input.b, 0i), vec4<i32>(0i, u_input.a, u_input.a, 31076i))), !select(vec2<bool>(global2.x, global2.x), vec2<bool>(arg_0, global2.x), select(vec2<bool>(arg_0, arg_0), vec2<bool>(global2.x, arg_0), true))), var_1.xy);
    let var_3 = -43675i;
    var var_4 = select(vec3<bool>(arg_0, !(!arg_0), global2.x), vec3<bool>(false, false, true), !(!all(global2.yy)) || (_wgslsmith_div_i32(_wgslsmith_clamp_i32(var_3, -2147483647i, 2147483647i), var_3) >= u_input.b));
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(857f, 432f))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(181f)), _wgslsmith_f_op_f32(floor(925f))))) * 302f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-597f, -2802f))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-895f, -112f), vec2<f32>(-652f, -318f), global2.zy))), vec2<f32>(-796f, _wgslsmith_f_op_f32(246f * -1000f)))), Struct_1(-1451f, true, vec4<i32>(func_3(~106917u, vec4<u32>(44726u, var_2.a.x, var_0.a.x, var_0.a.x)).x, ~var_3, select(-var_3, -1i, false), _wgslsmith_div_i32(~44684i, -14228i)), select(vec2<bool>(any(vec3<bool>(arg_0, true, var_4.x)), !arg_0), select(global2.zx, !global2.yz, var_4.xx), var_4.yx)), reverseBits(~_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, var_3, 33535i, -77319i), vec4<i32>(var_3, -2147483647i, -1i, 29526i), vec4<i32>(-2147483647i, -1i, var_3, u_input.a)), vec4<i32>(var_3, 27123i, 17287i, var_3) << (global1[_wgslsmith_index_u32(arg_2.x, 30u)] % vec4<u32>(32u)))));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_3) -> StorageBuffer {
    global3 = array<Struct_3, 14>();
    global2 = !select(select(select(!vec3<bool>(global2.x, false, false), select(vec3<bool>(true, arg_0.c.d.x, false), vec3<bool>(true, arg_1.b.c.d.x, arg_1.b.c.b), vec3<bool>(false, global2.x, global2.x)), false), !vec3<bool>(arg_1.b.c.b, arg_1.b.c.b, global2.x), func_5(global2.x, arg_1.a.x << (arg_1.a.x % 32u), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, arg_1.a.x, arg_1.a.x), vec3<u32>(4294967295u, 6061u, 20207u), vec3<u32>(64571u, arg_1.a.x, arg_1.a.x))).c.d.x), !vec3<bool>(!arg_1.b.c.b, !arg_1.b.c.d.x, true), all(vec2<bool>(true, arg_1.b.c.b)));
    let var_0 = arg_1.b.d;
    let var_1 = -1i;
    let var_2 = func_5(!global2.x, _wgslsmith_sub_u32(arg_1.a.x, max(_wgslsmith_dot_vec3_u32(vec3<u32>(4979u, 70348u, 4294967295u), max(vec3<u32>(0u, arg_1.a.x, 21727u), vec3<u32>(arg_1.a.x, 0u, arg_1.a.x))), 4294967295u >> (0u % 32u))), vec3<u32>(~_wgslsmith_mod_u32(1u, _wgslsmith_sub_u32(48953u, arg_1.a.x)), select(arg_1.a.x, 1u, false) << (~(~61720u) % 32u), _wgslsmith_mod_u32(_wgslsmith_mult_u32(arg_1.a.x << (arg_1.a.x % 32u), ~arg_1.a.x), _wgslsmith_div_u32(arg_1.a.x, arg_1.a.x)))).c;
    return StorageBuffer(select(arg_1.b.c.c.wx, vec2<i32>(var_0.x, -1i), !arg_1.b.c.b), ~1i, arg_1.a.x, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-457f, _wgslsmith_f_op_f32(-arg_1.b.a), 867f, -1000f) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.a, -1965f, arg_0.b.x, 1848f)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a, _wgslsmith_f_op_f32(step(arg_1.b.b.x, var_2.a)), _wgslsmith_f_op_f32(894f + arg_1.b.b.x), arg_0.a) + vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a), 1000f, 357f, _wgslsmith_f_op_f32(-var_2.a))))), _wgslsmith_clamp_vec3_i32(~(~vec3<i32>(-26013i, arg_1.b.d.x, 0i)), -arg_1.b.c.c.xxx & var_0.wzw, arg_0.c.c.wzy));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(func_5(func_4(func_1(Struct_1(-590f, true, vec4<i32>(1i, 1i, u_input.b, u_input.a), vec2<bool>(false, true)), abs(vec2<u32>(0u, 1u))), vec4<bool>(true, u_input.b > -23608i, true, true), ~vec2<i32>(2147483647i, u_input.a)), 1u, vec3<u32>(abs(_wgslsmith_add_u32(0u, 65321u)), func_1(Struct_1(-878f, global2.x, vec4<i32>(u_input.a, -6078i, -2147483647i, 2147483647i), global2.zy), vec2<u32>(21101u, 4294967295u)).a.x, _wgslsmith_dot_vec3_u32(select(vec3<u32>(0u, 0u, 69937u), vec3<u32>(0u, 0u, 0u), false), min(vec3<u32>(26090u, 10308u, 8662u), vec3<u32>(4294967295u, 4294967295u, 1u))))), global3[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec4_u32(countOneBits(global1[_wgslsmith_index_u32(4294967295u, 30u)]) ^ global1[_wgslsmith_index_u32(min(43851u, 4294967295u), 30u)], vec4<u32>(1u, 43289u, 4294967295u, 8026u) | ~global1[_wgslsmith_index_u32(1u, 30u)])), 14u)]);
}

