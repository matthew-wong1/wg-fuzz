struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: i32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
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

var<private> global0: array<Struct_3, 31> = array<Struct_3, 31>(Struct_3(vec3<u32>(28206u, 0u, 23968u), Struct_2(Struct_1(18914u), vec4<i32>(-6984i, -18795i, 62439i, -30965i), 2147483647i)), Struct_3(vec3<u32>(67378u, 51705u, 57053u), Struct_2(Struct_1(4294967295u), vec4<i32>(-1i, -46331i, 21484i, 22877i), -43805i)), Struct_3(vec3<u32>(1u, 11689u, 108581u), Struct_2(Struct_1(31346u), vec4<i32>(-1i, -46341i, 1i, -1i), i32(-2147483648))), Struct_3(vec3<u32>(9412u, 22091u, 1u), Struct_2(Struct_1(1u), vec4<i32>(i32(-2147483648), 0i, i32(-2147483648), 56418i), -20896i)), Struct_3(vec3<u32>(17566u, 1u, 4294967295u), Struct_2(Struct_1(1u), vec4<i32>(1i, -18058i, 7397i, -25041i), 38124i)), Struct_3(vec3<u32>(66251u, 30527u, 0u), Struct_2(Struct_1(7950u), vec4<i32>(-16686i, 19469i, 1i, 2790i), 1i)), Struct_3(vec3<u32>(1u, 103532u, 0u), Struct_2(Struct_1(4294967295u), vec4<i32>(2147483647i, 18133i, -1i, 2147483647i), 2147483647i)), Struct_3(vec3<u32>(1u, 4294967295u, 0u), Struct_2(Struct_1(18247u), vec4<i32>(-1i, 0i, 10938i, 13250i), -1i)), Struct_3(vec3<u32>(4294967295u, 2792u, 35490u), Struct_2(Struct_1(2026u), vec4<i32>(-24232i, -60021i, 1i, i32(-2147483648)), 0i)), Struct_3(vec3<u32>(0u, 4294967295u, 0u), Struct_2(Struct_1(0u), vec4<i32>(-25272i, -45780i, -8013i, 2147483647i), 23072i)), Struct_3(vec3<u32>(1u, 0u, 1u), Struct_2(Struct_1(29997u), vec4<i32>(13460i, 11047i, 2147483647i, -46496i), -24034i)), Struct_3(vec3<u32>(7570u, 19600u, 30179u), Struct_2(Struct_1(19613u), vec4<i32>(1i, -12146i, -41680i, -8199i), -5843i)), Struct_3(vec3<u32>(0u, 1u, 0u), Struct_2(Struct_1(29687u), vec4<i32>(0i, -24932i, i32(-2147483648), 13303i), i32(-2147483648))), Struct_3(vec3<u32>(0u, 13487u, 1u), Struct_2(Struct_1(0u), vec4<i32>(28110i, 0i, 1i, i32(-2147483648)), 1i)), Struct_3(vec3<u32>(57660u, 4294967295u, 0u), Struct_2(Struct_1(3457u), vec4<i32>(i32(-2147483648), 2147483647i, 11241i, i32(-2147483648)), 1i)), Struct_3(vec3<u32>(47240u, 0u, 15011u), Struct_2(Struct_1(1u), vec4<i32>(-1i, 2147483647i, -1i, 8802i), 14334i)), Struct_3(vec3<u32>(4294967295u, 6886u, 20444u), Struct_2(Struct_1(77518u), vec4<i32>(2147483647i, -45533i, 32023i, -13688i), 2147483647i)), Struct_3(vec3<u32>(8730u, 33270u, 0u), Struct_2(Struct_1(0u), vec4<i32>(1i, -28046i, -21026i, -1i), 1i)), Struct_3(vec3<u32>(4294967295u, 91657u, 34673u), Struct_2(Struct_1(1u), vec4<i32>(-25588i, 0i, -43881i, 10246i), 42408i)), Struct_3(vec3<u32>(46269u, 4294967295u, 4294967295u), Struct_2(Struct_1(4294967295u), vec4<i32>(53748i, 46828i, 1i, i32(-2147483648)), 0i)), Struct_3(vec3<u32>(2422u, 64557u, 47927u), Struct_2(Struct_1(1u), vec4<i32>(46875i, 43186i, -1i, 1i), 1i)), Struct_3(vec3<u32>(4294967295u, 9992u, 59772u), Struct_2(Struct_1(14880u), vec4<i32>(-39816i, -34931i, -6533i, -1i), -5455i)), Struct_3(vec3<u32>(1u, 9242u, 0u), Struct_2(Struct_1(7249u), vec4<i32>(51128i, -23773i, 5474i, i32(-2147483648)), -37353i)), Struct_3(vec3<u32>(1u, 4294967295u, 0u), Struct_2(Struct_1(0u), vec4<i32>(-11682i, -15666i, -5223i, 1i), 2147483647i)), Struct_3(vec3<u32>(29707u, 1u, 0u), Struct_2(Struct_1(4294967295u), vec4<i32>(1i, 2545i, -31021i, 26463i), -1i)), Struct_3(vec3<u32>(15497u, 2073u, 0u), Struct_2(Struct_1(54184u), vec4<i32>(9112i, i32(-2147483648), -1i, 1i), -5211i)), Struct_3(vec3<u32>(4294967295u, 65092u, 36667u), Struct_2(Struct_1(3608u), vec4<i32>(i32(-2147483648), -22230i, 0i, 0i), 45803i)), Struct_3(vec3<u32>(1u, 0u, 20896u), Struct_2(Struct_1(1u), vec4<i32>(i32(-2147483648), 49956i, -1i, 15916i), -16877i)), Struct_3(vec3<u32>(27004u, 0u, 1u), Struct_2(Struct_1(1u), vec4<i32>(-36048i, -14077i, -30328i, -36708i), 0i)), Struct_3(vec3<u32>(1u, 4294967295u, 4926u), Struct_2(Struct_1(137686u), vec4<i32>(-25471i, -59909i, i32(-2147483648), i32(-2147483648)), 2147483647i)), Struct_3(vec3<u32>(55243u, 58394u, 1u), Struct_2(Struct_1(25581u), vec4<i32>(-38492i, i32(-2147483648), 18459i, -1i), 2147483647i)));

