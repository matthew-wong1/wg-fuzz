struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec4<bool>,
    e: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1>;

var<private> global1: vec4<u32>;

var<private> global2: Struct_2 = Struct_2(vec3<u32>(61712u, 1300u, 4294967295u), Struct_1(vec3<f32>(862f, -1625f, -852f), vec3<i32>(9976i, 0i, 1i), vec3<i32>(-1i, 0i, -9783i), vec4<bool>(false, true, false, true), false));

var<private> global3: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(vec3<u32>(62318u, 64408u, 123175u), Struct_1(vec3<f32>(220f, 147f, -726f), vec3<i32>(-78648i, 7685i, -4470i), vec3<i32>(-22160i, -1i, 2147483647i), vec4<bool>(true, true, true, false), true)), Struct_2(vec3<u32>(1u, 1u, 0u), Struct_1(vec3<f32>(-1226f, -490f, -173f), vec3<i32>(-1i, -6667i, -1i), vec3<i32>(16404i, -3384i, 1i), vec4<bool>(false, false, true, true), false)), Struct_2(vec3<u32>(13451u, 1u, 1u), Struct_1(vec3<f32>(-1046f, 1014f, -1000f), vec3<i32>(-1i, i32(-2147483648), 0i), vec3<i32>(-1i, i32(-2147483648), 2147483647i), vec4<bool>(false, true, false, false), false)), Struct_2(vec3<u32>(0u, 0u, 9905u), Struct_1(vec3<f32>(-212f, 205f, 314f), vec3<i32>(-41365i, 0i, 34538i), vec3<i32>(47984i, 0i, 47897i), vec4<bool>(true, false, true, true), true)), Struct_2(vec3<u32>(1u, 21066u, 0u), Struct_1(vec3<f32>(967f, 1432f, 849f), vec3<i32>(-77667i, 1i, 0i), vec3<i32>(i32(-2147483648), 0i, -10757i), vec4<bool>(false, true, true, false), true)), Struct_2(vec3<u32>(778u, 11686u, 0u), Struct_1(vec3<f32>(-820f, 1000f, 960f), vec3<i32>(-1i, 24812i, 70735i), vec3<i32>(10158i, 0i, -34413i), vec4<bool>(true, true, false, false), true)), Struct_2(vec3<u32>(0u, 4294967295u, 0u), Struct_1(vec3<f32>(-1381f, -599f, 1068f), vec3<i32>(-48195i, 62375i, 23829i), vec3<i32>(63297i, i32(-2147483648), -1i), vec4<bool>(true, false, true, false), false)), Struct_2(vec3<u32>(1u, 48207u, 1u), Struct_1(vec3<f32>(630f, -830f, 101f), vec3<i32>(-1i, i32(-2147483648), 2147483647i), vec3<i32>(-35302i, 0i, -63061i), vec4<bool>(true, false, false, false), false)), Struct_2(vec3<u32>(17829u, 0u, 1u), Struct_1(vec3<f32>(142f, -1217f, 789f), vec3<i32>(-1556i, -18573i, 8927i), vec3<i32>(0i, 2821i, 54315i), vec4<bool>(true, false, true, true), true)), Struct_2(vec3<u32>(4294967295u, 4294967295u, 52010u), Struct_1(vec3<f32>(-1283f, 306f, 1517f), vec3<i32>(-32724i, 30025i, 20538i), vec3<i32>(i32(-2147483648), 0i, 10979i), vec4<bool>(false, false, false, true), false)), Struct_2(vec3<u32>(31258u, 69755u, 1u), Struct_1(vec3<f32>(1000f, 692f, -1165f), vec3<i32>(-1i, 4039i, 28630i), vec3<i32>(17263i, 0i, 1i), vec4<bool>(true, false, false, true), true)), Struct_2(vec3<u32>(1u, 0u, 4294967295u), Struct_1(vec3<f32>(569f, 681f, 720f), vec3<i32>(58275i, 39848i, -31139i), vec3<i32>(2147483647i, -30349i, 1i), vec4<bool>(false, false, false, true), true)), Struct_2(vec3<u32>(33671u, 1u, 5393u), Struct_1(vec3<f32>(2303f, 509f, 425f), vec3<i32>(0i, -1i, 1i), vec3<i32>(-1i, 1i, -27981i), vec4<bool>(false, false, false, true), false)), Struct_2(vec3<u32>(0u, 1577u, 0u), Struct_1(vec3<f32>(-1677f, -1379f, -1655f), vec3<i32>(2147483647i, 1i, -34403i), vec3<i32>(-48544i, i32(-2147483648), 29956i), vec4<bool>(false, true, true, true), true)), Struct_2(vec3<u32>(38900u, 4240u, 4294967295u), Struct_1(vec3<f32>(1886f, -1000f, 1524f), vec3<i32>(-1i, -52621i, i32(-2147483648)), vec3<i32>(0i, -215i, 0i), vec4<bool>(false, false, true, true), false)), Struct_2(vec3<u32>(4294967295u, 52915u, 0u), Struct_1(vec3<f32>(-983f, -881f, 2100f), vec3<i32>(29022i, -55585i, -58669i), vec3<i32>(2147483647i, -21617i, 26539i), vec4<bool>(false, true, true, true), true)), Struct_2(vec3<u32>(4294967295u, 1u, 54615u), Struct_1(vec3<f32>(-320f, -1822f, 265f), vec3<i32>(31965i, -1i, i32(-2147483648)), vec3<i32>(1i, 17632i, 0i), vec4<bool>(false, false, true, true), true)), Struct_2(vec3<u32>(4688u, 15931u, 45836u), Struct_1(vec3<f32>(128f, -1528f, -227f), vec3<i32>(-6718i, 0i, -24098i), vec3<i32>(1741i, 65733i, 2147483647i), vec4<bool>(false, false, false, true), false)), Struct_2(vec3<u32>(4294967295u, 1u, 0u), Struct_1(vec3<f32>(352f, -1699f, -525f), vec3<i32>(i32(-2147483648), 4081i, 0i), vec3<i32>(1i, -43690i, 0i), vec4<bool>(true, true, false, true), false)), Struct_2(vec3<u32>(0u, 4294967295u, 4294967295u), Struct_1(vec3<f32>(-233f, -1327f, 970f), vec3<i32>(0i, -15099i, 31536i), vec3<i32>(0i, 0i, -43996i), vec4<bool>(false, false, false, false), false)), Struct_2(vec3<u32>(4294967295u, 1u, 18289u), Struct_1(vec3<f32>(-1190f, -1446f, 650f), vec3<i32>(1i, -3039i, -35449i), vec3<i32>(-1i, -1i, -17585i), vec4<bool>(true, true, true, false), true)), Struct_2(vec3<u32>(117037u, 1u, 34106u), Struct_1(vec3<f32>(1279f, 1000f, -1000f), vec3<i32>(2147483647i, -1i, 2147483647i), vec3<i32>(20456i, -5364i, 0i), vec4<bool>(true, false, true, false), true)), Struct_2(vec3<u32>(63644u, 4294967295u, 1u), Struct_1(vec3<f32>(444f, 1304f, -116f), vec3<i32>(-17249i, -1i, -11292i), vec3<i32>(24335i, -18014i, -1i), vec4<bool>(true, true, true, false), true)), Struct_2(vec3<u32>(4294967295u, 10131u, 0u), Struct_1(vec3<f32>(-1107f, -1175f, 1086f), vec3<i32>(-1i, -6751i, -20890i), vec3<i32>(2147483647i, -11426i, -1i), vec4<bool>(true, false, true, false), false)), Struct_2(vec3<u32>(8640u, 4294967295u, 0u), Struct_1(vec3<f32>(1058f, 766f, -859f), vec3<i32>(2147483647i, 9065i, 3260i), vec3<i32>(10097i, 1i, -95158i), vec4<bool>(true, false, false, true), true)), Struct_2(vec3<u32>(84260u, 1u, 61854u), Struct_1(vec3<f32>(975f, 787f, 1273f), vec3<i32>(0i, i32(-2147483648), i32(-2147483648)), vec3<i32>(54524i, 0i, 6869i), vec4<bool>(false, true, false, true), true)), Struct_2(vec3<u32>(0u, 2991u, 0u), Struct_1(vec3<f32>(190f, 161f, -362f), vec3<i32>(i32(-2147483648), 10071i, -23928i), vec3<i32>(-1i, 0i, 2147483647i), vec4<bool>(true, false, true, true), true)), Struct_2(vec3<u32>(4294967295u, 4294967295u, 60462u), Struct_1(vec3<f32>(342f, 1000f, 1000f), vec3<i32>(-9075i, 1347i, 1i), vec3<i32>(-8313i, 29700i, i32(-2147483648)), vec4<bool>(false, true, false, false), true)), Struct_2(vec3<u32>(33192u, 1u, 4294967295u), Struct_1(vec3<f32>(-145f, 179f, 1000f), vec3<i32>(52632i, -1i, 1i), vec3<i32>(1i, -1i, 1i), vec4<bool>(false, true, false, true), false)), Struct_2(vec3<u32>(4294967295u, 24405u, 1u), Struct_1(vec3<f32>(-1326f, 1513f, 2007f), vec3<i32>(-52921i, -13366i, 2147483647i), vec3<i32>(4583i, 1917i, 0i), vec4<bool>(true, false, true, false), false)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2) -> i32 {
    var var_0 = arg_0;
    global3 = array<Struct_2, 30>();
    let var_1 = select(!(!vec2<bool>(3065u > u_input.a, true)), select(!(!(!var_0.b.d.xz)), !(!(!global2.b.d.wz)), any(!global2.b.d.wx)), global2.b.d.yz);
    let var_2 = var_0.a;
    let var_3 = false;
    return -arg_0.b.b.x;
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> u32 {
    var var_0 = abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(-44839i, -54875i, global2.b.c.x & global2.b.b.x), arg_1.c, abs(arg_1.c) & -vec3<i32>(2147483647i, -46659i, -52353i))) | abs(-max(reverseBits(arg_1.b), _wgslsmith_mult_vec3_i32(vec3<i32>(-1793i, global2.b.b.x, arg_1.c.x), global2.b.c)));
    global2 = Struct_2(reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(global1.x, 50782u, 4294967295u) & global1.yyz, countOneBits(abs(vec3<u32>(u_input.a, 30754u, u_input.b))))), arg_1);
    var var_1 = arg_1.b;
    var_1 = abs(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(-29156i, arg_1.c.x), -11854i, var_0.x, ~global2.b.c.x), vec4<i32>(firstLeadingBit(-12436i), abs(2147483647i), -36651i, i32(-1i) * -2147483647i)), reverseBits(_wgslsmith_sub_i32(~global2.b.b.x, abs(global2.b.b.x))), var_0.x));
    var var_2 = true;
    return global1.x;
}

