struct Struct_1 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: vec4<bool>,
    d: i32,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_4, 24> = array<Struct_4, 24>(Struct_4(Struct_3(Struct_1(15804i, vec3<f32>(-1000f, 414f, 106f)), vec4<f32>(1991f, -2651f, -334f, 1000f), vec4<bool>(false, true, false, false)), Struct_2(-1537f, false, -1i), vec4<bool>(false, false, true, false), 0i), Struct_4(Struct_3(Struct_1(-7429i, vec3<f32>(-1595f, 1000f, 292f)), vec4<f32>(-972f, 493f, -1081f, -511f), vec4<bool>(false, true, false, false)), Struct_2(-346f, false, 1i), vec4<bool>(true, false, false, false), 29648i), Struct_4(Struct_3(Struct_1(1i, vec3<f32>(1564f, 281f, 1000f)), vec4<f32>(1651f, -1225f, -1000f, -1178f), vec4<bool>(true, false, false, true)), Struct_2(1064f, false, 12150i), vec4<bool>(false, true, false, true), 2147483647i), Struct_4(Struct_3(Struct_1(2147483647i, vec3<f32>(1000f, 242f, -1000f)), vec4<f32>(920f, -174f, -1661f, -467f), vec4<bool>(true, true, false, false)), Struct_2(1499f, true, 6467i), vec4<bool>(true, true, true, true), -25769i), Struct_4(Struct_3(Struct_1(2147483647i, vec3<f32>(-714f, 2454f, -653f)), vec4<f32>(-1540f, -237f, -900f, -1000f), vec4<bool>(true, false, false, true)), Struct_2(-539f, true, 2147483647i), vec4<bool>(false, true, true, false), -69020i), Struct_4(Struct_3(Struct_1(49508i, vec3<f32>(689f, -1021f, -311f)), vec4<f32>(419f, -580f, 744f, 1787f), vec4<bool>(true, true, true, true)), Struct_2(724f, true, 17661i), vec4<bool>(false, false, false, false), -27610i), Struct_4(Struct_3(Struct_1(-28468i, vec3<f32>(753f, 410f, -1069f)), vec4<f32>(-949f, 983f, 781f, 957f), vec4<bool>(false, true, true, true)), Struct_2(294f, false, -12861i), vec4<bool>(true, true, false, false), i32(-2147483648)), Struct_4(Struct_3(Struct_1(-1i, vec3<f32>(-350f, -1454f, 672f)), vec4<f32>(332f, -1333f, -306f, 1000f), vec4<bool>(false, false, false, true)), Struct_2(-1315f, true, -18763i), vec4<bool>(false, false, true, true), 1i), Struct_4(Struct_3(Struct_1(31082i, vec3<f32>(649f, 921f, 426f)), vec4<f32>(-1000f, -432f, 446f, 1000f), vec4<bool>(true, true, true, false)), Struct_2(-164f, true, 2147483647i), vec4<bool>(true, false, true, false), -1i), Struct_4(Struct_3(Struct_1(12999i, vec3<f32>(-887f, -1000f, 965f)), vec4<f32>(-474f, 1243f, 389f, 164f), vec4<bool>(true, true, true, true)), Struct_2(1645f, false, -16511i), vec4<bool>(true, true, true, false), 33714i), Struct_4(Struct_3(Struct_1(66776i, vec3<f32>(-1096f, -113f, -1043f)), vec4<f32>(674f, -1147f, 523f, 1197f), vec4<bool>(true, false, true, false)), Struct_2(1000f, true, -38039i), vec4<bool>(true, true, false, false), 0i), Struct_4(Struct_3(Struct_1(0i, vec3<f32>(1170f, 297f, -1336f)), vec4<f32>(-623f, 232f, -399f, -723f), vec4<bool>(true, false, true, true)), Struct_2(1374f, false, 10901i), vec4<bool>(true, true, true, false), 16564i), Struct_4(Struct_3(Struct_1(-1i, vec3<f32>(540f, 176f, 533f)), vec4<f32>(1094f, -717f, -1338f, 1016f), vec4<bool>(true, false, true, false)), Struct_2(-1217f, true, -1i), vec4<bool>(false, false, false, true), 6555i), Struct_4(Struct_3(Struct_1(2147483647i, vec3<f32>(785f, -1242f, -293f)), vec4<f32>(103f, -812f, 496f, -1000f), vec4<bool>(true, false, true, false)), Struct_2(-469f, false, i32(-2147483648)), vec4<bool>(true, true, false, false), -42500i), Struct_4(Struct_3(Struct_1(-1142i, vec3<f32>(332f, 1728f, -342f)), vec4<f32>(280f, -311f, -1469f, 1440f), vec4<bool>(true, true, false, false)), Struct_2(-199f, true, -25763i), vec4<bool>(true, true, true, false), 1i), Struct_4(Struct_3(Struct_1(2147483647i, vec3<f32>(-1000f, -474f, -1353f)), vec4<f32>(-977f, 598f, 843f, 1000f), vec4<bool>(true, true, true, true)), Struct_2(-856f, true, 4859i), vec4<bool>(true, false, false, false), 0i), Struct_4(Struct_3(Struct_1(-1i, vec3<f32>(-1461f, -723f, 1000f)), vec4<f32>(-1001f, 427f, 1540f, -365f), vec4<bool>(true, true, false, true)), Struct_2(1433f, false, 0i), vec4<bool>(true, false, true, true), -3088i), Struct_4(Struct_3(Struct_1(2147483647i, vec3<f32>(-315f, 1651f, -1000f)), vec4<f32>(1457f, -256f, -268f, -665f), vec4<bool>(true, false, true, false)), Struct_2(-1889f, false, 4790i), vec4<bool>(true, true, false, false), 45784i), Struct_4(Struct_3(Struct_1(i32(-2147483648), vec3<f32>(-535f, -1236f, 986f)), vec4<f32>(1000f, 345f, 499f, -897f), vec4<bool>(true, true, false, false)), Struct_2(-424f, true, -1i), vec4<bool>(false, true, true, true), 30063i), Struct_4(Struct_3(Struct_1(1i, vec3<f32>(782f, -1687f, -533f)), vec4<f32>(331f, -557f, 1000f, -239f), vec4<bool>(true, true, true, false)), Struct_2(165f, false, -15554i), vec4<bool>(true, true, false, false), -1i), Struct_4(Struct_3(Struct_1(-11213i, vec3<f32>(-1026f, 2076f, -263f)), vec4<f32>(436f, 1000f, -823f, -1844f), vec4<bool>(false, false, false, true)), Struct_2(1582f, true, -59961i), vec4<bool>(false, true, true, true), 1i), Struct_4(Struct_3(Struct_1(-7042i, vec3<f32>(519f, -634f, -165f)), vec4<f32>(-1000f, 540f, 2063f, 879f), vec4<bool>(false, false, true, true)), Struct_2(829f, false, -3713i), vec4<bool>(false, true, false, false), i32(-2147483648)), Struct_4(Struct_3(Struct_1(10703i, vec3<f32>(1000f, -413f, -1489f)), vec4<f32>(1312f, 1665f, -123f, 1299f), vec4<bool>(false, false, true, true)), Struct_2(-1580f, false, 1i), vec4<bool>(false, true, false, true), 38347i), Struct_4(Struct_3(Struct_1(-8736i, vec3<f32>(-208f, -561f, 1000f)), vec4<f32>(-383f, -1865f, 924f, 784f), vec4<bool>(true, true, true, false)), Struct_2(-203f, true, -1i), vec4<bool>(true, false, false, false), -1i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<f32>, arg_1: u32) -> bool {
    let var_0 = Struct_3(Struct_1(2147483647i, _wgslsmith_f_op_vec3_f32(min(global0.b, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(global0.b - arg_0.ywz), _wgslsmith_f_op_vec3_f32(-global0.b), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0 * arg_0) * vec4<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.b.x))), global0.b.x, _wgslsmith_f_op_f32(328f * _wgslsmith_f_op_f32(global0.b.x * 1008f)))), !(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true)))));
    global0 = var_0.a;
    let var_1 = select(vec4<bool>(true, any(!(!vec3<bool>(var_0.c.x, var_0.c.x, true))), var_0.c.x, false), !select(var_0.c, var_0.c, var_0.c.x), true | var_0.c.x);
    var var_2 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0.x, -200f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_0.xz), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, var_0.a.b.x))), min(global0.a, global0.a) == ~2147483647i)))));
    var var_3 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(reverseBits(u_input.a), u_input.a), 24u)];
    return all(vec3<bool>(var_1.x, true, var_0.c.x));
}

