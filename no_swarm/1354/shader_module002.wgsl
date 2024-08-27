struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(-259f, vec3<f32>(198f, -825f, 890f), 4294967295u, 83322u, vec3<u32>(4294967295u, 10092u, 0u)), Struct_1(1833f, vec3<f32>(-1106f, 1793f, 1255f), 0u, 0u, vec3<u32>(17068u, 5127u, 4294967295u)), Struct_1(-163f, vec3<f32>(-1359f, -191f, 1000f), 13559u, 0u, vec3<u32>(0u, 1u, 1u)), Struct_1(1769f, vec3<f32>(-623f, -1304f, 418f), 9156u, 4294967295u, vec3<u32>(1u, 1u, 6285u)), Struct_1(1572f, vec3<f32>(-924f, -2348f, 1000f), 0u, 1u, vec3<u32>(90349u, 1u, 0u)), Struct_1(783f, vec3<f32>(2146f, 790f, 267f), 1u, 4294967295u, vec3<u32>(4294967295u, 4294967295u, 14811u)), Struct_1(-761f, vec3<f32>(362f, -991f, 648f), 6204u, 76013u, vec3<u32>(1u, 0u, 19382u)), Struct_1(-844f, vec3<f32>(-772f, 453f, 2834f), 54609u, 46391u, vec3<u32>(25279u, 0u, 21403u)), Struct_1(1000f, vec3<f32>(-1601f, 560f, 573f), 1u, 19244u, vec3<u32>(1u, 1u, 377u)), Struct_1(121f, vec3<f32>(567f, -509f, 1386f), 50530u, 75325u, vec3<u32>(28275u, 4294967295u, 16508u)), Struct_1(-921f, vec3<f32>(410f, 1323f, 1113f), 0u, 35967u, vec3<u32>(9216u, 4294967295u, 4294967295u)), Struct_1(-938f, vec3<f32>(266f, -470f, -579f), 32507u, 0u, vec3<u32>(26828u, 0u, 11837u)), Struct_1(-1809f, vec3<f32>(-1017f, -723f, -592f), 10773u, 6194u, vec3<u32>(76141u, 64940u, 27034u)), Struct_1(960f, vec3<f32>(1385f, -194f, -544f), 4294967295u, 4294967295u, vec3<u32>(1u, 0u, 68311u)), Struct_1(1765f, vec3<f32>(849f, 1086f, 302f), 17548u, 0u, vec3<u32>(27007u, 4294967295u, 161666u)), Struct_1(168f, vec3<f32>(306f, -695f, -498f), 0u, 4294967295u, vec3<u32>(417u, 4294967295u, 30784u)), Struct_1(-488f, vec3<f32>(161f, -582f, -1000f), 23384u, 1342u, vec3<u32>(4294967295u, 1u, 0u)), Struct_1(810f, vec3<f32>(-669f, 371f, 1000f), 33433u, 0u, vec3<u32>(34294u, 15242u, 0u)), Struct_1(-1560f, vec3<f32>(-893f, -413f, -840f), 7121u, 0u, vec3<u32>(1u, 0u, 1u)), Struct_1(666f, vec3<f32>(851f, 215f, 455f), 3230u, 58515u, vec3<u32>(1u, 0u, 1u)), Struct_1(-714f, vec3<f32>(-401f, -1063f, 1002f), 4294967295u, 24154u, vec3<u32>(4294967295u, 0u, 26937u)), Struct_1(220f, vec3<f32>(296f, 293f, -1154f), 4294967295u, 41389u, vec3<u32>(62291u, 1u, 91436u)), Struct_1(-497f, vec3<f32>(1232f, 352f, 640f), 4294967295u, 1u, vec3<u32>(1u, 23616u, 1u)), Struct_1(397f, vec3<f32>(-553f, -266f, -105f), 1u, 74018u, vec3<u32>(5874u, 15978u, 51489u)), Struct_1(1064f, vec3<f32>(-1263f, -633f, -746f), 0u, 27892u, vec3<u32>(0u, 1762u, 4294967295u)), Struct_1(-1000f, vec3<f32>(415f, 253f, -1461f), 0u, 20888u, vec3<u32>(18940u, 14643u, 708u)), Struct_1(1862f, vec3<f32>(696f, -1473f, -226f), 15221u, 4294967295u, vec3<u32>(57767u, 0u, 1u)), Struct_1(466f, vec3<f32>(-1000f, -605f, 740f), 4294967295u, 38494u, vec3<u32>(50401u, 481u, 41355u)));

