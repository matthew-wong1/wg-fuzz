struct Struct_1 {
    a: f32,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
    c: f32,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
    d: u32,
}

struct Struct_4 {
    a: i32,
    b: vec3<f32>,
    c: vec2<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(9881i, vec3<f32>(340f, 472f, 985f), vec2<u32>(1u, 18101u), Struct_1(1424f, 396f, -517f));

var<private> global1: f32;

var<private> global2: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(42300u, vec2<u32>(1u, 10094u), -923f, 65074u), Struct_2(4294967295u, vec2<u32>(0u, 4294967295u), -1078f, 1u), Struct_2(1u, vec2<u32>(28324u, 18992u), -282f, 1u), Struct_2(4294967295u, vec2<u32>(36612u, 4294967295u), -540f, 76492u), Struct_2(4294967295u, vec2<u32>(17949u, 0u), -880f, 79374u), Struct_2(4294967295u, vec2<u32>(4294967295u, 1u), -362f, 1u), Struct_2(1u, vec2<u32>(27785u, 50263u), -354f, 0u), Struct_2(53401u, vec2<u32>(20053u, 23575u), 1000f, 0u), Struct_2(100855u, vec2<u32>(74810u, 36763u), 1101f, 4294967295u), Struct_2(1u, vec2<u32>(28189u, 40308u), 807f, 24888u), Struct_2(22362u, vec2<u32>(47439u, 31731u), -1425f, 33369u), Struct_2(71780u, vec2<u32>(13680u, 11623u), 1308f, 0u), Struct_2(4294967295u, vec2<u32>(52802u, 89797u), 385f, 1u), Struct_2(49285u, vec2<u32>(4294967295u, 76680u), -436f, 4294967295u), Struct_2(1u, vec2<u32>(14593u, 0u), -867f, 1u), Struct_2(483u, vec2<u32>(4294967295u, 0u), 644f, 4294967295u), Struct_2(14461u, vec2<u32>(0u, 75745u), -1000f, 4294967295u), Struct_2(0u, vec2<u32>(1u, 1u), -887f, 39064u), Struct_2(45786u, vec2<u32>(1u, 4294967295u), 1000f, 31573u), Struct_2(8024u, vec2<u32>(19108u, 57352u), 1045f, 0u), Struct_2(4382u, vec2<u32>(0u, 25674u), -328f, 0u), Struct_2(8339u, vec2<u32>(4294967295u, 37865u), 723f, 4294967295u), Struct_2(1u, vec2<u32>(1927u, 32417u), 1045f, 1u), Struct_2(4294967295u, vec2<u32>(122518u, 1u), 1502f, 0u), Struct_2(1u, vec2<u32>(90971u, 0u), -845f, 4294967295u));

var<private> global3: Struct_4 = Struct_4(-9171i, vec3<f32>(-535f, 212f, -1615f), vec2<u32>(4294967295u, 1u), Struct_1(-216f, -391f, -753f));

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: u32) -> i32 {
    let var_0 = Struct_3(Struct_2(8632u, vec2<u32>((arg_2 ^ global0.c.x) ^ global0.c.x, global0.c.x ^ abs(4294967295u)), _wgslsmith_f_op_f32(-1473f + -1000f), 4294967295u), Struct_1(894f, 1237f, 1000f), ~(reverseBits(global3.c.x) & _wgslsmith_div_u32(arg_1.d, u_input.b)), arg_1.d);
    var var_1 = arg_1;
    let var_2 = _wgslsmith_sub_vec3_u32(u_input.a, vec3<u32>(_wgslsmith_div_u32(abs(28544u & global0.c.x), _wgslsmith_clamp_u32(~0u, ~var_1.d, 1u)), u_input.a.x, 39131u));
    var var_3 = -2147483647i;
    let var_4 = true;
    return global0.a;
}