fn func_2() -> vec2<i32> {
    var var_0 = !select(!vec4<bool>(select(true, true, true), any(vec4<bool>(false, false, false, false)), true, true), !vec4<bool>(true, select(false, true, false), true, false), vec4<bool>(!any(vec2<bool>(false, false)), !any(vec4<bool>(false, false, true, false)), !func_3(vec4<f32>(global0.b.x, -675f, global0.b.x, 1221f), u_input.a), false));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x))) * _wgslsmith_f_op_f32(-global0.b.x)), true, max(firstTrailingBit(12858i), -30089i | global0.a));
    global1 = array<Struct_4, 24>();
    var var_2 = Struct_5(Struct_2(global0.b.x, reverseBits(reverseBits(u_input.a)) > (u_input.a | 0u), 20011i), Struct_1(41825i, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, var_1.a, global0.b.x))))), u_input.a, vec3<bool>(global0.b.x < _wgslsmith_f_op_f32(-382f + _wgslsmith_f_op_f32(ceil(-431f))), var_1.a != _wgslsmith_f_op_f32(round(var_1.a)), any(select(select(var_0.wy, vec2<bool>(true, var_1.b), true), vec2<bool>(var_1.b, var_0.x), var_0.zx))));
    let var_3 = var_2.b;
    return -(vec2<i32>(-1i) * -abs(vec2<i32>(2147483647i, 1i))) | (~_wgslsmith_mod_vec2_i32(abs(vec2<i32>(37968i, var_2.b.a)), -vec2<i32>(var_1.c, -1i)) << (vec2<u32>(_wgslsmith_div_u32(countOneBits(var_2.c), 4294967295u), 1u & abs(u_input.a)) % vec2<u32>(32u)));
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: vec2<i32>) -> Struct_2 {
    let var_0 = arg_0;
    var var_1 = -308f;
    global0 = Struct_1(-arg_0, global0.b);
    global0 = Struct_1(54886i, vec3<f32>(-210f, global0.b.x, global0.b.x));
    let var_2 = Struct_3(Struct_1(_wgslsmith_sub_i32(0i, i32(-1i) * -var_0), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-global0.b)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.x, global0.b.x, global0.b.x, global0.b.x) + vec4<f32>(-270f, global0.b.x, -1284f, -1133f)) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.b.x, global0.b.x, -2078f, -279f), vec4<f32>(global0.b.x, 809f, -1146f, global0.b.x)))))), !(!vec4<bool>(true, true, any(vec4<bool>(false, false, false, true)), true)));
    return Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-803f)))), false, _wgslsmith_mod_i32(-5221i, 2147483647i) & global0.a);
}

