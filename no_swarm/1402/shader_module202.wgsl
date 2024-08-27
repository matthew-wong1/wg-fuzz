struct Struct_1 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<f32>,
    d: i32,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(true, Struct_1(0u, vec3<u32>(4294967295u, 53370u, 99993u)), vec4<f32>(218f, 1426f, 568f, 224f), 2147483647i, 19544u), Struct_2(true, Struct_1(9351u, vec3<u32>(0u, 12470u, 56409u)), vec4<f32>(1595f, -680f, 224f, 1567f), 1i, 0u), Struct_2(true, Struct_1(84200u, vec3<u32>(11728u, 1u, 57011u)), vec4<f32>(1140f, 2015f, -2308f, -2085f), 2146i, 1u), Struct_2(true, Struct_1(13412u, vec3<u32>(5603u, 1u, 34754u)), vec4<f32>(-1000f, -486f, -2265f, 1337f), 3006i, 4294967295u), Struct_2(false, Struct_1(0u, vec3<u32>(814u, 1u, 4198u)), vec4<f32>(-751f, -134f, -1453f, -1005f), 2147483647i, 38346u), Struct_2(true, Struct_1(1u, vec3<u32>(4294967295u, 110191u, 42449u)), vec4<f32>(1718f, 339f, 469f, -225f), i32(-2147483648), 22048u), Struct_2(true, Struct_1(4294967295u, vec3<u32>(0u, 1u, 17627u)), vec4<f32>(-899f, -1392f, 694f, -573f), -42110i, 64776u), Struct_2(false, Struct_1(6901u, vec3<u32>(0u, 4294967295u, 4294967295u)), vec4<f32>(1298f, 1321f, 2121f, 658f), -1i, 0u), Struct_2(true, Struct_1(5126u, vec3<u32>(0u, 2784u, 4294967295u)), vec4<f32>(901f, -333f, -693f, -1766f), -17794i, 0u), Struct_2(true, Struct_1(4294967295u, vec3<u32>(4294967295u, 4294967295u, 52133u)), vec4<f32>(-840f, 1674f, -1172f, -2296f), 2147483647i, 1u), Struct_2(false, Struct_1(27040u, vec3<u32>(0u, 1u, 56012u)), vec4<f32>(-1376f, 1000f, -462f, 844f), -1i, 53551u), Struct_2(false, Struct_1(80651u, vec3<u32>(4294967295u, 0u, 34354u)), vec4<f32>(1231f, -623f, 158f, -1000f), -1i, 5878u), Struct_2(true, Struct_1(4294967295u, vec3<u32>(1u, 0u, 89229u)), vec4<f32>(1000f, 329f, -207f, -679f), 1i, 80121u), Struct_2(false, Struct_1(1u, vec3<u32>(14527u, 1u, 48641u)), vec4<f32>(-353f, -1000f, 569f, -904f), -25038i, 66730u), Struct_2(false, Struct_1(9196u, vec3<u32>(4294967295u, 1u, 78032u)), vec4<f32>(1005f, -832f, 948f, 459f), -26235i, 45592u), Struct_2(false, Struct_1(4294967295u, vec3<u32>(56058u, 0u, 4294967295u)), vec4<f32>(-689f, 815f, 1002f, 1000f), -13292i, 4294967295u), Struct_2(true, Struct_1(52490u, vec3<u32>(73105u, 1u, 184u)), vec4<f32>(-1552f, 950f, -1412f, 350f), 4606i, 40624u), Struct_2(true, Struct_1(33377u, vec3<u32>(4294967295u, 30619u, 0u)), vec4<f32>(-1000f, -1306f, 886f, 905f), 59220i, 26899u), Struct_2(true, Struct_1(15640u, vec3<u32>(105027u, 43986u, 26167u)), vec4<f32>(-1000f, -410f, 2238f, 104f), 28927i, 73562u), Struct_2(false, Struct_1(51523u, vec3<u32>(4294967295u, 1u, 1u)), vec4<f32>(626f, -496f, 1663f, 379f), 41397i, 1u), Struct_2(false, Struct_1(95848u, vec3<u32>(1u, 4294967295u, 1u)), vec4<f32>(-1219f, 540f, 315f, 942f), 0i, 4294967295u), Struct_2(true, Struct_1(12535u, vec3<u32>(1u, 4294967295u, 40239u)), vec4<f32>(1000f, 522f, 1055f, 1527f), 15215i, 1u), Struct_2(true, Struct_1(4294967295u, vec3<u32>(0u, 78554u, 1676u)), vec4<f32>(428f, -269f, 1156f, 368f), 2147483647i, 85830u), Struct_2(true, Struct_1(4294967295u, vec3<u32>(1u, 37117u, 7185u)), vec4<f32>(-120f, 868f, 885f, 262f), -1i, 1u), Struct_2(true, Struct_1(2662u, vec3<u32>(4294967295u, 4294967295u, 37791u)), vec4<f32>(-731f, -689f, 1737f, -1836f), 2147483647i, 43224u), Struct_2(true, Struct_1(42375u, vec3<u32>(1u, 0u, 4294967295u)), vec4<f32>(-239f, -505f, -897f, 579f), 1i, 4294967295u), Struct_2(true, Struct_1(0u, vec3<u32>(0u, 1u, 0u)), vec4<f32>(-1743f, 408f, 582f, 1000f), i32(-2147483648), 4294967295u), Struct_2(true, Struct_1(28109u, vec3<u32>(56914u, 39451u, 4294967295u)), vec4<f32>(1231f, -388f, -322f, 1177f), -1i, 1u), Struct_2(false, Struct_1(10958u, vec3<u32>(11732u, 27749u, 1u)), vec4<f32>(-2836f, -943f, -395f, -1095f), 34395i, 25110u), Struct_2(false, Struct_1(0u, vec3<u32>(4294967295u, 31222u, 17178u)), vec4<f32>(293f, 2238f, 1911f, -1176f), 2147483647i, 4294967295u), Struct_2(true, Struct_1(0u, vec3<u32>(0u, 0u, 35727u)), vec4<f32>(-1373f, 737f, 1000f, -956f), 31645i, 0u), Struct_2(true, Struct_1(0u, vec3<u32>(94057u, 5219u, 0u)), vec4<f32>(662f, -1131f, -1580f, 1864f), -4516i, 48429u));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1) -> vec2<i32> {
    let var_0 = arg_1;
    var var_1 = Struct_3(arg_0.a, arg_1, Struct_1(firstLeadingBit(1u), abs(~vec3<u32>(arg_1.a, arg_0.b.b.x, u_input.b))), !all(vec4<bool>(!arg_0.a.a, -1298f != arg_0.a.c.x, !arg_0.d, !arg_0.a.a)), Struct_1(_wgslsmith_sub_u32(var_0.a, 4294967295u) | _wgslsmith_dot_vec2_u32(var_0.b.yy, var_0.b.yy), vec3<u32>(17627u, 1772u, 4229u)));
    var_1 = arg_0;
    var var_2 = vec3<bool>(arg_0.a.a, ~(~arg_0.b.a) > select(_wgslsmith_add_u32(arg_1.a, arg_1.a), firstTrailingBit(u_input.b), false), false);
    var_2 = select(select(!(!select(vec3<bool>(var_1.d, var_1.a.a, false), vec3<bool>(arg_0.d, false, true), vec3<bool>(var_2.x, true, false))), !(!vec3<bool>(var_2.x, false, false)), !(!all(vec3<bool>(arg_0.d, var_2.x, var_2.x)))), vec3<bool>(false, var_1.d, true), countOneBits(-2147483647i) < _wgslsmith_mult_i32(abs(21003i), -_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.a.d, u_input.a.x), vec2<i32>(43826i, var_1.a.d))));
    return max(vec2<i32>(0i, u_input.a.x), ~_wgslsmith_sub_vec2_i32(u_input.a.zy, ~vec2<i32>(-12242i, u_input.a.x)));
}

