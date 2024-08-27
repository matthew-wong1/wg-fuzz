struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec3<f32>(1045f, -669f, 780f), 472f, 0i));

var<private> global2: vec3<f32>;

var<private> global3: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(Struct_1(vec3<f32>(462f, 390f, -1135f), 1000f, 0i)), Struct_2(Struct_1(vec3<f32>(-726f, 985f, -893f), -239f, 42943i)), Struct_2(Struct_1(vec3<f32>(213f, -832f, -526f), 1302f, -60968i)), Struct_2(Struct_1(vec3<f32>(585f, 226f, 1213f), 190f, 0i)), Struct_2(Struct_1(vec3<f32>(-628f, 131f, 526f), 1405f, 29233i)), Struct_2(Struct_1(vec3<f32>(522f, 199f, 290f), 518f, -21045i)), Struct_2(Struct_1(vec3<f32>(402f, -434f, 216f), -791f, i32(-2147483648))), Struct_2(Struct_1(vec3<f32>(1122f, 636f, 526f), -134f, 22670i)), Struct_2(Struct_1(vec3<f32>(1000f, 993f, -497f), 2540f, 32850i)), Struct_2(Struct_1(vec3<f32>(601f, 1358f, 1000f), 662f, 0i)), Struct_2(Struct_1(vec3<f32>(-380f, -1019f, -484f), 1102f, 0i)), Struct_2(Struct_1(vec3<f32>(637f, 1251f, 2524f), 543f, -13827i)), Struct_2(Struct_1(vec3<f32>(177f, -1000f, -1069f), 238f, 2147483647i)), Struct_2(Struct_1(vec3<f32>(283f, 1047f, 1000f), -613f, -22598i)), Struct_2(Struct_1(vec3<f32>(2716f, 179f, -1914f), 581f, -24245i)), Struct_2(Struct_1(vec3<f32>(-141f, 1394f, 321f), -1185f, 2147483647i)), Struct_2(Struct_1(vec3<f32>(994f, 958f, 730f), -1021f, 0i)), Struct_2(Struct_1(vec3<f32>(582f, -306f, 1323f), -1871f, 1i)), Struct_2(Struct_1(vec3<f32>(211f, -1914f, 635f), -1227f, 2147483647i)), Struct_2(Struct_1(vec3<f32>(-294f, -401f, 1175f), 802f, -60391i)), Struct_2(Struct_1(vec3<f32>(2224f, 594f, -1470f), 1160f, -1i)), Struct_2(Struct_1(vec3<f32>(-1185f, 636f, 645f), -917f, -1i)), Struct_2(Struct_1(vec3<f32>(594f, 1093f, 1000f), 1226f, -1938i)), Struct_2(Struct_1(vec3<f32>(-255f, 181f, 632f), 470f, 80802i)), Struct_2(Struct_1(vec3<f32>(-1000f, -882f, 1125f), 519f, 1i)), Struct_2(Struct_1(vec3<f32>(-122f, -1996f, -468f), -704f, 29561i)), Struct_2(Struct_1(vec3<f32>(1000f, -636f, 1228f), -202f, 1i)), Struct_2(Struct_1(vec3<f32>(1187f, 1969f, -1360f), 724f, -1i)), Struct_2(Struct_1(vec3<f32>(2038f, -765f, -1000f), -735f, -29700i)), Struct_2(Struct_1(vec3<f32>(-193f, 201f, 1203f), -504f, 1i)), Struct_2(Struct_1(vec3<f32>(712f, 150f, 1545f), -1235f, i32(-2147483648))), Struct_2(Struct_1(vec3<f32>(814f, -272f, -1000f), -127f, i32(-2147483648))));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = firstLeadingBit(_wgslsmith_mult_vec3_i32(firstLeadingBit(firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, 1i, -26070i), vec3<i32>(-10367i, u_input.a.x, -26773i)))), select(firstLeadingBit(vec3<i32>(global1.a.c, global0.c, global0.c)) & reverseBits(vec3<i32>(1i, global1.a.c, arg_0.c)), vec3<i32>(-1i) * -vec3<i32>(-13568i, -574i, -21975i), true)));
    return 4294967295u;
}

fn func_2() -> Struct_2 {
    var var_0 = u_input.c.x | _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(func_3(global1.a), ~u_input.b.x), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 68099u), vec2<u32>(u_input.c.x, u_input.b.x), u_input.c.xy)), (_wgslsmith_mult_u32(u_input.d, u_input.d) >> (1u % 32u)) & 0u);
    global1 = Struct_2(global1.a);
    var_0 = reverseBits(firstTrailingBit(~func_3(global1.a)));
    var_0 = _wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(~(~14140u), firstLeadingBit(countOneBits(u_input.b.x))), u_input.b.x), _wgslsmith_mult_u32(0u, ~(~_wgslsmith_clamp_u32(u_input.b.x, u_input.d, 4294967295u))));
    global1 = global3[_wgslsmith_index_u32(~u_input.d, 32u)];
    return Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-global1.a.a), _wgslsmith_f_op_f32(1713f + _wgslsmith_f_op_f32(max(global0.b, _wgslsmith_f_op_f32(-1228f * 460f)))), reverseBits(abs(-1i))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> Struct_2 {
    var var_0 = global3[_wgslsmith_index_u32(u_input.b.x, 32u)];
    let var_1 = u_input.d;
    global2 = global1.a.a;
    let var_2 = ~(_wgslsmith_clamp_vec2_u32(~_wgslsmith_sub_vec2_u32(u_input.b.xz, u_input.b.zz), min(u_input.c.yx, u_input.c.yy), ~(~vec2<u32>(var_1, u_input.c.x))) ^ abs(abs(~u_input.c.xx)));
    let var_3 = func_2().a;
    return func_2();
}