var<private> global1: array<vec2<f32>, 18> = array<vec2<f32>, 18>(vec2<f32>(-1429f, -212f), vec2<f32>(1133f, 1013f), vec2<f32>(269f, -343f), vec2<f32>(-1789f, 561f), vec2<f32>(-754f, 723f), vec2<f32>(-939f, -338f), vec2<f32>(761f, 841f), vec2<f32>(1024f, -362f), vec2<f32>(-546f, -214f), vec2<f32>(960f, -1739f), vec2<f32>(-100f, 1566f), vec2<f32>(1234f, 1000f), vec2<f32>(-1000f, 1800f), vec2<f32>(1275f, 350f), vec2<f32>(1241f, -1732f), vec2<f32>(101f, 131f), vec2<f32>(-1401f, -108f), vec2<f32>(569f, -702f));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3() -> u32 {
    global0 = array<Struct_1, 28>();
    global0 = array<Struct_1, 28>();
    global1 = array<vec2<f32>, 18>();
    let var_0 = vec2<f32>(-2838f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1711f)))))));
    global0 = array<Struct_1, 28>();
    return 4294967295u;
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<bool>) -> bool {
    let var_0 = vec3<u32>(81763u, func_3(), ~4294967295u);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1802f - _wgslsmith_f_op_f32(324f - -904f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1122f, arg_0.x, 1882f)))), var_0.x, 0u, var_0);
    let var_2 = Struct_2(!vec4<bool>(true, arg_1.x, all(arg_1), true), global0[_wgslsmith_index_u32(~17713u, 28u)], Struct_1(-1113f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, var_1.a, -1188f))) + vec3<f32>(arg_0.x, arg_0.x, _wgslsmith_f_op_f32(trunc(-190f)))), _wgslsmith_dot_vec2_u32(~var_1.e.xx, ~countOneBits(vec2<u32>(50619u, 4294967295u))), var_1.d, ~max(var_0, min(var_1.e, vec3<u32>(1u, 32320u, 5803u)))));
    let var_3 = Struct_2(!select(!select(var_2.a, var_2.a, var_2.a), var_2.a, vec4<bool>(all(arg_1.zz), any(vec3<bool>(false, false, false)), 83976i >= u_input.e.x, var_2.a.x)), var_2.c, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1774f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-275f, -259f, arg_0.x))), ~_wgslsmith_div_u32(1u, 80388u), var_1.e.x, firstLeadingBit(max(vec3<u32>(1u, 1u, var_1.d), select(vec3<u32>(37773u, var_1.c, var_0.x), vec3<u32>(0u, 34011u, var_1.d), var_2.a.x)))));
    var_1 = var_2.b;
    return true || all(!(!var_3.a.yy));
}

fn func_4(arg_0: i32, arg_1: bool) -> Struct_1 {
    global1 = array<vec2<f32>, 18>();
    let var_0 = max(vec2<u32>(~_wgslsmith_dot_vec4_u32(min(vec4<u32>(4294967295u, 29925u, 20435u, 16451u), vec4<u32>(0u, 29796u, 8999u, 4294967295u)), vec4<u32>(1u, 1u, 1u, 1u)), 63190u), ~vec2<u32>(abs(func_3()), ~5654u));
    var var_1 = Struct_2(select(vec4<bool>(arg_1, true, arg_1, _wgslsmith_div_i32(u_input.d, arg_0) < -25363i), vec4<bool>(true, false, true, false), !vec4<bool>(!arg_1, select(true, true, arg_1), 3425i > u_input.e.x, 1i < u_input.a)), Struct_1(878f, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1503f, -687f, -539f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(396f, 1074f, 205f), vec3<f32>(-494f, 1286f, -1342f))))), vec3<f32>(_wgslsmith_f_op_f32(floor(1204f)), _wgslsmith_div_f32(-2071f, -1100f), _wgslsmith_f_op_f32(floor(-635f))))), 1u, ~var_0.x, vec3<u32>(var_0.x, var_0.x, ~_wgslsmith_clamp_u32(var_0.x, 14072u, 36131u))), global0[_wgslsmith_index_u32(0u, 28u)]);
    var var_2 = arg_0;
    var_2 = abs(-2147483647i);
    return global0[_wgslsmith_index_u32(var_0.x, 28u)];
}