var<private> global1: f32;

var<private> global2: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(Struct_1(2970u), vec4<i32>(-16778i, 2147483647i, 2147483647i, -8724i), -1i), Struct_2(Struct_1(4294967295u), vec4<i32>(50418i, 0i, 32519i, 2147483647i), -19369i), Struct_2(Struct_1(4294967295u), vec4<i32>(2147483647i, 40582i, 28170i, 2147483647i), -1699i), Struct_2(Struct_1(12896u), vec4<i32>(-20426i, 0i, -18994i, -1i), -43987i), Struct_2(Struct_1(4294967295u), vec4<i32>(0i, -1i, -15640i, 4467i), -74891i), Struct_2(Struct_1(0u), vec4<i32>(0i, 2147483647i, 14952i, -8892i), 63613i), Struct_2(Struct_1(15205u), vec4<i32>(0i, 2147483647i, -39994i, -31155i), i32(-2147483648)), Struct_2(Struct_1(0u), vec4<i32>(52926i, 4907i, 59513i, -7158i), 0i), Struct_2(Struct_1(1u), vec4<i32>(-13625i, -27669i, 1i, -9373i), 1i), Struct_2(Struct_1(1u), vec4<i32>(-30761i, -1i, 23083i, -1114i), 1i), Struct_2(Struct_1(1u), vec4<i32>(i32(-2147483648), 1i, 0i, 72706i), 2147483647i), Struct_2(Struct_1(36957u), vec4<i32>(i32(-2147483648), -15657i, i32(-2147483648), 1i), 12143i), Struct_2(Struct_1(1u), vec4<i32>(-41253i, -350i, 0i, 21600i), 41870i), Struct_2(Struct_1(17214u), vec4<i32>(-13262i, 2147483647i, i32(-2147483648), -1i), i32(-2147483648)), Struct_2(Struct_1(34736u), vec4<i32>(55144i, 2147483647i, -34995i, 1i), 0i), Struct_2(Struct_1(0u), vec4<i32>(0i, -1i, i32(-2147483648), -8207i), 2147483647i), Struct_2(Struct_1(25410u), vec4<i32>(-1i, -1i, 2932i, -34505i), 44400i), Struct_2(Struct_1(54474u), vec4<i32>(0i, 2147483647i, -71070i, 1i), -18880i), Struct_2(Struct_1(46080u), vec4<i32>(66491i, 1i, 37755i, 2147483647i), -43450i), Struct_2(Struct_1(32193u), vec4<i32>(25409i, 1i, 22891i, -1i), -35682i), Struct_2(Struct_1(2090u), vec4<i32>(0i, 6856i, 0i, 1924i), 1i), Struct_2(Struct_1(32522u), vec4<i32>(50524i, i32(-2147483648), -30343i, -1i), -2874i), Struct_2(Struct_1(1u), vec4<i32>(-16833i, 1i, -11757i, 2147483647i), i32(-2147483648)), Struct_2(Struct_1(1u), vec4<i32>(0i, 34459i, -61847i, 1221i), 1i), Struct_2(Struct_1(552u), vec4<i32>(0i, i32(-2147483648), -1i, 0i), 21528i), Struct_2(Struct_1(4294967295u), vec4<i32>(-584i, i32(-2147483648), i32(-2147483648), 1i), 988i), Struct_2(Struct_1(0u), vec4<i32>(13826i, 4796i, i32(-2147483648), i32(-2147483648)), -67258i), Struct_2(Struct_1(86194u), vec4<i32>(-5864i, 7174i, 0i, -26929i), 42192i), Struct_2(Struct_1(4294967295u), vec4<i32>(-24544i, 1i, 2147483647i, 53765i), -1i), Struct_2(Struct_1(1u), vec4<i32>(-45599i, 1i, -13157i, 0i), -37623i));