fn func_2(arg_0: bool, arg_1: vec4<i32>) -> vec3<i32> {
    global2 = array<Struct_2, 25>();
    let var_0 = global0.d;
    let var_1 = _wgslsmith_sub_vec3_i32(vec3<i32>(global0.a, 10391i, -1i), ~vec3<i32>(_wgslsmith_div_i32(-18062i, -8939i ^ arg_1.x), -2147483647i, global3.a | ~1i));
    var var_2 = Struct_4(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, i32(-1i) * -21260i, ~_wgslsmith_div_i32(arg_1.x, var_1.x), _wgslsmith_add_i32(func_3(global3.b, global2[_wgslsmith_index_u32(11722u, 25u)], 0u), var_1.x)), min(min(-arg_1, -vec4<i32>(2147483647i, -24301i, -23872i, var_1.x)), firstTrailingBit(vec4<i32>(-19841i, 11316i, global0.a, 0i) ^ arg_1))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(818f + global3.d.b), 1000f, _wgslsmith_f_op_f32(-176f + var_0.b)) - _wgslsmith_div_vec3_f32(global0.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(357f, 1092f, global3.b.x) - vec3<f32>(-790f, -599f, var_0.c)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.b))), u_input.a.zx, global0.d);
    var var_3 = -firstTrailingBit(_wgslsmith_add_i32(_wgslsmith_add_i32(var_1.x, arg_1.x) ^ var_1.x, var_1.x));
    return vec3<i32>(-1i, var_2.a, ~reverseBits(arg_1.x));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<u32>, arg_2: vec3<i32>, arg_3: vec3<u32>) -> bool {
    global0 = Struct_4(reverseBits(_wgslsmith_mult_i32(i32(-1i) * -1i, global3.a)) ^ -8972i, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global3.b, global3.b) * vec3<f32>(global3.d.b, 269f, _wgslsmith_f_op_f32(global3.b.x + 128f))), global3.c, Struct_1(335f, _wgslsmith_f_op_f32(743f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1269f) + _wgslsmith_f_op_f32(min(-156f, global0.b.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x + 1063f)) - global0.d.c)));
    global3 = Struct_4(min(global0.a, -max(0i, _wgslsmith_sub_i32(0i, 1i))), arg_0, ~select(vec2<u32>(global3.c.x, arg_3.x) ^ ~vec2<u32>(arg_1.x, arg_1.x), u_input.a.xy, false), global0.d);
    let var_0 = _wgslsmith_mult_vec2_i32(-(~_wgslsmith_mult_vec2_i32(vec2<i32>(global3.a, global0.a), vec2<i32>(2147483647i, global3.a)) << (~_wgslsmith_sub_vec2_u32(arg_3.zx, vec2<u32>(4294967295u, 1u)) % vec2<u32>(32u))), arg_2.xy);
    let var_1 = select(~_wgslsmith_mod_vec4_u32(~min(arg_1, vec4<u32>(arg_3.x, arg_3.x, u_input.b, u_input.b)), ~arg_1 & vec4<u32>(49191u, 4294967295u, arg_1.x, 28004u)), ~arg_1, true);
    let var_2 = ~min(arg_2.zx, select(arg_2.yx, -var_0 >> (min(vec2<u32>(arg_3.x, global0.c.x), global3.c) % vec2<u32>(32u)), select(vec2<bool>(true, true), vec2<bool>(true, true), true)));
    return !all(select(!select(vec2<bool>(false, false), vec2<bool>(false, false), true), vec2<bool>(true, true), vec2<bool>(true, true)));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<bool>) -> Struct_3 {
    var var_0 = func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global0.b.x), 707f, _wgslsmith_f_op_f32(abs(-192f))) - vec3<f32>(2210f, 511f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1760f))))), ~(~vec4<u32>(1u, global0.c.x, global3.c.x, u_input.a.x) ^ _wgslsmith_add_vec4_u32(vec4<u32>(global3.c.x, u_input.b, 74636u, 4294967295u), vec4<u32>(global0.c.x, 11322u, 4294967295u, global3.c.x))) << (select(~(~vec4<u32>(112010u, 26255u, global3.c.x, global0.c.x)), ~(~vec4<u32>(global3.c.x, global3.c.x, global3.c.x, 145643u)), vec4<bool>(arg_0.x, arg_1.x, arg_0.x, arg_1.x)) % vec4<u32>(32u)), func_2(!arg_0.x, vec4<i32>(-1i) * -(vec4<i32>(2147483647i, global3.a, global3.a, 2147483647i) | vec4<i32>(46659i, global3.a, 2147483647i, -30160i))), vec3<u32>(~15638u, ~(~0u), ~_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(u_input.a.x, 1u, global0.c.x, 91877u)), countOneBits(vec4<u32>(37277u, u_input.a.x, u_input.a.x, u_input.a.x)))));
    global2 = array<Struct_2, 25>();
    return Struct_3(global2[_wgslsmith_index_u32(global3.c.x, 25u)], Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-354f - -644f)), _wgslsmith_div_f32(-1052f, _wgslsmith_f_op_f32(floor(global0.d.c))), global3.b.x), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(global3.c, countOneBits(abs(global3.c))), vec2<u32>(22896u, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.a.x, 1u, 6586u), vec4<u32>(global0.c.x, global0.c.x, 0u, 21813u)), 1u))), ~_wgslsmith_mult_u32(0u, 1u));
}

