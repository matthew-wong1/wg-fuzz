struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: u32,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
    c: u32,
    d: vec4<bool>,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec3<f32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec4<f32>(2080f, -1005f, -739f, -192f), vec4<f32>(-3220f, 173f, -108f, -1000f), 1u), Struct_1(vec4<f32>(-990f, 1252f, 684f, 312f), vec4<f32>(-1000f, 262f, 1000f, -253f), 1u), Struct_1(vec4<f32>(1000f, 641f, -439f, -157f), vec4<f32>(-1433f, -1798f, 1557f, -984f), 4294967295u), Struct_1(vec4<f32>(1000f, -1311f, 759f, -221f), vec4<f32>(268f, 914f, -380f, 597f), 35615u), Struct_1(vec4<f32>(1647f, -283f, 497f, -376f), vec4<f32>(-1279f, -1121f, -513f, 311f), 0u), Struct_1(vec4<f32>(1000f, -1523f, -1215f, -463f), vec4<f32>(276f, 1140f, -192f, -1436f), 4294967295u), Struct_1(vec4<f32>(-1652f, 455f, -429f, 559f), vec4<f32>(1140f, 1322f, -1017f, 1000f), 4294967295u), Struct_1(vec4<f32>(465f, 713f, -1038f, -2099f), vec4<f32>(971f, 322f, 829f, -886f), 4294967295u), Struct_1(vec4<f32>(-885f, -894f, -1931f, 640f), vec4<f32>(1000f, -887f, -155f, 183f), 4294967295u), Struct_1(vec4<f32>(634f, 570f, -309f, 590f), vec4<f32>(496f, 512f, 573f, -465f), 1u), Struct_1(vec4<f32>(462f, 1494f, -903f, -1000f), vec4<f32>(2027f, 518f, 281f, 1726f), 25482u), Struct_1(vec4<f32>(756f, 125f, -121f, -612f), vec4<f32>(2250f, 558f, -1558f, -1000f), 7928u), Struct_1(vec4<f32>(213f, 551f, 220f, -1658f), vec4<f32>(-397f, 1090f, 827f, -246f), 1u), Struct_1(vec4<f32>(-102f, -552f, -1000f, -418f), vec4<f32>(-1271f, 540f, -315f, -367f), 10698u), Struct_1(vec4<f32>(276f, -680f, -1336f, -722f), vec4<f32>(1958f, -1423f, -122f, -1421f), 4294967295u), Struct_1(vec4<f32>(-691f, 1162f, -726f, 1528f), vec4<f32>(-510f, -711f, -905f, -732f), 64098u), Struct_1(vec4<f32>(2425f, 753f, 512f, 2767f), vec4<f32>(195f, -1688f, 1369f, -1421f), 33683u), Struct_1(vec4<f32>(1822f, 1715f, 393f, 701f), vec4<f32>(-766f, -393f, 1340f, -920f), 4294967295u), Struct_1(vec4<f32>(565f, 539f, -1086f, -841f), vec4<f32>(-1446f, -2529f, -1650f, 1202f), 136721u), Struct_1(vec4<f32>(-1683f, -1637f, 738f, -616f), vec4<f32>(1441f, 348f, 110f, 504f), 0u), Struct_1(vec4<f32>(-1133f, -1000f, 2135f, -1409f), vec4<f32>(-891f, 585f, -381f, 163f), 31409u), Struct_1(vec4<f32>(-1059f, 596f, 1863f, -148f), vec4<f32>(146f, 1260f, -258f, 104f), 81855u), Struct_1(vec4<f32>(976f, -1000f, -160f, -134f), vec4<f32>(-1000f, 663f, 456f, 1052f), 4294967295u), Struct_1(vec4<f32>(1006f, -1121f, 513f, -171f), vec4<f32>(1000f, 794f, 438f, -616f), 75319u), Struct_1(vec4<f32>(1123f, -755f, 1643f, 768f), vec4<f32>(1000f, 414f, -114f, -1114f), 0u), Struct_1(vec4<f32>(-442f, -271f, -1000f, 1120f), vec4<f32>(1687f, -1130f, 1264f, -1185f), 0u), Struct_1(vec4<f32>(-1400f, -873f, 583f, -664f), vec4<f32>(-1618f, 1007f, 1083f, 117f), 4294967295u), Struct_1(vec4<f32>(191f, -358f, -553f, 121f), vec4<f32>(714f, -2435f, 1807f, -1311f), 4294967295u), Struct_1(vec4<f32>(-1127f, 400f, 994f, 1785f), vec4<f32>(-1366f, -670f, -494f, -610f), 19052u));