var<private> global3: array<vec2<i32>, 14>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: i32) -> i32 {
    global0 = array<Struct_3, 31>();
    let var_0 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -212f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-555f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1194f, 1000f))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-365f)), _wgslsmith_f_op_f32(min(1716f, 1146f)), true))))));
    global3 = array<vec2<i32>, 14>();
    let var_1 = abs(_wgslsmith_mod_vec2_u32(~vec2<u32>(firstLeadingBit(u_input.b.x), 0u), select(vec2<u32>(firstLeadingBit(u_input.c), u_input.b.x), ~(~vec2<u32>(u_input.a, u_input.a)), -1000f != _wgslsmith_f_op_f32(1564f + var_0.x))));
    let var_2 = select(max(abs(select(vec4<i32>(734i, arg_0, 0i, 7250i), vec4<i32>(-5164i, arg_0, arg_0, -2147483647i), false)) & -(~vec4<i32>(-2147483647i, 1i, -2147483647i, arg_0)), vec4<i32>(_wgslsmith_sub_i32(arg_0, min(-1i, -25250i)), -2147483647i, 1i, -1i)), vec4<i32>(arg_0, reverseBits(reverseBits(arg_0)), _wgslsmith_sub_i32(1i, arg_0 | arg_0), arg_0) & (-select(vec4<i32>(arg_0, 2147483647i, 45396i, -2147483647i), vec4<i32>(0i, arg_0, -31043i, 2147483647i), true) & -firstTrailingBit(vec4<i32>(arg_0, -22501i, arg_0, arg_0))), select(select(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true)), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), false), true), vec4<bool>(true, ~arg_0 < -45307i, true, true), vec4<bool>(all(select(vec2<bool>(true, false), vec2<bool>(true, true), true)), true, any(vec3<bool>(false, false, true)), any(select(vec2<bool>(false, false), vec2<bool>(false, true), false)))));
    return arg_0;
}

fn func_2() -> bool {
    var var_0 = select(countOneBits(firstTrailingBit(_wgslsmith_div_i32(32403i, -1i) << ((u_input.b.x << (4294967295u % 32u)) % 32u))), func_3(-34970i), !(_wgslsmith_f_op_f32(1454f + _wgslsmith_f_op_f32(max(-420f, 1000f))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(320f)) * _wgslsmith_f_op_f32(floor(696f)))));
    var var_1 = global2[_wgslsmith_index_u32(1u ^ (~_wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.b.x, u_input.b.x, u_input.c), vec3<u32>(u_input.c, 97508u, 31537u), vec3<bool>(true, false, false)), _wgslsmith_div_vec3_u32(u_input.b.xxx, u_input.b.ywy)) << (0u % 32u)), 30u)];
    let var_2 = Struct_2(var_1.a, vec4<i32>(_wgslsmith_sub_i32(-1897i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 0i, var_1.c, 2147483647i), vec4<i32>(46391i, var_1.c, var_1.c, -34660i))), var_1.c, ~var_1.c & -abs(var_1.b.x), 2147483647i), -1i << (0u % 32u));
    return true;
}

fn func_1() -> Struct_3 {
    let var_0 = vec2<bool>(true, func_2());
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(~(~_wgslsmith_div_u32(4294967295u, u_input.c)), ~(~(1u >> (u_input.a % 32u)))), 125532u), 30u)];
    var var_2 = Struct_2(var_1.a, _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(var_1.b, vec4<i32>(34025i, var_1.b.x >> (0u % 32u), ~var_1.b.x, var_1.c)), vec4<i32>(_wgslsmith_add_i32(var_1.c, -var_1.c), _wgslsmith_mult_i32(~var_1.b.x, _wgslsmith_clamp_i32(36512i, var_1.b.x, var_1.b.x)), -1i, 1i)), ~(i32(-1i) * -1i));
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(reverseBits(_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(19345u, 1u), u_input.b.zy) >> (u_input.b.zy % vec2<u32>(32u)), reverseBits(reverseBits(vec2<u32>(u_input.b.x, var_1.a.a))))), u_input.b.yy), 31u)];
    var var_4 = var_0;
    return global0[_wgslsmith_index_u32(var_2.a.a, 31u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 564f;
    global3 = array<vec2<i32>, 14>();
    var var_1 = func_1();
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -564f, 1263f, -1028f)) + vec4<f32>(_wgslsmith_f_op_f32(364f * var_0), -577f, -826f, _wgslsmith_div_f32(276f, var_0))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0, var_0, var_0, 1394f))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-563f, var_0, 529f, var_0))))) + vec4<f32>(828f, _wgslsmith_f_op_f32(-1408f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * -394f)), 842f, 444f));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(-12547i));
}