fn func_5(arg_0: u32, arg_1: bool, arg_2: bool, arg_3: Struct_3) -> Struct_4 {
    var var_0 = arg_3;
    return Struct_4(2147483647i, global3.b, vec2<u32>(~_wgslsmith_div_u32(_wgslsmith_div_u32(4294967295u, arg_3.c), arg_3.a.a), 12121u), func_1(!vec3<bool>(false, false, any(vec2<bool>(arg_2, arg_1))), select(vec3<bool>(any(vec3<bool>(arg_1, false, false)), all(vec4<bool>(arg_2, false, arg_1, arg_2)), true), !(!vec3<bool>(true, true, arg_1)), select(!vec3<bool>(arg_2, arg_1, false), !vec3<bool>(arg_2, arg_2, arg_2), select(arg_1, false, true)))).b);
}

fn func_6(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_2, arg_3: u32) -> Struct_2 {
    var var_0 = func_5(4294967295u, global3.a != global3.a, select(false, false, all(vec4<bool>(false, false, false, false))) || any(vec2<bool>(true, true)), Struct_3(global2[_wgslsmith_index_u32(108570u, 25u)], Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-978f, -3796f), _wgslsmith_f_op_f32(307f - arg_0.c))), _wgslsmith_f_op_f32(378f * 979f), _wgslsmith_f_op_f32(min(-168f, _wgslsmith_f_op_f32(-471f - global3.d.a)))), abs(1u), _wgslsmith_dot_vec3_u32(abs(~u_input.a), u_input.a)));
    var var_1 = firstLeadingBit(arg_0.d);
    var var_2 = arg_2.b.x >> (~4294967295u % 32u);
    global2 = array<Struct_2, 25>();
    var var_3 = func_5((global3.c.x << (arg_2.b.x % 32u)) & (_wgslsmith_div_u32(reverseBits(arg_1.c.x), _wgslsmith_mult_u32(98826u, arg_3)) | arg_3), true, true, Struct_3(func_1(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false)))).a, Struct_1(_wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(671f + arg_0.c), _wgslsmith_f_op_f32(-var_0.d.a)), _wgslsmith_f_op_f32(step(1319f, _wgslsmith_f_op_f32(sign(-1000f))))), 12989u, _wgslsmith_mult_u32(27984u, _wgslsmith_mult_u32(reverseBits(0u), _wgslsmith_dot_vec3_u32(u_input.a, u_input.a)))));
    return func_1(vec3<bool>(!any(vec3<bool>(true, true, true)), true, true), vec3<bool>(true, false, all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))))).a;
}

