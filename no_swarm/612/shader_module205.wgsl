struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 23>;

var<private> global1: Struct_1 = Struct_1(vec4<f32>(639f, 160f, -394f, 679f), vec4<i32>(-31659i, 1i, 28063i, 1i), vec2<u32>(4294967295u, 1u), -18878i);

var<private> global2: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(Struct_1(vec4<f32>(1014f, 1848f, 861f, -1026f), vec4<i32>(22677i, -1i, 2147483647i, 35717i), vec2<u32>(11379u, 31193u), -1i), true), Struct_2(Struct_1(vec4<f32>(532f, -1836f, -1327f, -1140f), vec4<i32>(25357i, 1i, -19205i, -22378i), vec2<u32>(55501u, 0u), i32(-2147483648)), false), Struct_2(Struct_1(vec4<f32>(226f, 1351f, -125f, -1349f), vec4<i32>(1i, 17153i, -34464i, -1i), vec2<u32>(4294967295u, 0u), -69212i), true), Struct_2(Struct_1(vec4<f32>(725f, 925f, -641f, -745f), vec4<i32>(31544i, -4838i, 2147483647i, 0i), vec2<u32>(4294967295u, 4294967295u), 2147483647i), true), Struct_2(Struct_1(vec4<f32>(310f, 935f, -638f, -183f), vec4<i32>(i32(-2147483648), 2147483647i, 1i, 10366i), vec2<u32>(0u, 1u), 2147483647i), true), Struct_2(Struct_1(vec4<f32>(1115f, 2054f, 1000f, 1229f), vec4<i32>(1i, i32(-2147483648), 24843i, 2041i), vec2<u32>(4294967295u, 4294967295u), 0i), false), Struct_2(Struct_1(vec4<f32>(719f, 241f, 105f, -957f), vec4<i32>(26464i, -1i, 12250i, -49683i), vec2<u32>(0u, 47648u), 0i), false), Struct_2(Struct_1(vec4<f32>(-488f, -138f, -1265f, 808f), vec4<i32>(i32(-2147483648), 1i, -26056i, -5837i), vec2<u32>(4294967295u, 1u), 1i), true), Struct_2(Struct_1(vec4<f32>(-1729f, -489f, 1098f, -854f), vec4<i32>(26429i, -1477i, 0i, 1i), vec2<u32>(4294967295u, 74205u), 45335i), true), Struct_2(Struct_1(vec4<f32>(-1356f, 406f, -853f, 460f), vec4<i32>(7638i, 0i, -16811i, 46463i), vec2<u32>(940u, 0u), -29939i), false), Struct_2(Struct_1(vec4<f32>(898f, -1281f, 635f, 174f), vec4<i32>(0i, -5717i, i32(-2147483648), -1i), vec2<u32>(1809u, 1u), 0i), true), Struct_2(Struct_1(vec4<f32>(-1693f, 618f, -623f, -733f), vec4<i32>(i32(-2147483648), -8852i, 46046i, 2147483647i), vec2<u32>(1u, 0u), 34777i), false), Struct_2(Struct_1(vec4<f32>(399f, -2612f, 337f, -362f), vec4<i32>(-1i, 1i, i32(-2147483648), i32(-2147483648)), vec2<u32>(0u, 0u), 1i), true), Struct_2(Struct_1(vec4<f32>(985f, -1000f, -1080f, 134f), vec4<i32>(0i, 6175i, -85005i, -43796i), vec2<u32>(126242u, 1u), -1i), false), Struct_2(Struct_1(vec4<f32>(180f, -232f, 316f, -1000f), vec4<i32>(1i, -69764i, 2147483647i, 0i), vec2<u32>(14963u, 0u), 2147483647i), true), Struct_2(Struct_1(vec4<f32>(-171f, 383f, 1285f, 1749f), vec4<i32>(4483i, -2095i, -1i, -19469i), vec2<u32>(1u, 15157u), -38909i), true), Struct_2(Struct_1(vec4<f32>(707f, -966f, 1033f, -424f), vec4<i32>(1i, -64070i, 0i, 1i), vec2<u32>(50926u, 43614u), -32054i), true), Struct_2(Struct_1(vec4<f32>(-437f, -161f, -156f, 431f), vec4<i32>(0i, 2147483647i, -1i, 3100i), vec2<u32>(30066u, 34060u), -2080i), false), Struct_2(Struct_1(vec4<f32>(821f, 886f, 1354f, 260f), vec4<i32>(53548i, -22664i, i32(-2147483648), 2147483647i), vec2<u32>(1u, 0u), -1i), false), Struct_2(Struct_1(vec4<f32>(-150f, 327f, 226f, 238f), vec4<i32>(-15013i, 2147483647i, i32(-2147483648), -1i), vec2<u32>(45083u, 23812u), -40286i), true), Struct_2(Struct_1(vec4<f32>(605f, -1249f, 145f, 1000f), vec4<i32>(-8273i, 49143i, -1i, 2147483647i), vec2<u32>(0u, 50723u), 4595i), true), Struct_2(Struct_1(vec4<f32>(-304f, -132f, -934f, 3407f), vec4<i32>(1i, -10483i, -23224i, 0i), vec2<u32>(4294967295u, 36434u), 29390i), false), Struct_2(Struct_1(vec4<f32>(-851f, -2443f, 2772f, -1616f), vec4<i32>(157i, 31189i, 0i, -17312i), vec2<u32>(16766u, 4294967295u), 1i), false), Struct_2(Struct_1(vec4<f32>(1054f, -1004f, -193f, 172f), vec4<i32>(1052i, i32(-2147483648), i32(-2147483648), 30693i), vec2<u32>(60712u, 1u), -36845i), true), Struct_2(Struct_1(vec4<f32>(-1028f, 1000f, -884f, -397f), vec4<i32>(7601i, 0i, 12143i, -48914i), vec2<u32>(0u, 0u), -1i), true), Struct_2(Struct_1(vec4<f32>(1000f, -1000f, 846f, 775f), vec4<i32>(52420i, 40316i, -19999i, -1i), vec2<u32>(19925u, 91595u), -23782i), false), Struct_2(Struct_1(vec4<f32>(1113f, -519f, -1157f, 397f), vec4<i32>(-1i, i32(-2147483648), -11717i, 4477i), vec2<u32>(1u, 4294967295u), 31403i), false), Struct_2(Struct_1(vec4<f32>(-2334f, 1287f, -403f, 142f), vec4<i32>(-1i, -1i, 15399i, 25200i), vec2<u32>(0u, 39393u), i32(-2147483648)), true));