fn func_5(arg_0: vec3<u32>, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: Struct_2) -> Struct_1 {
    global3 = array<Struct_2, 32>();
    var var_0 = !vec4<bool>(all(select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true)), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false)), true)), abs(arg_0.x) < ~u_input.c.x, false, select(true, true, true));
    var_0 = select(vec4<bool>(true && var_0.x, true, true, !var_0.x), vec4<bool>(any(!vec4<bool>(var_0.x, true, true, var_0.x)), any(!(!var_0.wzw)), select(true, true, true), any(var_0.xyw)), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, var_0.x, false), !vec4<bool>(false, var_0.x, false, var_0.x), select(false, false, false)), true), select(select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), select(vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(var_0.x, false, true, var_0.x), true), vec4<bool>(false, false, var_0.x, var_0.x)), select(select(vec4<bool>(false, var_0.x, false, false), vec4<bool>(var_0.x, true, var_0.x, var_0.x), var_0.x), vec4<bool>(false, false, var_0.x, var_0.x), select(var_0.x, var_0.x, var_0.x)), var_0.x), vec4<bool>(false, false, any(select(vec4<bool>(false, var_0.x, true, false), vec4<bool>(true, true, var_0.x, false), var_0.x)), var_0.x)));
    let var_1 = global1.a;
    var var_2 = func_2().a;
    return Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1990f, var_2.b, arg_2.b) - arg_2.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(885f, arg_2.a.x, global0.b) - _wgslsmith_f_op_vec3_f32(arg_1 - vec3<f32>(-910f, 2290f, 533f))))), vec3<f32>(1001f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2866f)), _wgslsmith_f_op_f32(-global0.b)))), _wgslsmith_f_op_f32(-1388f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-117f)))), u_input.a.x);
}

