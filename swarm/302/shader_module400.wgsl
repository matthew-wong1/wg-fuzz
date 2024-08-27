struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: Struct_2,
    d: f32,
    e: i32,
}

struct Struct_5 {
    a: u32,
    b: u32,
    c: Struct_3,
    d: vec4<bool>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 8>;

var<private> global1: array<bool, 19> = array<bool, 19>(true, false, false, true, true, true, true, false, true, true, false, false, false, false, false, false, true, false, false);

var<private> global2: array<vec3<f32>, 24> = array<vec3<f32>, 24>(vec3<f32>(1967f, -2087f, 1130f), vec3<f32>(1322f, 277f, 1219f), vec3<f32>(-292f, -454f, -489f), vec3<f32>(-1131f, 687f, 1000f), vec3<f32>(-598f, -190f, -677f), vec3<f32>(646f, -969f, -779f), vec3<f32>(260f, -146f, -669f), vec3<f32>(-1342f, -1000f, -671f), vec3<f32>(923f, -2123f, 1285f), vec3<f32>(336f, -1000f, -421f), vec3<f32>(571f, -754f, -1014f), vec3<f32>(293f, -537f, -1000f), vec3<f32>(-801f, -810f, -904f), vec3<f32>(988f, -572f, -179f), vec3<f32>(1074f, 122f, 443f), vec3<f32>(191f, -957f, 285f), vec3<f32>(695f, -1145f, -1087f), vec3<f32>(-562f, 1753f, 803f), vec3<f32>(-798f, 809f, -728f), vec3<f32>(-497f, -569f, -905f), vec3<f32>(1385f, 1133f, 1266f), vec3<f32>(-1147f, -434f, 1910f), vec3<f32>(-1313f, 404f, 479f), vec3<f32>(-742f, 781f, -511f));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec4<i32> {
    let var_0 = reverseBits(~countOneBits(reverseBits(0u)));
    global0 = array<vec4<f32>, 8>();
    var var_1 = ~78673u;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(max(2150f, 1416f)))))) - 582f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -923f)))) - 842f));
    var var_3 = Struct_1(~_wgslsmith_div_vec2_u32(vec2<u32>(var_0, 23355u >> (var_0 % 32u)), countOneBits(vec2<u32>(var_0, var_0)) | ~vec2<u32>(var_0, var_0)), -516f, _wgslsmith_add_u32(44056u, var_0));
    return vec4<i32>(i32(-1i) * -2147483647i, 0i, u_input.a.x, _wgslsmith_mod_i32(-22598i, u_input.a.x));
}