var<private> global3: i32;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> i32 {
    let var_0 = all(select(!(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true)), !vec3<bool>(-698f == global1.a.x, u_input.a < 31757u, global1.a.x > -486f), vec3<bool>(_wgslsmith_f_op_f32(floor(global1.a.x)) > _wgslsmith_f_op_f32(max(897f, -982f)), true, true)));
    global2 = array<Struct_2, 28>();
    global1 = Struct_1(global1.a, vec4<i32>(-global1.d, max(-2147483647i, ~abs(global1.d)), global1.b.x, select(7309i, ~global1.d, false)), _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(1u, 9628u, 1u), u_input.b.x) ^ ~min(u_input.b.zy, vec2<u32>(u_input.a, u_input.b.x)), u_input.b.wz, ~u_input.b.zx ^ vec2<u32>(global1.c.x | 70960u, u_input.a)), _wgslsmith_mult_i32(~_wgslsmith_div_i32(max(-7595i, global1.b.x), abs(global1.d)), -38677i));
    var var_1 = vec3<u32>(u_input.b.x, _wgslsmith_dot_vec4_u32(u_input.b, ~(~vec4<u32>(1u, u_input.b.x, 12222u, global1.c.x))), global1.c.x);
    global2 = array<Struct_2, 28>();
    return -global1.d & ~(global1.b.x | ~reverseBits(20308i));
}

