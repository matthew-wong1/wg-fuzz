struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(0u);

var<private> global1: vec4<u32>;

var<private> global2: array<vec4<f32>, 30> = array<vec4<f32>, 30>(vec4<f32>(1884f, 514f, 1000f, -991f), vec4<f32>(472f, 854f, -250f, -210f), vec4<f32>(-606f, -1211f, -391f, -1000f), vec4<f32>(-229f, 1002f, 1000f, -988f), vec4<f32>(1049f, -1093f, -1111f, -1000f), vec4<f32>(430f, 736f, -1438f, -1024f), vec4<f32>(-990f, 300f, 201f, -1000f), vec4<f32>(-1123f, 503f, -1685f, -1848f), vec4<f32>(-103f, 702f, -286f, 2892f), vec4<f32>(686f, 2134f, 855f, -867f), vec4<f32>(-1049f, -1889f, 371f, -347f), vec4<f32>(647f, 1846f, -589f, 371f), vec4<f32>(-689f, 822f, 1508f, 1313f), vec4<f32>(455f, -662f, 140f, -176f), vec4<f32>(-213f, 1072f, -1233f, -1077f), vec4<f32>(-348f, -1473f, 1840f, 1000f), vec4<f32>(-1000f, -469f, 900f, -1775f), vec4<f32>(203f, -900f, 857f, 497f), vec4<f32>(-112f, 465f, 1452f, 1000f), vec4<f32>(210f, 2221f, -1000f, 347f), vec4<f32>(-1223f, 141f, 1581f, -1086f), vec4<f32>(782f, 145f, -622f, -334f), vec4<f32>(-1832f, 352f, 174f, -555f), vec4<f32>(-291f, -747f, 955f, 441f), vec4<f32>(-618f, 195f, -1954f, -1824f), vec4<f32>(-1000f, -357f, -951f, 203f), vec4<f32>(859f, 2067f, -207f, -1400f), vec4<f32>(290f, 1634f, -1216f, -968f), vec4<f32>(-1000f, -296f, -850f, -1118f), vec4<f32>(1655f, 581f, -556f, 196f));

var<private> global3: Struct_3 = Struct_3(0u);

var<private> global4: u32 = 0u;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> i32 {
    var var_0 = global0.a;
    var var_1 = -184f;
    var var_2 = ~(~_wgslsmith_div_u32(select(_wgslsmith_clamp_u32(global3.a, global1.x, 36858u), 17352u, false), min(global1.x << (1u % 32u), _wgslsmith_dot_vec3_u32(global1.zyz, vec3<u32>(9318u, global3.a, global0.a)))));
    let var_3 = Struct_3(_wgslsmith_mod_u32(global3.a, global3.a) | 44370u);
    let var_4 = reverseBits(vec4<i32>(-27214i, firstTrailingBit(~u_input.c.x | 1i), 15496i, u_input.b | ~(u_input.c.x ^ u_input.c.x)));
    return abs(0i);
}

fn func_2() -> Struct_2 {
    let var_0 = -1000f;
    var var_1 = ~vec2<u32>(global3.a, _wgslsmith_mult_u32(global0.a, global3.a));
    var var_2 = Struct_2(_wgslsmith_add_i32(0i, firstLeadingBit(2147483647i)), vec2<u32>(_wgslsmith_mod_u32(~(~var_1.x), ~u_input.d), ~44023u), u_input.c.x, abs(abs(vec2<i32>(-1i, firstTrailingBit(u_input.b)))), 2147483647i);
    let var_3 = Struct_3(~(~min(_wgslsmith_dot_vec4_u32(vec4<u32>(9450u, var_2.b.x, 0u, var_2.b.x), vec4<u32>(4294967295u, 9307u, global1.x, 1u)), _wgslsmith_sub_u32(47322u, u_input.e))));
    var var_4 = var_3;
    return Struct_2(_wgslsmith_add_i32(abs(countOneBits(_wgslsmith_mod_i32(u_input.c.x, 1i))), ~_wgslsmith_dot_vec4_i32(~vec4<i32>(6331i, 2147483647i, -1i, 15595i), reverseBits(vec4<i32>(var_2.e, -16451i, var_2.a, 15461i)))), _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(global3.a, 13385u), var_2.b), var_2.b), firstLeadingBit(~(~vec2<u32>(global1.x, 55603u)))), func_3(), var_2.d, u_input.b);
}