var<private> global1: Struct_1;

var<private> global2: vec4<f32> = vec4<f32>(1473f, 158f, 660f, -663f);

var<private> global3: vec4<i32> = vec4<i32>(2147483647i, -20127i, 0i, 30918i);

var<private> global4: array<i32, 5>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32, arg_1: f32) -> u32 {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.wyw))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-global1.b.xzw))))), vec3<f32>(-1325f, global2.x, _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-912f + 1544f))))));
    let var_1 = global0[_wgslsmith_index_u32(~1u, 29u)];
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(998f, -466f))));
    global3 = reverseBits(_wgslsmith_clamp_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, -20667i, 1i, global3.x), vec4<i32>(global3.x, -2147483647i, -31363i, -24006i)), _wgslsmith_mult_vec4_i32(~vec4<i32>(-1i, global4[_wgslsmith_index_u32(var_1.c, 5u)], global4[_wgslsmith_index_u32(arg_0, 5u)], -1i), vec4<i32>(u_input.a.x, -2147483647i, -31275i, u_input.a.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, global3.x, global3.x, -2147483647i), _wgslsmith_clamp_vec4_i32(vec4<i32>(global4[_wgslsmith_index_u32(4294967295u, 5u)], global3.x, -90913i, -2147483647i), vec4<i32>(global3.x, global3.x, u_input.a.x, global4[_wgslsmith_index_u32(36187u, 5u)]), vec4<i32>(1i, global3.x, 374i, -1i)))) | -firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(global3.x, global3.x, global3.x, global4[_wgslsmith_index_u32(0u, 5u)]), vec4<i32>(-62934i, global3.x, global4[_wgslsmith_index_u32(32808u, 5u)], 1i))));
    var var_3 = Struct_2(0i, var_1.a.wx, global1.c, vec4<bool>((_wgslsmith_f_op_f32(round(1595f)) != arg_1) & true, !select(true, true, false), any(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false))), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_0, 4294967295u, global1.c), ~vec4<u32>(1u, global1.c, global1.c, arg_0)) > _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b, 51226u, var_1.c) ^ vec4<u32>(arg_0, 1u, 0u, 0u), vec4<u32>(0u, 1u, global1.c, u_input.b))), false);
    return _wgslsmith_div_u32(var_1.c, _wgslsmith_dot_vec2_u32(max(~vec2<u32>(arg_0, 0u), vec2<u32>(4294967295u, u_input.b) | vec2<u32>(17536u, 19080u)) ^ ~abs(vec2<u32>(1u, var_1.c)), vec2<u32>(0u, u_input.b)));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1, arg_3: i32) -> f32 {
    global4 = array<i32, 5>();
    let var_0 = (arg_1.e && any(vec3<bool>(any(arg_1.d.xzz), any(arg_1.d), true))) | arg_1.e;
    global0 = array<Struct_1, 29>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.x, global1.a.x, arg_1.b.x, global2.x)) - _wgslsmith_f_op_vec4_f32(-arg_2.b)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b.x, -342f, arg_2.a.x, global1.b.x) - _wgslsmith_f_op_vec4_f32(-global1.a))) + vec4<f32>(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_2.b.x, arg_0, true)) + -366f), -104f, global1.a.x)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1970f))), global2.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -224f))), global2.x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-arg_2.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-986f, arg_1.b.x, arg_2.b.x, arg_1.b.x)))), global1.b, !(!var_0))))), arg_2.c & (9919u & u_input.b));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, 294f, arg_0, -585f)))), arg_2.b, abs(_wgslsmith_dot_vec2_u32(vec2<u32>(3923u, arg_1.c), vec2<u32>(~4294967295u, min(arg_2.c, 56684u)))));
    return var_1.a.x;
}

fn func_2() -> bool {
    global1 = Struct_1(vec4<f32>(global1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.b.x)) + _wgslsmith_div_f32(-746f, global2.x)) - _wgslsmith_f_op_f32(sign(global1.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(ceil(global2.x)), Struct_2(2147483647i, global1.a.wz, global1.c, vec4<bool>(true, true, true, true), true), global0[_wgslsmith_index_u32(func_3(u_input.b, 2107f), 29u)], _wgslsmith_mult_i32(global3.x, u_input.a.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-831f * -931f), global2.x)), vec4<f32>(_wgslsmith_f_op_f32(global1.a.x + 392f), _wgslsmith_f_op_f32(global2.x + 577f), -380f, _wgslsmith_f_op_f32(-308f - _wgslsmith_f_op_f32(select(global2.x, _wgslsmith_div_f32(global1.b.x, 406f), u_input.b < 1u)))), u_input.b);
    global2 = _wgslsmith_f_op_vec4_f32(global1.a + global1.b);
    global0 = array<Struct_1, 29>();
    let var_0 = _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(global1.c, u_input.b, global1.c)), ~abs(vec3<u32>(8961u, global1.c, 1u)));
    global4 = array<i32, 5>();
    return !(all(!select(vec2<bool>(false, true), vec2<bool>(false, false), false)) || !((global1.b.x != global1.b.x) && any(vec4<bool>(true, false, true, true))));
}