fn func_5(arg_0: vec3<f32>, arg_1: u32, arg_2: Struct_2, arg_3: vec2<f32>) -> vec3<bool> {
    let var_0 = Struct_4(Struct_3(Struct_1(-45637i, vec3<f32>(arg_3.x, arg_0.x, -1000f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.a, -319f, arg_0.x, arg_2.a), vec4<f32>(-1342f, global0.b.x, 210f, arg_3.x), false)), vec4<f32>(arg_3.x, arg_3.x, arg_2.a, -2292f))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-249f, 908f, 459f, arg_2.a) + vec4<f32>(arg_0.x, arg_0.x, arg_2.a, arg_3.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(232f, 739f, 216f, arg_3.x))))), !(!(!vec4<bool>(arg_2.b, true, arg_2.b, arg_2.b)))), arg_2, vec4<bool>(arg_2.b, arg_2.b, !(arg_2.b || all(vec3<bool>(true, false, false))), true | (func_4(global0.a, arg_2.c, vec2<i32>(45017i, arg_2.c)).b || (false & arg_2.b))), func_4(~2147483647i, _wgslsmith_clamp_i32(-abs(2147483647i), _wgslsmith_dot_vec2_i32(~vec2<i32>(global0.a, global0.a), _wgslsmith_mult_vec2_i32(vec2<i32>(global0.a, -1i), vec2<i32>(2147483647i, -1i))), arg_2.c | global0.a), ~firstTrailingBit(min(vec2<i32>(arg_2.c, arg_2.c), vec2<i32>(global0.a, arg_2.c)))).c);
    let var_1 = _wgslsmith_mod_vec3_i32(-(vec3<i32>(-1i) * -(vec3<i32>(global0.a, global0.a, var_0.d) << (vec3<u32>(u_input.b, 71486u, 23673u) % vec3<u32>(32u)))), vec3<i32>(0i, global0.a, -6492i));
    global1 = array<Struct_4, 24>();
    var var_2 = global0.b.x;
    let var_3 = Struct_3(Struct_1(var_1.x, vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1070f - arg_0.x))), _wgslsmith_f_op_f32(arg_3.x * arg_3.x), arg_2.a)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(var_0.a.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.a.a.b.x, 1000f, 1012f, arg_3.x), vec4<f32>(1660f, 842f, 1145f, var_0.b.a)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(329f, -526f, global0.b.x, 2183f), vec4<f32>(1028f, 223f, arg_3.x, 1000f)))), any(var_0.c.zx))), var_0.a.b)), var_0.c);
    return vec3<bool>(any(vec2<bool>(true, arg_2.b)) || true, all(vec4<bool>(func_3(var_3.b, u_input.a), var_3.c.x, arg_2.b, var_3.c.x)), any(vec3<bool>(false, var_0.a.c.x, !all(var_3.c.wxz))));
}