fn func_2(arg_0: bool, arg_1: f32) -> Struct_1 {
    global2 = array<vec3<f32>, 24>();
    global1 = array<bool, 19>();
    global2 = array<vec3<f32>, 24>();
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), -1556f);
    var var_1 = func_3();
    return Struct_1(firstLeadingBit(vec2<u32>(_wgslsmith_clamp_u32(0u, 1u, 1u), 4294967295u >> (1u % 32u))), _wgslsmith_f_op_f32(floor(1000f)), ~min(~abs(36421u), ~(~97615u)));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1) -> Struct_5 {
    global1 = array<bool, 19>();
    global0 = array<vec4<f32>, 8>();
    var var_0 = Struct_5(~(~(~1u)), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(~51489u, 1u, 4294967295u, arg_1.c), ~(vec4<u32>(1u, arg_1.c, 4294967295u, arg_1.c) << (vec4<u32>(1224u, 4294967295u, 0u, 39536u) % vec4<u32>(32u)))), countOneBits(~vec4<u32>(arg_1.a.x, 81047u, 0u, 64906u))), Struct_3(Struct_1(_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(arg_1.a, arg_1.a), arg_1.a, ~vec2<u32>(arg_1.c, 17985u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(787f - 1425f)), abs(min(4294967295u, 42242u)))), select(vec4<bool>(true, true, (arg_1.a.x ^ arg_1.c) >= arg_1.a.x, global1[_wgslsmith_index_u32(arg_1.a.x, 19u)]), !(!vec4<bool>(false, true, global1[_wgslsmith_index_u32(arg_1.a.x, 19u)], global1[_wgslsmith_index_u32(0u, 19u)])), vec4<bool>(true, global1[_wgslsmith_index_u32(arg_1.c, 19u)], any(select(vec2<bool>(global1[_wgslsmith_index_u32(arg_1.c, 19u)], global1[_wgslsmith_index_u32(18687u, 19u)]), vec2<bool>(global1[_wgslsmith_index_u32(1u, 19u)], true), global1[_wgslsmith_index_u32(arg_1.a.x, 19u)])), all(!vec2<bool>(false, global1[_wgslsmith_index_u32(1u, 19u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1089f * 658f) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1345f, _wgslsmith_f_op_f32(-arg_0.x)))));
    let var_1 = u_input.b;
    global2 = array<vec3<f32>, 24>();
    return Struct_5(select((arg_1.a.x << (arg_1.a.x % 32u)) ^ (var_0.b ^ 38241u), arg_1.c, var_0.d.x) << (arg_1.a.x % 32u), arg_1.c, Struct_3(arg_1), select(!var_0.d, !var_0.d, vec4<bool>(global1[_wgslsmith_index_u32(var_0.c.a.a.x >> (_wgslsmith_mult_u32(arg_1.c, arg_1.c) % 32u), 19u)], true, global1[_wgslsmith_index_u32(1u, 19u)], global1[_wgslsmith_index_u32(arg_1.a.x, 19u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(753f, arg_1.b))));
}

fn func_1(arg_0: f32, arg_1: vec3<f32>, arg_2: vec2<i32>, arg_3: bool) -> vec2<bool> {
    global1 = array<bool, 19>();
    let var_0 = func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -697f), _wgslsmith_f_op_f32(-arg_1.x))), func_2(true, arg_0));
    var var_1 = var_0.d.x;
    return select(!(!(!vec2<bool>(true, global1[_wgslsmith_index_u32(var_0.b, 19u)]))), select(func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.yz)), func_4(arg_1.yx, var_0.c.a).c.a).d.xy, !vec2<bool>(false, all(vec2<bool>(global1[_wgslsmith_index_u32(4896u, 19u)], false))), select(!select(vec2<bool>(true, global1[_wgslsmith_index_u32(0u, 19u)]), var_0.d.yz, false), var_0.d.xx, !all(var_0.d))), func_4(arg_1.zx, func_4(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1099f), var_0.c.a.b), var_0.c.a).c.a).d.zx);
}

fn func_5(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = !select(all(select(func_4(vec2<f32>(arg_2.c.b, 1000f), arg_2.c).d, select(arg_3, arg_3, vec4<bool>(false, false, arg_0.x, false)), arg_3.x)), arg_2.a.b <= arg_2.a.b, true);
    let var_1 = Struct_2(Struct_1(select(~_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_2.a.a.x, arg_1.x), vec2<u32>(25168u, 1u), arg_2.c.a), select(vec2<u32>(17922u, arg_2.a.c), arg_2.c.a, false) << (select(arg_2.e, arg_1, true) % vec2<u32>(32u)), vec2<bool>(arg_3.x | true, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_2.c.c, 1u), 19u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -2090f))), 4294967295u), ~(-30291i) << (~reverseBits(arg_2.c.a.x) % 32u), arg_2.c, _wgslsmith_clamp_vec2_i32(u_input.a.xx, u_input.a.xx, u_input.a.xw), ~(~reverseBits(~arg_2.e)));
    var var_2 = _wgslsmith_div_vec4_u32((firstLeadingBit(vec4<u32>(1u, 26353u, arg_1.x, arg_2.c.c)) & ~vec4<u32>(arg_2.c.a.x, 4294967295u, var_1.e.x, var_1.e.x)) << (_wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(arg_2.a.c, 4294967295u, arg_1.x, arg_1.x)), vec4<u32>(85177u, arg_2.e.x, 12898u, arg_2.e.x)) % vec4<u32>(32u)), abs(min(~vec4<u32>(4294967295u, arg_1.x, 16235u, arg_1.x), ~vec4<u32>(4294967295u, 45338u, arg_2.e.x, var_1.e.x)))) ^ vec4<u32>(9485u, ~(~(~7460u)), 48140u, var_1.c.a.x);
    var_2 = ~(_wgslsmith_add_vec4_u32(~vec4<u32>(12639u, var_1.a.c, 0u, arg_1.x), vec4<u32>(var_2.x, var_2.x, 4294967295u, 1u) | countOneBits(vec4<u32>(1u, var_1.a.a.x, var_1.a.c, var_1.c.a.x))) | _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.x, 0u, 5710u, 1u), vec4<u32>(48184u, var_2.x, 75759u, arg_1.x), vec4<u32>(arg_1.x, arg_2.a.a.x, var_2.x, 15318u)), vec4<u32>(var_1.a.a.x, 14559u, arg_2.c.c, var_1.a.c) << (vec4<u32>(4294967295u, arg_1.x, 23896u, var_2.x) % vec4<u32>(32u))), _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.e.x, 1u, var_2.x, var_1.a.c), vec4<u32>(62714u, 4294967295u, var_1.a.c, var_2.x)), _wgslsmith_add_vec4_u32(vec4<u32>(arg_2.e.x, 0u, arg_2.e.x, arg_1.x), vec4<u32>(4294967295u, arg_1.x, var_1.c.a.x, 55162u)))));
    global1 = array<bool, 19>();
    return Struct_1(select(~var_2.xy, vec2<u32>(abs(1u), ~arg_2.a.a.x) ^ vec2<u32>(31898u, arg_1.x), !(!select(vec2<bool>(false, true), arg_0, global1[_wgslsmith_index_u32(0u, 19u)]))), -2276f, 2944u);
}