fn func_5(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec4<u32>, arg_3: vec3<bool>) -> Struct_2 {
    var var_0 = global0[_wgslsmith_index_u32(arg_0.e.x, 28u)];
    var var_1 = func_4(2147483647i, !(!any(vec2<bool>(arg_3.x, arg_3.x))));
    var var_2 = var_0.b;
    var var_3 = _wgslsmith_f_op_f32(select(1808f, -1000f, !(((var_0.d & var_1.d) > _wgslsmith_dot_vec2_u32(var_1.e.yy, vec2<u32>(var_0.c, 21654u))) != (arg_1.x <= -u_input.c))));
    let var_4 = max(_wgslsmith_div_vec3_i32(((vec3<i32>(-1i, 10616i, 2147483647i) | u_input.e) << (_wgslsmith_mult_vec3_u32(var_0.e, var_1.e) % vec3<u32>(32u))) << (~(~vec3<u32>(arg_0.c, 0u, 0u)) % vec3<u32>(32u)), -(~(-arg_1))), arg_1);
    return Struct_2(!select(!(!vec4<bool>(arg_3.x, arg_3.x, arg_3.x, arg_3.x)), select(select(vec4<bool>(arg_3.x, false, false, arg_3.x), vec4<bool>(false, false, false, arg_3.x), false), select(vec4<bool>(arg_3.x, false, true, arg_3.x), vec4<bool>(arg_3.x, true, arg_3.x, arg_3.x), vec4<bool>(true, false, true, true)), !vec4<bool>(arg_3.x, true, true, true)), vec4<bool>(false, !arg_3.x, true, true)), Struct_1(var_0.a, vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(var_0.a, -857f)), _wgslsmith_f_op_f32(-var_2.x))), var_0.b.x, 363f), 4294967295u, 11908u, abs(vec3<u32>(0u, arg_0.c >> (var_0.c % 32u), arg_0.c ^ arg_2.x))), arg_0);
}