fn func_2(arg_0: vec2<u32>, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    global3 = global1.d;
    global1 = arg_2;
    var var_0 = Struct_1(_wgslsmith_div_vec4_f32(global1.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1125f, -578f, -203f, global1.a.x), vec4<f32>(global1.a.x, -1000f, global1.a.x, global1.a.x)))), select(arg_2.b, vec4<i32>(arg_2.b.x, -30704i, firstLeadingBit(func_3()), ~41449i), !select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), true), vec4<bool>(false, true, true, false), false)), ~firstTrailingBit(~(~vec2<u32>(81892u, 82837u))), ~arg_2.b.x);
    let var_1 = !any(select(vec2<bool>(true, true), select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(true, false), true)), all(vec2<bool>(true, true))));
    global0 = array<Struct_2, 23>();
    return Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-140f, 448f, 363f, -580f)) + vec4<f32>(global1.a.x, -607f, arg_2.a.x, -649f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(125f, var_0.a.x, global1.a.x, -709f) * _wgslsmith_div_vec4_f32(var_0.a, var_0.a))), _wgslsmith_f_op_vec4_f32(var_0.a * vec4<f32>(1351f, _wgslsmith_f_op_f32(643f * 359f), _wgslsmith_f_op_f32(-arg_2.a.x), -713f)))), arg_2.b, vec2<u32>(arg_0.x, arg_1), 2147483647i);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec2<u32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = -vec4<i32>(_wgslsmith_mod_i32(0i, ~(-3282i)), reverseBits(-4492i), -13221i, _wgslsmith_div_i32(1i, global1.d));
    return arg_3;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global1 = arg_1;
    let var_0 = Struct_2(func_4(func_2(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, u_input.a), min(vec2<u32>(0u, 16646u), global1.c)), 36428u, arg_0), true, select(arg_1.c, vec2<u32>(50367u, 1u), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-1944f * 751f), _wgslsmith_f_op_f32(1170f * 1000f), _wgslsmith_f_op_f32(step(257f, -248f)), arg_1.a.x), firstTrailingBit(arg_1.b) >> (~u_input.b % vec4<u32>(32u)), _wgslsmith_mod_vec2_u32(global1.c, vec2<u32>(4294967295u, 0u)), func_2(vec2<u32>(arg_0.c.x, u_input.b.x), ~global1.c.x, Struct_1(vec4<f32>(arg_1.a.x, -253f, 351f, arg_1.a.x), vec4<i32>(0i, -2147483647i, 11492i, arg_1.d), global1.c, -1i)).b.x)), true);
    let var_1 = func_4(func_2(_wgslsmith_mult_vec2_u32(arg_1.c, countOneBits(func_4(arg_0, var_0.b, var_0.a.c, var_0.a).c)), 19125u, var_0.a), var_0.b != var_0.b, reverseBits(~(~(vec2<u32>(arg_1.c.x, 7921u) ^ arg_1.c))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.a * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.a.x, -1000f, arg_1.a.x, arg_1.a.x) + var_0.a.a))), arg_0.b, ~_wgslsmith_sub_vec2_u32(arg_1.c, vec2<u32>(var_0.a.c.x, global1.c.x)), 1i));
    let var_2 = !(!(!(!var_0.b)));
    var var_3 = var_0.a.c.x;
    return func_4(func_4(func_2(reverseBits(firstTrailingBit(var_0.a.c)), global1.c.x, func_4(func_4(Struct_1(var_0.a.a, vec4<i32>(arg_0.b.x, global1.b.x, var_1.d, 4900i), vec2<u32>(arg_0.c.x, 75503u), -34512i), true, vec2<u32>(40687u, global1.c.x), Struct_1(var_1.a, vec4<i32>(global1.b.x, arg_1.b.x, arg_0.b.x, -9432i), vec2<u32>(35228u, 9048u), arg_1.b.x)), true, ~arg_1.c, Struct_1(vec4<f32>(-754f, 1254f, arg_0.a.x, 501f), vec4<i32>(global1.d, arg_0.b.x, 1i, -68050i), vec2<u32>(0u, global1.c.x), -14951i))), false, ~(~vec2<u32>(0u, 0u) >> (vec2<u32>(var_1.c.x, global1.c.x) % vec2<u32>(32u))), arg_0), all(select(select(!vec4<bool>(var_2, false, var_2, false), select(vec4<bool>(var_0.b, false, var_2, false), vec4<bool>(var_2, var_0.b, false, var_2), var_2), select(vec4<bool>(var_2, true, var_0.b, var_0.b), vec4<bool>(true, var_0.b, var_2, var_0.b), var_2)), !(!vec4<bool>(true, var_0.b, false, true)), true)), abs(firstLeadingBit(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 0u), var_1.c)) << (var_0.a.c % vec2<u32>(32u))), func_4(func_4(Struct_1(arg_1.a, vec4<i32>(-2147483647i, 0i, -2147483647i, arg_1.b.x), vec2<u32>(7520u, 0u), -14245i), false, u_input.b.zy, Struct_1(vec4<f32>(arg_0.a.x, var_1.a.x, arg_0.a.x, var_0.a.a.x), var_0.a.b | var_1.b, select(var_1.c, vec2<u32>(0u, var_1.c.x), vec2<bool>(var_2, var_0.b)), arg_0.b.x >> (4294967295u % 32u))), true, vec2<u32>(19784u, var_0.a.c.x), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1.a.x, arg_0.a.x, 1162f, arg_0.a.x), vec4<f32>(var_1.a.x, 1208f, -493f, 1366f)))), -(arg_1.b << (vec4<u32>(10340u, 12197u, arg_1.c.x, arg_0.c.x) % vec4<u32>(32u))), _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(var_0.a.c, vec2<u32>(var_1.c.x, 0u), arg_0.c), ~vec2<u32>(arg_0.c.x, global1.c.x)), ~_wgslsmith_clamp_i32(-1i, arg_1.d, -14346i))));
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: u32, arg_3: vec2<u32>) -> i32 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~u_input.a, ~(~_wgslsmith_mod_u32(u_input.a, 0u))), 23u)];
    var var_1 = Struct_2(arg_1, !var_0.b);
    var var_2 = func_2(vec2<u32>(_wgslsmith_mod_u32(u_input.a, ~select(1u, 805u, false)), _wgslsmith_add_u32(~func_4(var_1.a, true, vec2<u32>(arg_1.c.x, arg_2), Struct_1(vec4<f32>(1072f, 391f, 1384f, var_1.a.a.x), vec4<i32>(1i, arg_1.d, 3540i, 7537i), global1.c, 2147483647i)).c.x, 8470u)), arg_3.x, func_2(func_2(vec2<u32>(~var_0.a.c.x, reverseBits(43211u)), ~(~arg_2), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-271f, 251f, -404f, var_1.a.a.x) - var_0.a.a), -vec4<i32>(arg_0.x, global1.d, -91813i, -1i), ~vec2<u32>(u_input.b.x, 1u), -2147483647i)).c, func_2(firstTrailingBit(vec2<u32>(7153u, arg_2)), ~0u, func_2(vec2<u32>(78895u, 4294967295u), 13146u, Struct_1(vec4<f32>(-500f, arg_1.a.x, 394f, var_1.a.a.x), var_1.a.b, arg_1.c, -17252i))).c.x ^ 81903u, arg_1));
    var_1 = global0[_wgslsmith_index_u32(~global1.c.x, 23u)];
    var_2 = arg_1;
    return -_wgslsmith_mod_i32(~(-(~2389i)), var_0.a.b.x >> ((_wgslsmith_dot_vec3_u32(vec3<u32>(23386u, 87383u, arg_1.c.x), vec3<u32>(14219u, 33362u, 50642u)) ^ var_1.a.c.x) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 52794i;
    global2 = array<Struct_2, 28>();
    var_0 = ~42140i;
    var_0 = _wgslsmith_clamp_i32(global1.b.x, -5840i, _wgslsmith_clamp_i32(global1.b.x << ((u_input.b.x & (u_input.b.x ^ global1.c.x)) % 32u), -2147483647i, -func_5(firstTrailingBit(global1.b.yz), func_1(Struct_1(global1.a, vec4<i32>(global1.b.x, -1i, -34960i, global1.b.x), vec2<u32>(u_input.a, 1u), -13758i), Struct_1(vec4<f32>(974f, 1235f, global1.a.x, -484f), vec4<i32>(12121i, global1.d, global1.b.x, -66311i), global1.c, -50214i)), 0u & u_input.b.x, u_input.b.wz)));
    var_0 = (_wgslsmith_mod_i32(_wgslsmith_mult_i32(_wgslsmith_div_i32(global1.b.x, 35003i), -29143i), global1.d) ^ reverseBits(_wgslsmith_clamp_i32(~global1.d, _wgslsmith_div_i32(global1.d, -1i), global1.b.x))) >> (1u % 32u);
    var var_1 = true;
    let x = u_input.a;
    s_output = StorageBuffer(global1.b.wx, global1.d);
}