fn func_2() -> bool {
    var var_0 = 4294967295u;
    var var_1 = false;
    global2 = global3[_wgslsmith_index_u32(func_4(~59575u, Struct_1(global2.b.a, firstTrailingBit(global2.b.c), vec3<i32>(firstTrailingBit(1i) << (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global1.x, global1.x, global2.a.x), vec4<u32>(global2.a.x, global2.a.x, 27497u, 22633u)) % 32u), func_3(Struct_2(global2.a, Struct_1(global2.b.a, global2.b.b, global2.b.c, vec4<bool>(global2.b.d.x, global2.b.e, global2.b.d.x, true), false))), -_wgslsmith_sub_i32(28139i, global2.b.b.x)), select(select(vec4<bool>(global2.b.e, global2.b.d.x, false, global2.b.e), vec4<bool>(false, true, global2.b.e, global2.b.d.x), global2.b.d), select(global2.b.d, !global2.b.d, global2.b.b.x <= global2.b.c.x), global2.b.e), all(vec4<bool>(false, false, global2.b.d.x, true)) & false)), 30u)];
    return false;
}

fn func_1(arg_0: f32, arg_1: vec4<f32>) -> Struct_2 {
    let var_0 = global2.b.c.x;
    global0 = array<Struct_1, 1>();
    var var_1 = vec4<bool>(!select(global2.b.e, select(any(global2.b.d), true, global2.b.e), all(!vec3<bool>(false, true, global2.b.e))), true, global2.b.e, any(vec2<bool>(func_2(), global2.b.d.x)));
    var var_2 = vec4<u32>(~global1.x, global1.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u ^ global1.x, global1.x, global2.a.x), global1.zxy), select(max(global1.x, u_input.b), 86975u, _wgslsmith_f_op_f32(-global2.b.a.x) == 1098f));
    let var_3 = var_1.x;
    return Struct_2(vec3<u32>(countOneBits(func_4(u_input.c.x, Struct_1(vec3<f32>(-1851f, -931f, 339f), global2.b.b, vec3<i32>(0i, -2147483647i, global2.b.b.x), vec4<bool>(false, true, true, true), global2.b.d.x))) & abs(1u), ~(select(55887u, global1.x, false) >> (firstLeadingBit(var_2.x) % 32u)), (1u << (abs(1u) % 32u)) & global1.x), global2.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(140f, global2.b.a.x)))), global2.b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b.a.x) - _wgslsmith_div_f32(global2.b.a.x, global2.b.a.x))), global2.b.a.x);
    var var_1 = global2.b.e;
    var_1 = false;
    var var_2 = !all(vec4<bool>(_wgslsmith_f_op_f32(step(1087f, global2.b.a.x)) < var_0.x, global2.b.d.x, _wgslsmith_f_op_f32(max(-382f, global2.b.a.x)) == global2.b.a.x, true));
    let var_3 = global3[_wgslsmith_index_u32(0u, 30u)];
    var var_4 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1122f)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -671f), -799f, -352f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, -1000f)), var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(global2.a.x | 1u);
}