fn func_4(arg_0: vec2<i32>, arg_1: bool, arg_2: u32, arg_3: Struct_3) -> f32 {
    global0 = array<Struct_2, 32>();
    global0 = array<Struct_2, 32>();
    var var_0 = arg_3;
    let var_1 = Struct_3(global0[_wgslsmith_index_u32(33805u, 32u)], Struct_1(_wgslsmith_add_u32(countOneBits(~0u), u_input.b), _wgslsmith_div_vec3_u32(~(vec3<u32>(u_input.b, 4294967295u, 136u) | vec3<u32>(14652u, 0u, arg_3.c.a)), arg_3.e.b)), arg_3.e, !all(select(vec2<bool>(true, true), select(vec2<bool>(var_0.d, true), vec2<bool>(false, true), arg_3.a.a), vec2<bool>(var_0.a.a, true))), arg_3.a.b);
    var var_2 = vec4<i32>(_wgslsmith_div_i32(-2147483647i, arg_0.x), -2147483647i, -8600i, ~var_0.a.d);
    return _wgslsmith_f_op_f32(-629f - _wgslsmith_f_op_f32(arg_3.a.c.x + arg_3.a.c.x));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_3(Struct_2(true, Struct_1(2278u, countOneBits(~vec3<u32>(u_input.b, 28652u, 1u))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -837f) - -930f), -865f, _wgslsmith_f_op_f32(f32(-1f) * -869f), _wgslsmith_f_op_f32(func_4(func_3(Struct_3(Struct_2(false, Struct_1(33365u, vec3<u32>(u_input.b, u_input.b, 1u)), vec4<f32>(1865f, -372f, 1137f, -483f), 2147483647i, u_input.b), Struct_1(u_input.b, vec3<u32>(u_input.b, 1u, u_input.b)), Struct_1(u_input.b, vec3<u32>(4294967295u, u_input.b, 24875u)), true, Struct_1(u_input.b, vec3<u32>(u_input.b, u_input.b, 25814u))), Struct_1(u_input.b, vec3<u32>(u_input.b, u_input.b, u_input.b))), true, _wgslsmith_clamp_u32(u_input.b, u_input.b, 0u), Struct_3(Struct_2(true, Struct_1(u_input.b, vec3<u32>(93809u, u_input.b, u_input.b)), vec4<f32>(1280f, 1006f, 129f, -407f), u_input.a.x, u_input.b), Struct_1(u_input.b, vec3<u32>(u_input.b, 13293u, 1u)), Struct_1(42587u, vec3<u32>(u_input.b, u_input.b, u_input.b)), false, Struct_1(u_input.b, vec3<u32>(u_input.b, u_input.b, u_input.b)))))), 38396i, ~(~(u_input.b << (u_input.b % 32u)))), Struct_1(u_input.b, select(vec3<u32>(4294967295u, 1u, ~u_input.b), ~(~vec3<u32>(0u, u_input.b, 33166u)), vec3<bool>(true, all(vec3<bool>(true, false, false)), all(vec4<bool>(true, true, false, false))))), Struct_1(~4294967295u, ~(abs(vec3<u32>(u_input.b, u_input.b, u_input.b)) >> ((vec3<u32>(46350u, 1u, u_input.b) ^ vec3<u32>(u_input.b, u_input.b, u_input.b)) % vec3<u32>(32u)))), true, Struct_1(u_input.b, _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(u_input.b, 1u, 495u)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, u_input.b, 46000u), vec3<u32>(0u, 77780u, u_input.b))), select(vec3<u32>(u_input.b, 1u, u_input.b), vec3<u32>(u_input.b, u_input.b, u_input.b), true) ^ ~vec3<u32>(60553u, 1u, u_input.b))));
    let var_1 = var_0.a.d;
    var_0 = Struct_3(global0[_wgslsmith_index_u32(reverseBits(~(~var_0.b.b.x)), 32u)], Struct_1(~var_0.a.e << (~1u % 32u), var_0.a.b.b), Struct_1(u_input.b, reverseBits(_wgslsmith_mod_vec3_u32(min(vec3<u32>(var_0.a.e, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, var_0.c.b.x)), vec3<u32>(81407u, u_input.b, u_input.b)))), false, Struct_1(u_input.b, vec3<u32>(7018u, ~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 4294967295u) >> (var_0.a.b.b.xx % vec2<u32>(32u)), ~var_0.e.b.yy))));
    var var_2 = -_wgslsmith_sub_i32(var_0.a.d, min(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.d, -1i, var_0.a.d), max(u_input.a, vec3<i32>(var_0.a.d, 2147483647i, u_input.a.x))), u_input.a.x ^ ~0i));
    var_0 = Struct_3(global0[_wgslsmith_index_u32(var_0.b.b.x, 32u)], Struct_1(_wgslsmith_dot_vec3_u32(var_0.b.b, vec3<u32>(max(8644u, u_input.b), _wgslsmith_add_u32(24215u, var_0.a.b.a), firstTrailingBit(1u))), ~var_0.a.b.b), Struct_1(~(~_wgslsmith_mod_u32(u_input.b, 13128u)), ~(~vec3<u32>(82049u, var_0.e.a, u_input.b))), true, var_0.b);
    return Struct_2(true, Struct_1(4294967295u >> (var_0.e.b.x % 32u), _wgslsmith_mult_vec3_u32(select(vec3<u32>(6103u, 4294967295u, u_input.b), var_0.c.b, !var_0.a.a), ~var_0.e.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-var_0.a.c))) + _wgslsmith_f_op_vec4_f32(-var_0.a.c)), u_input.a.x, 36543u);
}