fn func_1(arg_0: vec3<bool>, arg_1: u32, arg_2: vec4<f32>) -> vec4<u32> {
    var var_0 = -abs(u_input.b);
    global0 = array<Struct_1, 28>();
    let var_1 = func_5(func_4(~(~u_input.e.x) >> (7291u % 32u), select(func_2(vec2<f32>(arg_2.x, -218f), arg_0), false, -u_input.d != _wgslsmith_mult_i32(-34942i, u_input.c))), u_input.e, vec4<u32>(~1u, 0u, ~_wgslsmith_add_u32(func_4(41521i, arg_0.x).e.x, func_4(u_input.a, arg_0.x).d), abs(~func_4(-29810i, true).c)), vec3<bool>(true, !(4294967295u <= arg_1), false));
    global1 = array<vec2<f32>, 18>();
    var var_2 = !var_1.a;
    return select(vec4<u32>(0u, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(414u, 0u, 59935u, arg_1), vec4<u32>(arg_1, 25683u, var_1.c.d, var_1.c.d))), ~(~(56153u >> (arg_1 % 32u))), var_1.b.c & select(var_1.c.c & var_1.b.e.x, var_1.b.c << (arg_1 % 32u), true)), vec4<u32>(24619u, 104414u, var_1.c.e.x, _wgslsmith_dot_vec2_u32(select(max(var_1.b.e.xz, var_1.b.e.xx), vec2<u32>(arg_1, arg_1), !vec2<bool>(false, var_2.x)), var_1.c.e.xy)), false);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<f32>, 18>();
    global0 = array<Struct_1, 28>();
    let var_0 = _wgslsmith_mult_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), reverseBits(_wgslsmith_sub_vec4_u32(~select(vec4<u32>(13401u, 0u, 1u, 0u), vec4<u32>(1u, 4294967295u, 1u, 2079u), vec4<bool>(false, true, false, true)), func_1(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true), select(4294967295u, 0u, true), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1165f, -2216f, 259f) + vec4<f32>(-106f, -1803f, 916f, 1770f))))));
    let var_1 = func_5(func_4(_wgslsmith_mod_i32(-7968i ^ u_input.c, 1i), true), reverseBits(_wgslsmith_mult_vec3_i32(u_input.e, u_input.e)), firstLeadingBit(~var_0) ^ ~var_0, select(vec3<bool>(false, true, true), select(func_5(Struct_1(-452f, vec3<f32>(1051f, 1164f, 1000f), 18301u, 25956u, vec3<u32>(var_0.x, var_0.x, var_0.x)), -vec3<i32>(2147483647i, u_input.d, u_input.d), vec4<u32>(28774u, 11160u, 0u, var_0.x), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)).a.wxy, vec3<bool>(true, true, u_input.c == 20554i), vec3<bool>(true, true, true)), true));
    var var_2 = global0[_wgslsmith_index_u32(8744u, 28u)];
    let var_3 = _wgslsmith_mult_i32(-4809i, -31478i);
    var_2 = func_5(Struct_1(var_1.c.a, var_2.b, ~(var_1.b.d & (var_1.c.d >> (1u % 32u))), ~5740u >> ((16959u ^ ~var_1.c.d) % 32u), _wgslsmith_div_vec3_u32(abs(var_2.e), var_2.e)), ~u_input.e, firstLeadingBit(select(~var_0, _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(var_0, var_0), vec4<u32>(var_0.x, 16465u, var_1.c.c, var_2.c) | vec4<u32>(var_2.c, 20495u, 0u, 0u)), !any(var_1.a.yz))), var_1.a.zzz).c;
    var var_4 = vec2<i32>(countOneBits(_wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.d, var_3 ^ -47532i), -_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -11192i, -28074i), u_input.e))), _wgslsmith_sub_i32(_wgslsmith_mult_i32(var_3, var_3), ~(~_wgslsmith_clamp_i32(2147483647i, 49249i, u_input.a))));
    var var_5 = _wgslsmith_f_op_f32(-318f * _wgslsmith_f_op_f32(sign(func_5(func_5(Struct_1(var_2.a, var_2.b, var_2.c, 1u, vec3<u32>(20537u, var_0.x, 24838u)), vec3<i32>(var_3, 2147483647i, var_4.x), _wgslsmith_clamp_vec4_u32(var_0, var_0, vec4<u32>(var_2.d, 4739u, var_2.e.x, 62984u)), vec3<bool>(true, true, false)).b, -u_input.e, _wgslsmith_sub_vec4_u32(~vec4<u32>(1u, var_2.d, 0u, 3247u), countOneBits(vec4<u32>(2515u, var_2.d, 52029u, 0u))), func_5(Struct_1(var_2.a, var_2.b, var_2.c, var_0.x, vec3<u32>(var_1.c.c, var_2.c, 1u)), ~vec3<i32>(0i, -2147483647i, -2147483647i), vec4<u32>(1u, 25415u, var_1.c.e.x, 46774u) ^ var_0, func_5(var_1.c, u_input.e, var_0, vec3<bool>(true, var_1.a.x, var_1.a.x)).a.zyw).a.zwx).c.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-var_1.b.b.zx), -u_input.e.zz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1288f) - func_5(Struct_1(var_1.b.a, var_1.c.b, 38824u, 1u, var_0.zwz), vec3<i32>(2147483647i, u_input.b, 1i), var_0, vec3<bool>(true, false, var_1.a.x)).b.b.x))));
}