fn func_7(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: Struct_2) -> Struct_4 {
    global3 = Struct_4(-global0.a, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1295f * 2080f)) + arg_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global3.d.c), _wgslsmith_f_op_f32(-arg_2.x), arg_0.x))), global3.b.x), ~(~arg_3.b), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global3.d.c)), 1023f)), 154f, arg_2.x));
    let var_0 = (_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global0.a, global3.a, global0.a, 1i), vec4<i32>(18691i, global3.a, global3.a, 0i)), _wgslsmith_mult_vec4_i32(vec4<i32>(global0.a, 2147483647i, global0.a, -2147483647i), vec4<i32>(1i, global3.a, global0.a, global0.a))), abs(vec4<i32>(global3.a, 9673i, global0.a, global3.a) ^ vec4<i32>(global3.a, global0.a, 1i, global0.a)), _wgslsmith_clamp_vec4_i32(vec4<i32>(global0.a, 1i, global0.a, global0.a), vec4<i32>(64519i, 42071i, global3.a, global0.a), vec4<i32>(-2147483647i, 1i, -43632i, -25547i)) ^ (vec4<i32>(2147483647i, -1i, 23082i, -49250i) & vec4<i32>(global3.a, 25988i, global0.a, -1i))) & firstLeadingBit(select(min(vec4<i32>(global0.a, -1i, -11581i, 2147483647i), vec4<i32>(global0.a, -1i, global3.a, global0.a)), min(vec4<i32>(global0.a, -1i, global0.a, global3.a), vec4<i32>(global3.a, 2147483647i, 2147483647i, global3.a)), select(vec4<bool>(true, false, true, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), true)))) & _wgslsmith_clamp_vec4_i32(select(select(_wgslsmith_div_vec4_i32(vec4<i32>(0i, -1i, 7366i, -1i), vec4<i32>(global3.a, 0i, global0.a, -25007i)), abs(vec4<i32>(-1i, -46955i, global3.a, -40402i)), all(vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x))), -vec4<i32>(global3.a, 1i, 0i, -1i) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(1u, global0.c.x, u_input.a.x, arg_3.d), vec4<u32>(26345u, 7676u, u_input.b, 4294967295u)) % vec4<u32>(32u)), vec4<bool>(!arg_0.x, false, any(vec2<bool>(true, false)), true)), vec4<i32>(firstTrailingBit(-7828i), countOneBits(i32(-1i) * -21035i), min(global0.a, global3.a), global3.a), ~select(~vec4<i32>(-7014i, 29837i, 43603i, 53800i), ~vec4<i32>(global3.a, 59735i, global3.a, global0.a), select(vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), true)));
    var var_1 = vec3<u32>(~abs(func_1(!vec3<bool>(false, false, arg_0.x), select(vec3<bool>(true, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, false, true), vec3<bool>(arg_0.x, arg_0.x, arg_0.x))).c), arg_3.d, _wgslsmith_add_u32(~u_input.a.x << (22569u % 32u), 1392u));
    let var_2 = arg_0.x == ((_wgslsmith_f_op_f32(-722f - 1887f) <= _wgslsmith_f_op_f32(461f * _wgslsmith_f_op_f32(-arg_3.c))) || (arg_3.c <= arg_2.x));
    var var_3 = firstLeadingBit(vec3<u32>(firstTrailingBit(0u), 4294967295u, global0.c.x));
    return func_5(_wgslsmith_div_u32((arg_3.b.x & var_3.x) >> (19034u % 32u), 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1083f)) > arg_1.b.a, all(vec2<bool>(!select(false, var_2, arg_0.x), true)), Struct_3(arg_3, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(927f * global0.b.x)), _wgslsmith_f_op_f32(587f * 517f), arg_2.x), ~19660u, 25129u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1000f;
    global3 = func_7(vec2<bool>(true, false), Struct_3(func_6(global2[_wgslsmith_index_u32(global3.c.x, 25u)], func_5(u_input.a.x & 28496u, false, true, func_1(vec3<bool>(false, true, true), vec3<bool>(true, true, true))), Struct_2(~global0.c.x, ~vec2<u32>(8448u, 20032u), _wgslsmith_f_op_f32(abs(343f)), _wgslsmith_sub_u32(global3.c.x, u_input.b)), _wgslsmith_dot_vec2_u32(~global0.c, vec2<u32>(1u, 4294967295u))), Struct_1(_wgslsmith_f_op_f32(-1165f * _wgslsmith_f_op_f32(select(global0.d.a, var_0, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.d.a * 1000f)), _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(-1095f - var_0))), u_input.a.x, _wgslsmith_mult_u32(global3.c.x, _wgslsmith_mult_u32(51968u, ~u_input.a.x))), vec4<f32>(_wgslsmith_div_f32(global0.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -120f), -265f)), _wgslsmith_f_op_f32(f32(-1f) * -1689f), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, var_0) * _wgslsmith_f_op_f32(var_0 - global3.d.c)))), func_6(global2[_wgslsmith_index_u32(abs(1u), 25u)], Struct_4(_wgslsmith_add_i32(global0.a | 2147483647i, global3.a & 1i), global0.b, u_input.a.yy ^ global3.c, global3.d), Struct_2(countOneBits(1u), ~_wgslsmith_add_vec2_u32(global3.c, u_input.a.xx), _wgslsmith_f_op_f32(-1567f + _wgslsmith_f_op_f32(step(511f, global3.b.x))), abs(firstTrailingBit(global0.c.x))), 52962u));
    var var_1 = _wgslsmith_mod_vec2_u32(select(firstTrailingBit(_wgslsmith_div_vec2_u32(~u_input.a.zz, _wgslsmith_sub_vec2_u32(u_input.a.zz, vec2<u32>(1u, 29975u)))), vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.a, u_input.a), 14572u), vec2<bool>(_wgslsmith_f_op_f32(-var_0) < -136f, global0.c.x <= ~global0.c.x)), vec2<u32>(~u_input.b, global3.c.x));
    let var_2 = !(!vec3<bool>(false, true, true || any(vec2<bool>(false, false))));
    let var_3 = func_1(var_2, select(!select(!var_2, vec3<bool>(var_2.x, true, var_2.x), var_2.x), vec3<bool>(true, true, all(select(vec2<bool>(true, var_2.x), vec2<bool>(true, var_2.x), false))), var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(1u), ~u_input.a, func_5(0u, global0.a != firstLeadingBit(1i), false, var_3).c.x);
}