fn func_5(arg_0: i32, arg_1: Struct_3, arg_2: bool, arg_3: bool) -> Struct_1 {
    let var_0 = select(abs(~abs(firstLeadingBit(vec4<u32>(49009u, 29846u, 30204u, 1u)))), reverseBits(firstTrailingBit(~(~vec4<u32>(4294967295u, 1u, arg_1.c.b.x, 0u)))), arg_3);
    let var_1 = !vec2<bool>(arg_3, true);
    var var_2 = ~_wgslsmith_clamp_vec2_u32(~(var_0.yw >> (firstLeadingBit(arg_1.e.b.zy) % vec2<u32>(32u))), vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(55262u, 89861u), countOneBits(vec2<u32>(var_0.x, u_input.b))), ~abs(var_0.x)), firstLeadingBit(vec2<u32>(1u, 1u)));
    let var_3 = vec3<bool>(!func_2().a, true, all(select(select(vec4<bool>(false, true, var_1.x, var_1.x), select(vec4<bool>(var_1.x, false, arg_2, arg_2), vec4<bool>(true, arg_2, arg_2, true), true), arg_1.a.a), !vec4<bool>(true, false, arg_2, true), true)));
    var_2 = _wgslsmith_add_vec2_u32(abs(var_0.wx), vec2<u32>(_wgslsmith_mult_u32(65418u, _wgslsmith_add_u32(func_2().e, 1u)), countOneBits(~(~1u))));
    return Struct_1(_wgslsmith_mod_u32(~var_0.x >> (_wgslsmith_mod_u32(~var_2.x, var_2.x) % 32u), 0u), vec3<u32>(~_wgslsmith_sub_u32(~u_input.b, reverseBits(u_input.b)), abs(arg_1.e.a), _wgslsmith_mult_u32(_wgslsmith_div_u32(arg_1.b.b.x << (40822u % 32u), 717u), select(var_2.x, ~4294967295u, true))));
}