fn func_1() -> vec3<f32> {
    var var_0 = vec3<bool>(true, false && !all(vec3<bool>(true, false, true)), true);
    var_0 = func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.x, global0.b.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.b.x * global0.b.x))))), ~1u << (0u % 32u), func_4(-6113i | -global0.a, ~global0.a, ~func_2()), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-global0.b.zy))) + vec2<f32>(global0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1095f)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-global0.b.yy);
    global1 = array<Struct_4, 24>();
    var_0 = func_5(global0.b, 0u, func_4(global0.a, _wgslsmith_mult_i32(global0.a, -1i), ~_wgslsmith_sub_vec2_i32(~vec2<i32>(1i, 0i), _wgslsmith_div_vec2_i32(vec2<i32>(1i, global0.a), vec2<i32>(-2147483647i, -11726i)))), vec2<f32>(var_1.x, _wgslsmith_f_op_f32(-global0.b.x)));
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-1357f, var_1.x), 478f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1225f + global0.b.x) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), vec3<f32>(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(abs(var_1.x)), global0.b.x), !vec3<bool>(false, !var_0.x || false, func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.x, 554f, 152f, global0.b.x) * vec4<f32>(1070f, 1764f, -454f, -346f)), select(u_input.b, u_input.a, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(-min(global0.a ^ global0.a, _wgslsmith_div_i32(global0.a, -82776i)) & global0.a);
    global1 = array<Struct_4, 24>();
    global0 = Struct_1(-2147483647i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.b.x, -1000f, -122f))) * global0.b)));
    global1 = array<Struct_4, 24>();
    global0 = Struct_1(-16666i, _wgslsmith_div_vec3_f32(global0.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1()))));
    global0 = Struct_1(-global0.a, global0.b);
    let var_1 = _wgslsmith_f_op_f32(-288f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -466f))))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(_wgslsmith_add_u32(u_input.b, u_input.a), ~u_input.a, ~0u, _wgslsmith_add_u32(u_input.a, 4294967295u)) | max(vec4<u32>(_wgslsmith_sub_u32(4294967295u, 22106u), u_input.b, countOneBits(u_input.b), ~17033u), vec4<u32>(0u, min(u_input.b, u_input.b), u_input.a << (1u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(40172u, 0u, 50412u), vec3<u32>(u_input.b, 24580u, 18401u)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_1()).x), 418f)))), u_input.b);
}