fn func_6(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: vec4<u32>) -> Struct_5 {
    var var_0 = func_4(vec2<f32>(2157f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(401f, arg_1.x)), _wgslsmith_f_op_f32(round(arg_1.x))))))), Struct_1(vec2<u32>(0u, arg_2.a.x), arg_2.b, arg_3.x)).c;
    var var_1 = func_3().x >> (max(arg_2.a.x, 64268u) % 32u);
    let var_2 = Struct_2(arg_2, max(_wgslsmith_sub_i32(u_input.b, ~u_input.a.x), u_input.a.x), func_2(386u < ~arg_0.a.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-153f, _wgslsmith_f_op_f32(f32(-1f) * -2389f), !global1[_wgslsmith_index_u32(4294967295u, 19u)])) - 850f)), vec2<i32>(u_input.b, -2147483647i << (_wgslsmith_dot_vec3_u32(arg_3.yxz, vec3<u32>(0u, arg_3.x, arg_2.a.x)) % 32u)), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, 38757u), arg_0.a.a));
    var_1 = _wgslsmith_add_i32(~(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -1i, u_input.a.x), -vec3<i32>(-2147483647i, -18611i, 46739i)) | (abs(u_input.b) >> (16098u % 32u))), ~func_3().x << (35084u % 32u));
    var var_3 = vec2<bool>(~abs(_wgslsmith_div_u32(arg_2.a.x, 4294967295u)) > var_0.a.c, (func_4(_wgslsmith_div_vec2_f32(vec2<f32>(982f, -871f), vec2<f32>(972f, -173f)), Struct_1(arg_3.wx, arg_2.b, var_0.a.c)).d.x != true) && false);
    return Struct_5(~4294967295u, 32955u, arg_0, select(!vec4<bool>(global1[_wgslsmith_index_u32(arg_3.x, 19u)] && false, !global1[_wgslsmith_index_u32(arg_0.a.a.x, 19u)], true, false), vec4<bool>(var_3.x, select(global1[_wgslsmith_index_u32(0u, 19u)], false, var_3.x) & (false & var_3.x), !func_4(vec2<f32>(-1227f, arg_0.a.b), var_0.a).d.x, global1[_wgslsmith_index_u32(var_0.a.c, 19u)]), !(!select(vec4<bool>(global1[_wgslsmith_index_u32(54998u, 19u)], false, var_3.x, true), vec4<bool>(false, global1[_wgslsmith_index_u32(arg_3.x, 19u)], false, var_3.x), vec4<bool>(true, false, global1[_wgslsmith_index_u32(arg_3.x, 19u)], true)))), _wgslsmith_div_f32(1393f, var_0.a.b));
}