fn func_6(arg_0: Struct_2, arg_1: f32, arg_2: u32, arg_3: Struct_1) -> Struct_2 {
    var var_0 = arg_0;
    global3 = array<Struct_2, 32>();
    var var_1 = abs(select(vec4<i32>(0i, 2147483647i, firstTrailingBit(1i), global1.a.c | ~var_0.a.c), min(vec4<i32>(global1.a.c, global0.c, arg_3.c, global0.c), firstLeadingBit(vec4<i32>(0i, 9939i, 62670i, 2147483647i))) | select(vec4<i32>(global0.c, arg_3.c, -19000i, -1i), _wgslsmith_div_vec4_i32(vec4<i32>(0i, -28236i, var_0.a.c, var_0.a.c), vec4<i32>(u_input.a.x, u_input.a.x, var_0.a.c, arg_0.a.c)), true), ~(arg_2 & arg_2) <= ~(~11508u)));
    return Struct_2(func_5(u_input.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.a.a))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.a.a + arg_3.a)), _wgslsmith_f_op_f32(arg_0.a.a.x - arg_1), _wgslsmith_div_i32(arg_3.c, 1i) | _wgslsmith_div_i32(-15039i, -2147483647i)), Struct_2(func_4(func_2(), var_0.a).a)));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec3<i32>, arg_3: i32) -> vec2<bool> {
    var var_0 = func_6(Struct_2(func_5(_wgslsmith_sub_vec3_u32(~u_input.b, _wgslsmith_div_vec3_u32(u_input.b, u_input.c)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(global0.a)))), Struct_1(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.a.x, global2.x, global1.a.b))), _wgslsmith_div_f32(arg_0.a.x, -1668f), _wgslsmith_sub_i32(-13761i, u_input.a.x)), func_4(func_2(), func_2().a))), 198f, 0u, Struct_1(global0.a, arg_0.b, 1i));
    global1 = Struct_2(arg_0);
    global2 = _wgslsmith_div_vec3_f32(func_6(Struct_2(func_2().a), 677f, u_input.d, arg_0).a.a, global0.a);
    global0 = Struct_1(_wgslsmith_div_vec3_f32(arg_0.a, func_4(Struct_2(arg_0), var_0.a).a.a), -1284f, _wgslsmith_dot_vec4_i32(abs(~vec4<i32>(u_input.a.x, u_input.a.x, -20901i, global1.a.c)), _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-11978i, global0.c, -41632i, -21362i), vec4<i32>(arg_3, global0.c, global0.c, arg_3)), ~vec4<i32>(1i, arg_0.c, -6925i, -1i)), abs(~vec4<i32>(2147483647i, arg_3, 2147483647i, global0.c)))));
    global3 = array<Struct_2, 32>();
    return select(vec2<bool>(true, true), vec2<bool>(true, true), !any(!vec3<bool>(false, arg_1, arg_1)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-966f - 2024f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-834f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f)))))));
    var var_0 = vec4<bool>(any(vec2<bool>(true, true)), any(!(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), true))), !(!(_wgslsmith_div_f32(-1125f, global2.x) >= -1000f)), any(select(select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(false, false), false), select(vec2<bool>(false, true), vec2<bool>(true, true), false)), vec2<bool>(true, true), func_1(Struct_1(global0.a, global2.x, -12078i), true, reverseBits(vec3<i32>(u_input.a.x, -1i, global1.a.c)), -16406i))));
    let var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-511f + -387f), _wgslsmith_f_op_f32(ceil(global2.x)), func_5(firstTrailingBit(vec3<u32>(u_input.d, 1u, 0u)), global0.a, func_4(Struct_2(global1.a), func_4(Struct_2(global1.a), global1.a).a).a, Struct_2(func_5(vec3<u32>(u_input.c.x, 33593u, 0u), vec3<f32>(global1.a.b, global1.a.a.x, 1021f), Struct_1(global0.a, global2.x, global1.a.c), Struct_2(global1.a)))).a.x), func_6(func_4(global3[_wgslsmith_index_u32(u_input.b.x, 32u)], global1.a), _wgslsmith_f_op_f32(global1.a.a.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.b) * func_6(Struct_2(global1.a), global2.x, u_input.b.x, Struct_1(global1.a.a, 943f, u_input.a.x)).a.a.x)), ~(~min(4294967295u, u_input.d)), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, global1.a.a.x, 1000f) * global1.a.a) - global1.a.a), _wgslsmith_f_op_f32(floor(-253f)), _wgslsmith_div_i32(~global1.a.c, abs(global1.a.c)))).a.a.x, global1.a.c);
    let var_2 = 21165i;
    global1 = global3[_wgslsmith_index_u32(u_input.d | (_wgslsmith_clamp_u32(~u_input.b.x, _wgslsmith_mod_u32(u_input.d, u_input.d), _wgslsmith_sub_u32(70269u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 4294967295u, u_input.b.x), vec3<u32>(u_input.c.x, 19192u, 4294967295u)))) >> (u_input.b.x % 32u)), 32u)];
    let var_3 = Struct_2(global1.a);
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_3.a.a.x, 1190f, 412f, var_1.a.x), vec4<f32>(-222f, 1246f, 513f, var_3.a.b), vec4<bool>(var_0.x, false, false, true))))), vec4<f32>(_wgslsmith_f_op_f32(-var_3.a.a.x), var_1.b, _wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(-global0.a.x)), !select(vec4<bool>(var_0.x, false, true, false), vec4<bool>(var_0.x, true, var_0.x, true), false))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-602f, _wgslsmith_f_op_f32(global2.x * 752f), _wgslsmith_f_op_f32(step(1900f, 1014f)), _wgslsmith_f_op_f32(f32(-1f) * -785f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global0.b, 273f, global2.x) + vec4<f32>(global2.x, global0.a.x, 1412f, var_3.a.b)), all(vec3<bool>(var_0.x, false, var_0.x))))) + vec4<f32>(_wgslsmith_f_op_f32(sign(global0.b)), 1993f, func_4(var_3, func_2().a).a.a.x, -1912f));
    var var_5 = func_5(firstLeadingBit(vec3<u32>(1u, 8337u, 0u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(select(var_1.a.x, global1.a.b, false)), -232f, _wgslsmith_f_op_f32(-var_1.a.x)))) + func_5(max(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.d, 1u, 58458u), vec3<u32>(4294967295u, u_input.c.x, 11557u)), ~vec3<u32>(u_input.d, u_input.d, u_input.b.x)), _wgslsmith_f_op_vec3_f32(func_5(u_input.b, vec3<f32>(global2.x, global1.a.a.x, global1.a.b), Struct_1(var_3.a.a, global2.x, -2147483647i), Struct_2(global1.a)).a - func_2().a.a), Struct_1(global0.a, global1.a.b, -25326i), Struct_2(Struct_1(var_1.a, var_1.a.x, global0.c))).a), Struct_1(vec3<f32>(1000f, global2.x, _wgslsmith_f_op_f32(floor(global0.b))), var_4.x, -2147483647i), global3[_wgslsmith_index_u32(1u, 32u)]).a;
    var var_6 = true;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, func_5(~vec3<u32>(u_input.b.x | 52731u, 39541u, abs(u_input.b.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-336f, var_1.a.x, global2.x), _wgslsmith_f_op_vec3_f32(abs(global0.a))) + var_4.ywy), global1.a, var_3).c, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1417f, global2.x), vec2<f32>(var_5.x, var_5.x))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b, var_1.a.x))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(global0.a.yx)))), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global2.x))), 303f))));
}

