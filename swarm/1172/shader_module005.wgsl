struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec2<i32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: i32,
    d: vec4<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_2,
    d: vec4<i32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<f32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 10> = array<Struct_3, 10>(Struct_3(vec3<bool>(true, true, false), Struct_1(vec2<i32>(-51561i, -1i), vec3<f32>(-1212f, -313f, 713f), vec2<i32>(i32(-2147483648), -12890i), vec3<f32>(391f, 161f, 511f)), Struct_2(-1245f, false, -1i, vec4<bool>(true, false, true, true)), vec4<i32>(i32(-2147483648), 34624i, 1770i, 0i), 31411u), Struct_3(vec3<bool>(false, true, true), Struct_1(vec2<i32>(2147483647i, 4139i), vec3<f32>(815f, 311f, -779f), vec2<i32>(24979i, 41487i), vec3<f32>(673f, -497f, 1817f)), Struct_2(771f, false, -60115i, vec4<bool>(true, true, false, true)), vec4<i32>(0i, 16691i, 31081i, 2147483647i), 1u), Struct_3(vec3<bool>(true, true, true), Struct_1(vec2<i32>(-1298i, 1i), vec3<f32>(1723f, 1223f, 575f), vec2<i32>(i32(-2147483648), -19670i), vec3<f32>(-1501f, -242f, -2021f)), Struct_2(-332f, true, 2147483647i, vec4<bool>(false, true, true, false)), vec4<i32>(-10934i, -16400i, 0i, 2147483647i), 11639u), Struct_3(vec3<bool>(true, false, false), Struct_1(vec2<i32>(-1i, i32(-2147483648)), vec3<f32>(333f, -1151f, -1812f), vec2<i32>(22212i, 1i), vec3<f32>(-618f, 544f, 729f)), Struct_2(-468f, true, -18142i, vec4<bool>(true, false, true, false)), vec4<i32>(35914i, 2147483647i, 68687i, 38571i), 1009u), Struct_3(vec3<bool>(false, true, true), Struct_1(vec2<i32>(-1i, 1i), vec3<f32>(1431f, 669f, 175f), vec2<i32>(2147483647i, 2743i), vec3<f32>(-1000f, -454f, -1966f)), Struct_2(1633f, false, 1i, vec4<bool>(true, true, false, true)), vec4<i32>(2147483647i, -1i, 14031i, 2597i), 0u), Struct_3(vec3<bool>(false, true, true), Struct_1(vec2<i32>(-50589i, -3973i), vec3<f32>(-238f, -446f, 139f), vec2<i32>(18215i, 32065i), vec3<f32>(-127f, -431f, -133f)), Struct_2(-102f, true, i32(-2147483648), vec4<bool>(true, false, true, false)), vec4<i32>(-1i, -9598i, 1i, -45359i), 0u), Struct_3(vec3<bool>(true, true, false), Struct_1(vec2<i32>(1i, -12555i), vec3<f32>(657f, 170f, -852f), vec2<i32>(-1i, 13896i), vec3<f32>(-2529f, 264f, 912f)), Struct_2(-901f, false, 17222i, vec4<bool>(true, true, true, true)), vec4<i32>(-2797i, -11152i, 1i, -69014i), 45422u), Struct_3(vec3<bool>(true, false, true), Struct_1(vec2<i32>(-1i, 24988i), vec3<f32>(-454f, 300f, -793f), vec2<i32>(2147483647i, -1i), vec3<f32>(1032f, 371f, 152f)), Struct_2(480f, true, 18010i, vec4<bool>(true, false, false, true)), vec4<i32>(2147483647i, -56202i, -38593i, -1i), 1u), Struct_3(vec3<bool>(true, true, true), Struct_1(vec2<i32>(-48712i, i32(-2147483648)), vec3<f32>(677f, 113f, -1266f), vec2<i32>(i32(-2147483648), 18493i), vec3<f32>(900f, 457f, 1000f)), Struct_2(-1809f, false, 2147483647i, vec4<bool>(false, true, true, true)), vec4<i32>(-55058i, -15110i, 1i, -23392i), 10946u), Struct_3(vec3<bool>(true, true, false), Struct_1(vec2<i32>(-1i, -1i), vec3<f32>(786f, 369f, -650f), vec2<i32>(22410i, -15746i), vec3<f32>(-585f, 326f, -1335f)), Struct_2(-585f, true, 0i, vec4<bool>(true, false, true, true)), vec4<i32>(1i, 29023i, i32(-2147483648), 26591i), 67016u));

var<private> global1: Struct_1;

var<private> global2: array<vec3<f32>, 32> = array<vec3<f32>, 32>(vec3<f32>(-692f, -183f, -613f), vec3<f32>(1000f, -842f, 578f), vec3<f32>(-893f, 161f, -230f), vec3<f32>(-709f, 1545f, -1201f), vec3<f32>(1657f, 1375f, 1018f), vec3<f32>(-425f, 219f, 1839f), vec3<f32>(-1331f, -1571f, 773f), vec3<f32>(590f, 561f, 957f), vec3<f32>(618f, 322f, -1316f), vec3<f32>(-810f, 485f, -1768f), vec3<f32>(512f, -709f, -2012f), vec3<f32>(1507f, 423f, -324f), vec3<f32>(-633f, 311f, -577f), vec3<f32>(599f, 597f, -1218f), vec3<f32>(1028f, -546f, 352f), vec3<f32>(-848f, 1558f, 1311f), vec3<f32>(2264f, 203f, -377f), vec3<f32>(339f, 1000f, 451f), vec3<f32>(-799f, 1089f, 240f), vec3<f32>(483f, -2037f, 1854f), vec3<f32>(-1127f, -101f, -341f), vec3<f32>(-1136f, -2915f, 335f), vec3<f32>(449f, -2162f, 1360f), vec3<f32>(453f, -1000f, 177f), vec3<f32>(-748f, -2041f, -896f), vec3<f32>(-300f, 330f, -145f), vec3<f32>(-1657f, 756f, 546f), vec3<f32>(-1000f, 2438f, 697f), vec3<f32>(-1112f, -1309f, -434f), vec3<f32>(-1502f, 1896f, 1049f), vec3<f32>(-1803f, -2691f, 674f), vec3<f32>(164f, -434f, -524f));