fn func_7(arg_0: Struct_5, arg_1: f32, arg_2: f32) -> Struct_2 {
    let var_0 = Struct_2(arg_0.c.a, _wgslsmith_div_i32(u_input.a.x, reverseBits(u_input.a.x) << (arg_0.a % 32u)), func_5(arg_0.d.yx, (vec2<u32>(11950u, arg_0.c.a.a.x) ^ vec2<u32>(1u, 4294967295u)) ^ (vec2<u32>(68908u, arg_0.b) | (vec2<u32>(arg_0.b, arg_0.b) ^ arg_0.c.a.a)), Struct_2(Struct_1(vec2<u32>(arg_0.a, arg_0.a), arg_2, arg_0.c.a.c), -16447i, Struct_1(vec2<u32>(arg_0.a, 1u), -1000f, 30055u), firstLeadingBit(vec2<i32>(1i, u_input.a.x)) << (vec2<u32>(arg_0.c.a.c, arg_0.a) % vec2<u32>(32u)), func_5(func_6(arg_0.c, global0[_wgslsmith_index_u32(21443u, 8u)], Struct_1(vec2<u32>(169u, 1u), 1000f, arg_0.b), vec4<u32>(arg_0.b, arg_0.a, 47536u, 4294967295u)).d.wy, ~arg_0.c.a.a, Struct_2(arg_0.c.a, u_input.a.x, arg_0.c.a, vec2<i32>(u_input.a.x, u_input.a.x), arg_0.c.a.a), arg_0.d).a), select(!arg_0.d, arg_0.d, arg_0.d.x)), u_input.a.xx, firstLeadingBit(arg_0.c.a.a));
    global0 = array<vec4<f32>, 8>();
    global0 = array<vec4<f32>, 8>();
    global0 = array<vec4<f32>, 8>();
    let var_1 = arg_0.a;
    return Struct_2(var_0.c, 0i, arg_0.c.a, var_0.d, vec2<u32>(arg_0.c.a.a.x, 4509u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<f32>, 24>();
    var var_0 = func_7(func_6(Struct_3(Struct_1(vec2<u32>(1u, 1u), 477f, 36601u)), vec4<f32>(122f, _wgslsmith_f_op_f32(323f * 364f), 1f, _wgslsmith_f_op_f32(f32(-1f) * -916f)), func_5(select(!vec2<bool>(global1[_wgslsmith_index_u32(49884u, 19u)], true), func_1(873f, global2[_wgslsmith_index_u32(1u, 24u)], u_input.a.xw, global1[_wgslsmith_index_u32(45657u, 19u)]), true), vec2<u32>(1u, 1u), Struct_2(func_2(false, 268f), _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(23543i, u_input.a.x, 2147483647i, u_input.a.x)), func_2(true, -418f), vec2<i32>(40428i, -1i), vec2<u32>(1u, 1u)), vec4<bool>(any(vec3<bool>(false, false, global1[_wgslsmith_index_u32(20440u, 19u)])), global1[_wgslsmith_index_u32(4294967295u, 19u)] && false, !global1[_wgslsmith_index_u32(77981u, 19u)], true)), ~(~vec4<u32>(1u, 1u, 1u, 1u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1819f * -603f))) - -681f), _wgslsmith_f_op_f32(round(-578f)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2534f * _wgslsmith_f_op_f32(func_2(!global1[_wgslsmith_index_u32(0u, 19u)], _wgslsmith_f_op_f32(-var_0.c.b)).b + _wgslsmith_f_op_f32(sign(-104f)))) + _wgslsmith_f_op_f32(f32(-1f) * -1047f));
    var var_2 = var_1;
    global2 = array<vec3<f32>, 24>();
    let var_3 = var_0.c;
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(1u, 8u)]))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_3.b * -757f), _wgslsmith_f_op_f32(-var_3.b), _wgslsmith_f_op_f32(-var_0.a.b), 1000f) + global0[_wgslsmith_index_u32(var_0.c.c, 8u)])));
    let var_5 = 1i;
    var_0 = Struct_2(var_0.a, u_input.b, var_0.a, func_3().xw, ~(~firstLeadingBit(var_3.a)));
    let x = u_input.a;
    s_output = StorageBuffer(func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.b, var_3.b) + vec2<f32>(1000f, var_4.x)) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1157f, var_1), var_4.wz)))), Struct_1(firstTrailingBit(abs(var_0.e)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1), 386f)), ~1u)).c.a.b, var_0.c.a.x);
}