fn func_4(arg_0: bool, arg_1: vec4<i32>, arg_2: Struct_2) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_mult_i32(~_wgslsmith_clamp_i32(0i, _wgslsmith_mod_i32(arg_2.a, u_input.c.x), -15166i), max(-44027i, 11225i)), ~vec3<i32>(u_input.c.x, _wgslsmith_div_i32(func_3(), -1i), abs(_wgslsmith_add_i32(u_input.c.x, u_input.c.x))), reverseBits(~(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 69203u, global0.a, 11626u), vec4<u32>(global0.a, arg_2.b.x, global0.a, arg_2.b.x)) | ~vec4<u32>(u_input.a, 0u, 21600u, arg_2.b.x))));
    let var_1 = var_0.c.x;
    let var_2 = ~arg_1.xzw;
    var var_3 = Struct_1(-1i, abs(-var_2), select(vec4<u32>(_wgslsmith_sub_u32(~8346u, 37430u), ~(4294967295u >> (global3.a % 32u)), var_0.c.x, 21961u), countOneBits(_wgslsmith_clamp_vec4_u32(~var_0.c, ~vec4<u32>(u_input.a, arg_2.b.x, 4925u, 1u), firstLeadingBit(var_0.c))), !arg_0));
    var var_4 = Struct_3(~global1.x);
    return Struct_2(16077i, var_3.c.xx, arg_2.c, -_wgslsmith_mod_vec2_i32(firstTrailingBit(vec2<i32>(arg_2.d.x, var_0.a)), vec2<i32>(abs(var_0.a), _wgslsmith_dot_vec4_i32(arg_1, vec4<i32>(2147483647i, var_3.b.x, -19888i, 0i)))), u_input.c.x);
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: Struct_2, arg_3: bool) -> Struct_3 {
    global2 = array<vec4<f32>, 30>();
    var var_0 = arg_3;
    let var_1 = vec3<bool>(arg_3, arg_3, all(!(!(!vec3<bool>(true, false, arg_3)))));
    let var_2 = Struct_1(firstTrailingBit(26246i) | max(~(-2147483647i) | max(48087i, arg_2.a), -21263i), vec3<i32>(-39466i, arg_2.e, 1i), vec4<u32>(34398u, ~_wgslsmith_div_u32(4294967295u, 32232u), _wgslsmith_sub_u32(u_input.a, 54391u) ^ global3.a, 14063u) & ~(firstLeadingBit(vec4<u32>(29649u, global1.x, arg_2.b.x, global0.a)) << (~vec4<u32>(arg_2.b.x, global3.a, 0u, global1.x) % vec4<u32>(32u))));
    let var_3 = arg_2;
    return arg_1;
}