var<private> global3: bool;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<i32>) -> vec3<f32> {
    global2 = array<vec3<f32>, 32>();
    let var_0 = select(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), true, false);
    let var_1 = u_input.e;
    global1 = Struct_1(global1.c, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.d - _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.d.x, global1.b.x, global1.b.x) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b.x, -208f, 2653f) - global2[_wgslsmith_index_u32(4294967295u, 32u)]))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(global2[_wgslsmith_index_u32(0u, 32u)], _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.d.x, -1855f, global1.d.x))), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, 55161u), vec2<u32>(u_input.c, 41063u))), 32u)])), vec2<i32>(i32(-1i) * -(arg_0.x | 0i), -15365i), global2[_wgslsmith_index_u32(67410u | var_1.x, 32u)]);
    let var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1717f, 267f, 627f, 993f) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.b.x, global1.b.x, global1.d.x, 291f), vec4<f32>(-1242f, global1.d.x, -700f, global1.d.x)))))))));
    return vec3<f32>(_wgslsmith_div_f32(global1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - _wgslsmith_f_op_f32(-435f + _wgslsmith_f_op_f32(sign(1087f))))), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.x, _wgslsmith_f_op_f32(min(global1.d.x, -414f)), true))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -2209f), var_2.x)))));
}

fn func_2() -> Struct_1 {
    global1 = Struct_1(_wgslsmith_sub_vec2_i32(reverseBits(vec2<i32>(u_input.a, u_input.d)) & firstTrailingBit(global1.a), ~vec2<i32>(u_input.b, u_input.b)) | ~global1.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(global1.a, ~vec3<i32>(global1.c.x, 0i, -6845i))))), ~vec2<i32>(~(-1i), u_input.a), _wgslsmith_f_op_vec3_f32(select(global1.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(global1.d))), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false)))));
    var var_0 = 0u;
    let var_1 = ~u_input.e;
    var var_2 = false;
    var var_3 = u_input.a;
    return Struct_1(_wgslsmith_div_vec2_i32(global1.a, _wgslsmith_div_vec2_i32(vec2<i32>(-1i) * -global1.c, _wgslsmith_sub_vec2_i32(global1.c, vec2<i32>(global1.c.x, u_input.d)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(global1.b.x, 295f, -961f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.d.x, global1.b.x, global1.b.x))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(128f, 1445f, _wgslsmith_f_op_f32(-706f * global1.b.x)))), -global1.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global1.b, global1.b, vec3<bool>(true, false, false)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global1.d, vec3<f32>(-401f, global1.b.x, global1.d.x))))));
}

fn func_1(arg_0: vec2<i32>, arg_1: i32) -> bool {
    global0 = array<Struct_3, 10>();
    let var_0 = _wgslsmith_mod_vec2_u32(reverseBits(u_input.e.xz), u_input.e.zz >> (u_input.e.zy % vec2<u32>(32u)));
    global1 = func_2();
    let var_1 = false;
    global1 = Struct_1(countOneBits(-vec2<i32>(-1i, _wgslsmith_sub_i32(global1.a.x, arg_0.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -537f), _wgslsmith_f_op_f32(-global1.b.x), 1f) - global1.d) * global1.d), func_2().a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(global1.d, vec3<f32>(global1.d.x, -784f, 259f))))));
    return false;
}

fn func_4(arg_0: Struct_2) -> StorageBuffer {
    let var_0 = _wgslsmith_add_vec3_u32(min(firstLeadingBit(vec3<u32>(362u, ~u_input.c, ~u_input.c)), vec3<u32>(1u, _wgslsmith_clamp_u32(_wgslsmith_div_u32(25520u, 39757u), 66018u << (0u % 32u), select(u_input.c, u_input.e.x, arg_0.d.x)), u_input.e.x ^ firstTrailingBit(u_input.c))), u_input.e.xyz);
    var var_1 = func_2();
    global0 = array<Struct_3, 10>();
    var var_2 = global1.d;
    let var_3 = Struct_1(-global1.a, vec3<f32>(-1275f, _wgslsmith_f_op_f32(-func_2().b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)))), abs(vec2<i32>(var_1.c.x, var_1.c.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(365f, var_2.x, _wgslsmith_f_op_f32(arg_0.a * -2064f))));
    return StorageBuffer(1554f, _wgslsmith_mult_u32(select(firstTrailingBit(~0u), u_input.e.x, !(219f == var_1.b.x)), u_input.c), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-global1.d.x), _wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(trunc(var_1.b.x))))))), _wgslsmith_div_i32(~(~_wgslsmith_add_i32(27304i, global1.c.x)), -13569i), arg_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(Struct_2(global1.b.x, false, ~abs(~global1.a.x), !vec4<bool>(false, true, func_1(global1.a, -2147483647i), true)));
}