fn func_1() -> u32 {
    var var_0 = !(!all(vec2<bool>(false, true)));
    let var_1 = global1.a.x;
    var var_2 = ~_wgslsmith_add_vec2_u32(~(vec2<u32>(u_input.b, u_input.b) | vec2<u32>(u_input.b, 0u)), _wgslsmith_mod_vec2_u32(max(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, u_input.b), vec2<u32>(u_input.b, u_input.b)), vec2<u32>(global1.c, u_input.b) << (vec2<u32>(global1.c, u_input.b) % vec2<u32>(32u))), vec2<u32>(0u, global1.c)));
    var var_3 = Struct_2(~global4[_wgslsmith_index_u32(u_input.b, 5u)] & -_wgslsmith_add_i32(u_input.a.x, global3.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.ww)), ~(~u_input.b), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), vec4<bool>(-1000f >= global1.b.x, false, all(vec3<bool>(true, false, true)), all(vec4<bool>(false, true, true, false)))), all(vec4<bool>(true, 0i <= global4[_wgslsmith_index_u32(20153u, 5u)], func_2(), true)) != (countOneBits(1i) > -_wgslsmith_dot_vec2_i32(global3.zx, u_input.a.xy)));
    var var_4 = Struct_2(min(u_input.a.x, global3.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(756f - -908f), var_3.b.x) * vec2<f32>(var_3.b.x, 672f))), ~abs(_wgslsmith_mod_u32(u_input.b, var_3.c)), select(select(!vec4<bool>(true, var_3.e, var_3.e, var_3.d.x), var_3.d, var_3.d.x | true), !select(select(var_3.d, vec4<bool>(false, false, var_3.d.x, var_3.d.x), vec4<bool>(true, var_3.e, false, var_3.d.x)), vec4<bool>(false, true, true, var_3.d.x), any(vec3<bool>(true, var_3.d.x, false))), -235f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_3.b.x)) + _wgslsmith_f_op_f32(-global2.x))), var_3.e);
    return func_3(global1.c, _wgslsmith_f_op_f32(sign(337f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec3_u32(~vec3<u32>(3217u << ((0u >> (0u % 32u)) % 32u), u_input.b, max(_wgslsmith_add_u32(0u, u_input.b), func_1())), ~_wgslsmith_clamp_vec3_u32(~abs(vec3<u32>(u_input.b, 4294967295u, global1.c)), ~vec3<u32>(112433u, 0u, u_input.b) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(global1.c, 1u, 4294967295u), vec3<u32>(59715u, u_input.b, 43739u), vec3<u32>(u_input.b, 28533u, global1.c)) % vec3<u32>(32u)), vec3<u32>(global1.c, global1.c, 0u)));
    let var_1 = -1561f;
    global4 = array<i32, 5>();
    global0 = array<Struct_1, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-2153f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), 1000f)), max(_wgslsmith_clamp_vec4_i32(~(vec4<i32>(2147483647i, 1i, global4[_wgslsmith_index_u32(96431u, 5u)], u_input.a.x) | vec4<i32>(global3.x, 62984i, -2147483647i, u_input.a.x)), ~vec4<i32>(global3.x, -5175i, global3.x, -2147483647i) ^ ~vec4<i32>(u_input.a.x, -16435i, global4[_wgslsmith_index_u32(2659u, 5u)], u_input.a.x), countOneBits(-vec4<i32>(0i, global3.x, global4[_wgslsmith_index_u32(global1.c, 5u)], 0i))), vec4<i32>(u_input.a.x, _wgslsmith_add_i32(i32(-1i) * -1i, _wgslsmith_add_i32(u_input.a.x, global4[_wgslsmith_index_u32(global1.c, 5u)])), global3.x, 50457i)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(global1.b.xwy - global1.a.zyz))), -549f, _wgslsmith_mult_u32(0u, 72398u));
}