fn func_1(arg_0: u32) -> Struct_3 {
    global3 = func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(604f, 1280f, false))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(706f, -628f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1485f - 478f)))), Struct_3(select(~arg_0, u_input.a, true) >> (~global3.a % 32u)), func_4(true, vec4<i32>(u_input.c.x, _wgslsmith_div_i32(countOneBits(u_input.c.x), _wgslsmith_add_i32(u_input.b, -20340i)), u_input.c.x >> (41802u % 32u), 1i), func_2()), !all(vec2<bool>(true, true)));
    var var_0 = _wgslsmith_sub_vec3_u32(max(vec3<u32>(global3.a, global1.x, global3.a), global1.zzy), _wgslsmith_div_vec3_u32(~vec3<u32>(global1.x & global1.x, global0.a, abs(global3.a)), vec3<u32>(44581u, countOneBits(52425u), select(7151u, 1u, true)) << (select(min(global1.zxx, global1.xyy), global1.wyy, true) % vec3<u32>(32u))));
    var var_1 = _wgslsmith_add_u32(~_wgslsmith_mult_u32(global0.a, 1u >> (var_0.x % 32u)), _wgslsmith_dot_vec4_u32(vec4<u32>(~arg_0, 19266u, global1.x, arg_0), select(countOneBits(vec4<u32>(37125u, 1u, u_input.d, u_input.a)), vec4<u32>(u_input.e, 38186u, global1.x, 1u), true))) << (~global0.a % 32u);
    var var_2 = 54360i;
    var var_3 = Struct_3(abs(~global3.a) & u_input.d);
    return Struct_3(7913u ^ min(~(global3.a | 1u), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_0, 0u, 18376u), global1.zwz), _wgslsmith_div_vec3_u32(vec3<u32>(29054u, u_input.a, global0.a), global1.xxy))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_add_i32(max(-(~u_input.b), 0i), max(u_input.c.x, abs(15541i))), u_input.c, vec4<u32>(~reverseBits(global1.x), 18405u, _wgslsmith_mult_u32(global3.a, reverseBits(_wgslsmith_div_u32(global1.x, 0u))), ~_wgslsmith_mod_u32(global3.a, 0u)));
    global3 = func_1(var_0.c.x);
    let var_1 = -(min(~(~vec4<i32>(-2147483647i, u_input.c.x, var_0.a, var_0.a)), _wgslsmith_clamp_vec4_i32(-vec4<i32>(-31273i, 0i, var_0.b.x, 13503i), ~vec4<i32>(var_0.b.x, -2147483647i, u_input.b, var_0.a), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, u_input.b, 32159i, var_0.a), vec4<i32>(-48363i, var_0.a, -2147483647i, u_input.c.x), vec4<i32>(u_input.c.x, 2037i, -5245i, var_0.a)))) >> (_wgslsmith_div_vec4_u32(max(var_0.c, vec4<u32>(23544u, global0.a, 4294967295u, 1u)) << ((vec4<u32>(global0.a, 0u, 0u, var_0.c.x) ^ var_0.c) % vec4<u32>(32u)), var_0.c) % vec4<u32>(32u)));
    let var_2 = Struct_2(-48402i, func_4(!any(vec4<bool>(true, false, true, false)) & select(false, true, false), ~var_1 | abs(reverseBits(vec4<i32>(-25154i, -11448i, var_1.x, -2147483647i))), func_2()).b, -_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, var_1.x, 1i) << (global1.yyx % vec3<u32>(32u)), ~select(var_1.zww, vec3<i32>(u_input.b, 15372i, u_input.b), false)), _wgslsmith_clamp_vec2_i32(func_4(true, countOneBits(vec4<i32>(-1i, 0i, -26621i, 32925i)), Struct_2(-1i, vec2<u32>(global3.a, var_0.c.x), var_1.x, vec2<i32>(2147483647i, u_input.c.x), var_1.x)).d & vec2<i32>(-14013i ^ u_input.b, ~44995i), _wgslsmith_mod_vec2_i32(~(vec2<i32>(-1i, u_input.b) >> (vec2<u32>(1u, 10745u) % vec2<u32>(32u))), vec2<i32>(13135i, min(-47212i, -2147483647i))), _wgslsmith_mod_vec2_i32(vec2<i32>(~0i, -20111i), u_input.c.yz)), var_0.a);
    let var_3 = 51363i;
    var_0 = Struct_1(func_2().d.x, -vec3<i32>(func_2().a | 17319i, _wgslsmith_dot_vec3_i32(u_input.c, u_input.c), (-45738i | u_input.c.x) & 1i), var_0.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(590f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1131f + _wgslsmith_f_op_f32(floor(718f)))))), var_2.a, _wgslsmith_mult_u32(2273u, var_2.b.x), vec3<f32>(1483f, -1804f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(184f + 1061f))))));
}