fn func_6(arg_0: bool, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: f32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_2 * vec4<f32>(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(-465f + arg_2.x), 830f, _wgslsmith_f_op_f32(-arg_2.x))) + arg_2));
    global0 = array<Struct_2, 32>();
    let var_1 = arg_2;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-1367f, _wgslsmith_f_op_f32(step(var_0.x, var_1.x)))))))));
    var var_3 = 1i;
    return _wgslsmith_clamp_i32(_wgslsmith_add_i32(1i, u_input.a.x) | max(1i, firstLeadingBit(~u_input.a.x)), _wgslsmith_mod_i32(u_input.a.x, abs(abs(0i))), ~u_input.a.x);
}

fn func_1() -> Struct_1 {
    let var_0 = vec3<i32>(firstTrailingBit(~(-35467i)), func_6(true, func_5(reverseBits(_wgslsmith_mod_i32(1i, 2147483647i)), Struct_3(func_2(), func_2().b, func_2().b, select(true, true, false), func_2().b), any(vec2<bool>(true, true)), true), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-843f, -1836f, -813f, -176f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -790f) * 582f)), u_input.a.x);
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -178f))))), _wgslsmith_f_op_f32(func_2().c.x * -1555f));
    return func_2().b;
}

fn func_7(arg_0: Struct_3, arg_1: bool, arg_2: Struct_2, arg_3: u32) -> u32 {
    global0 = array<Struct_2, 32>();
    let var_0 = _wgslsmith_f_op_vec2_f32(arg_0.a.c.wz * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_0.a.c.x * arg_0.a.c.x), _wgslsmith_div_f32(arg_0.a.c.x, -529f))))));
    global0 = array<Struct_2, 32>();
    let var_1 = arg_0;
    global0 = array<Struct_2, 32>();
    return _wgslsmith_dot_vec3_u32(func_2().b.b, ~_wgslsmith_add_vec3_u32(vec3<u32>(68743u, 46429u & arg_0.a.e, max(var_1.c.b.x, u_input.b)), ~(var_1.e.b >> (var_1.a.b.b % vec3<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(vec3<u32>(u_input.b, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, u_input.b, 46064u), vec3<u32>(0u, u_input.b, 4294967295u) ^ vec3<u32>(u_input.b, u_input.b, 35865u)), u_input.b >> (~u_input.b % 32u)), func_7(Struct_3(global0[_wgslsmith_index_u32(~4294967295u, 32u)], func_1(), func_1(), u_input.a.x == -22647i, func_1()), true, Struct_2(true, func_1(), _wgslsmith_f_op_vec4_f32(vec4<f32>(643f, -231f, -282f, -245f) - vec4<f32>(-120f, 802f, 783f, 1378f)), 1i, 0u), _wgslsmith_sub_u32(0u, u_input.b))));
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(179f, -1874f)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-496f, -143f))))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-1184f, _wgslsmith_f_op_f32(2963f - 1777f)), _wgslsmith_f_op_f32(-246f + _wgslsmith_f_op_f32(f32(-1f) * -897f)))));
    var_0 = vec3<u32>(_wgslsmith_mod_u32(1u, var_0.x), var_0.x, ~(49567u ^ u_input.b)) | ~min(vec3<u32>(var_0.x, ~var_0.x, ~2304u), ~firstLeadingBit(vec3<u32>(83604u, 0u, 0u)));
    global0 = array<Struct_2, 32>();
    var_0 = ~_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.b, u_input.b, u_input.b), select(vec3<u32>(var_0.x, 1859u, 1u), vec3<u32>(0u, 3520u, u_input.b), vec3<bool>(true, true, true)), func_2().b.b), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, var_0.x) & vec2<u32>(var_0.x, 0u), vec2<u32>(1u, var_0.x)), func_2().e, u_input.b));
    var var_2 = vec4<u32>(4294967295u, ~(~2918u << (var_0.x % 32u)) ^ ~18135u, 81627u, ~func_1().a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_u32(var_2.yzy, var_2.yzz), func_6(true, Struct_1(~0u, vec3<u32>(49731u, var_0.x, ~var_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -712f, _wgslsmith_f_op_f32(834f + var_1.x), _wgslsmith_f_op_f32(round(var_1.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -668f, -256f, var_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.x)))), firstTrailingBit(u_input.b));
}

