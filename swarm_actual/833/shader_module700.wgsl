struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> vec2<u32> {
    let var_0 = 179f;
    var var_1 = vec3<u32>(0u, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.c, 88585u), ~vec2<u32>(u_input.c, 4294967295u), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 41227u), vec2<u32>(1u, u_input.c))), _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(u_input.a, u_input.a))), reverseBits(~vec2<u32>(0u, u_input.a) << (~vec2<u32>(u_input.c, u_input.c) % vec2<u32>(32u)))), _wgslsmith_div_u32(_wgslsmith_clamp_u32(~firstLeadingBit(0u), u_input.a, _wgslsmith_div_u32(u_input.b & 43367u, firstTrailingBit(4294967295u))), _wgslsmith_mult_u32(1u, 1u)));
    var_1 = ~firstLeadingBit(vec3<u32>(~1u, ~(~var_1.x), 4294967295u));
    var_1 = ~_wgslsmith_div_vec3_u32(vec3<u32>(var_1.x, ~26162u, _wgslsmith_mod_u32(var_1.x, 1u)), countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(5858u, 85328u, 0u), vec3<u32>(4294967295u, 0u, var_1.x)))) & firstLeadingBit(~max(~vec3<u32>(u_input.a, u_input.a, var_1.x), abs(vec3<u32>(18520u, 1u, var_1.x))));
    var_1 = min(_wgslsmith_mod_vec3_u32(firstTrailingBit(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, u_input.c, var_1.x), vec3<u32>(52002u, 4294967295u, 4294967295u))), ~vec3<u32>(_wgslsmith_mult_u32(65112u, 58518u), 0u, ~18515u)), countOneBits(abs(max(min(vec3<u32>(u_input.c, 32923u, var_1.x), vec3<u32>(36320u, 4294967295u, var_1.x)), countOneBits(vec3<u32>(0u, u_input.a, var_1.x))))));
    return ~var_1.yz;
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: u32) -> Struct_1 {
    let var_0 = Struct_1(~(~_wgslsmith_sub_i32(1i, i32(-1i) * -29762i)), vec4<bool>((any(vec4<bool>(true, true, true, false)) == true) && true, false, true, false));
    let var_1 = -(select(select(vec2<i32>(var_0.a, var_0.a), vec2<i32>(var_0.a, -29736i), var_0.b.x) & (vec2<i32>(var_0.a, 0i) | vec2<i32>(1i, var_0.a)), firstLeadingBit(vec2<i32>(var_0.a, -2147483647i)), var_0.b.zz) >> (reverseBits((vec2<u32>(arg_2, u_input.c) | vec2<u32>(u_input.a, arg_2)) << (func_3(var_0.a, Struct_1(var_0.a, vec4<bool>(var_0.b.x, false, var_0.b.x, true))) % vec2<u32>(32u))) % vec2<u32>(32u)));
    let var_2 = _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(33051u, u_input.b, 3965u, 78717u), vec4<u32>(u_input.c, arg_1, 14593u, u_input.b), vec4<u32>(arg_1, arg_1, 66267u, 0u)) & ~vec4<u32>(arg_2, 4294967295u, arg_2, 0u), vec4<u32>(arg_2, 43439u, arg_1, 1546u) | vec4<u32>(1u, 18440u, arg_1, arg_2), vec4<u32>(func_3(var_1.x, var_0).x, ~arg_1, firstTrailingBit(arg_1), ~4294967295u)) | ~(~vec4<u32>(arg_2, u_input.b, u_input.a, arg_2) >> ((vec4<u32>(89301u, 0u, 28349u, arg_1) ^ vec4<u32>(0u, u_input.b, u_input.c, 1u)) % vec4<u32>(32u))), abs(reverseBits(countOneBits(vec4<u32>(arg_2, 50877u, u_input.c, arg_2)))), _wgslsmith_mod_vec4_u32(select(~max(vec4<u32>(u_input.b, u_input.c, 66447u, u_input.c), vec4<u32>(1u, u_input.b, arg_2, arg_1)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 1u, 2357u), vec4<u32>(4294967295u, 0u, arg_2, arg_2)), !(!var_0.b.x)), select(vec4<u32>(4294967295u, arg_1, 1u, arg_2) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(arg_1, 3965u, 62629u, 1u), vec4<u32>(arg_1, 4294967295u, u_input.c, u_input.c)), ~vec4<u32>(51510u, 11670u, arg_2, arg_1) | ~vec4<u32>(u_input.b, arg_1, arg_2, 72457u), vec4<bool>(true, true, false, true))));
    let var_3 = var_0;
    var var_4 = false;
    return var_3;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = func_2(arg_1.x, ~(~_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(arg_3, arg_3), arg_3)), ~(~arg_3.x));
    let var_1 = select(~(~34088u), abs(~arg_3.x), all(select(!arg_0.b.ww, select(!arg_2.b.xy, func_2(arg_1.x, 19798u, u_input.b).b.xz, any(vec2<bool>(var_0.b.x, arg_0.b.x))), vec2<bool>(true || arg_0.b.x, arg_2.b.x))));
    let var_2 = Struct_1(arg_0.a << (1u % 32u), var_0.b);
    var var_3 = vec2<i32>(var_2.a, max((_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.a, var_0.a, var_0.a), vec3<i32>(0i, 1i, var_0.a)) & countOneBits(1i)) & ~max(-2147483647i, -238i), ~arg_2.a | -var_2.a));
    var_3 = vec2<i32>(var_0.a, abs(-18757i) & arg_2.a);
    return arg_2;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: i32) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-arg_2.x);
    let var_1 = countOneBits(u_input.a);
    let var_2 = Struct_1(35789i, !arg_1.b);
    let var_3 = var_2;
    let var_4 = select(vec2<bool>(all(select(arg_1.b.xwx, arg_1.b.wyx, vec3<bool>(arg_1.b.x, true, var_2.b.x))), !(!(arg_0.a <= var_2.a))), func_2(var_0, var_1, 1u).b.yz, arg_1.b.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-760f, var_0));
}

fn func_1(arg_0: bool) -> vec4<bool> {
    let var_0 = vec4<u32>(70838u, u_input.c, 26821u << (~u_input.a % 32u), 33135u);
    var var_1 = !(!vec4<bool>(true, true, all(!vec2<bool>(arg_0, false)), arg_0 && arg_0));
    var var_2 = _wgslsmith_div_f32(-559f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_5(func_4(func_2(-685f, u_input.b, 4294967295u), _wgslsmith_f_op_vec2_f32(vec2<f32>(1074f, -1019f) * vec2<f32>(896f, 1042f)), Struct_1(20494i, vec4<bool>(false, true, true, false)), countOneBits(var_0)), func_4(Struct_1(-1i, vec4<bool>(arg_0, var_1.x, true, arg_0)), _wgslsmith_div_vec2_f32(vec2<f32>(-227f, -465f), vec2<f32>(-1556f, 1512f)), Struct_1(-3785i, vec4<bool>(false, true, true, var_1.x)), _wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, var_0.x, var_0.x, u_input.b), vec4<u32>(9192u, 0u, 1u, u_input.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-127f, 184f, 242f, -207f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(958f, 1314f, 1293f, 1288f))), 1i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(-2314i, 1i, 13283i), vec3<i32>(0i, 0i, 30459i)))), -2501f)));
    var var_3 = -2147483647i;
    var var_4 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-939f, _wgslsmith_f_op_f32(f32(-1f) * -173f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-376f - -375f) - _wgslsmith_f_op_f32(976f - 1177f)), -790f))));
    return vec4<bool>(!func_4(func_2(1859f, ~19537u, var_0.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_4.x, var_4.x) + vec2<f32>(var_4.x, -235f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_4.x, -1705f) - vec2<f32>(var_4.x, -144f))), Struct_1(abs(-76131i), !vec4<bool>(arg_0, false, true, false)), firstLeadingBit(~vec4<u32>(u_input.a, 0u, 0u, var_0.x))).b.x, true, all(func_4(func_2(var_4.x, var_0.x, countOneBits(u_input.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_4.x, -2334f) - vec2<f32>(var_4.x, -666f))), func_2(var_4.x, 1u, 78124u), ~vec4<u32>(4294967295u, u_input.a, 4294967295u, 1u)).b.xx), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-3704i, select(func_1(false), func_4(Struct_1(~(-2147483647i), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-692f, -284f))), Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(6485i, -45588i, 9725i), vec3<i32>(-2147483647i, -23700i, -46667i)), vec4<bool>(false, true, true, true)), ~(~vec4<u32>(10327u, u_input.a, u_input.b, u_input.a))).b, select(func_1(true), func_4(func_2(-666f, u_input.a, u_input.a), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-336f, 524f), vec2<f32>(347f, -133f))), func_2(710f, u_input.c, u_input.b), vec4<u32>(1u, u_input.c, 1u, u_input.c)).b, func_1(all(vec4<bool>(false, true, false, false))))));
    var_0 = Struct_1(-7672i, vec4<bool>(true, true, true, false));
    let var_1 = u_input.c;
    let var_2 = _wgslsmith_f_op_f32(692f + 1075f);
    var var_3 = ~_wgslsmith_add_vec4_u32(select(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 62186u, 4294967295u, 74106u) | vec4<u32>(28211u, var_1, 0u, 7303u), min(vec4<u32>(0u, var_1, u_input.b, 0u), vec4<u32>(4294967295u, 66193u, 9221u, var_1))), ~vec4<u32>(var_1, var_1, var_1, 35780u), func_2(_wgslsmith_f_op_f32(var_2 * var_2), func_3(23223i, Struct_1(1i, vec4<bool>(var_0.b.x, false, true, var_0.b.x))).x, u_input.a).b), vec4<u32>(select(~30146u, 0u, var_0.b.x || var_0.b.x), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 79280u, 4294967295u), vec3<u32>(1u, 39894u, 13736u)), abs(~0u), u_input.a));
    let var_4 = func_2(var_2, ~var_3.x, 1u);
    let var_5 = max(~reverseBits(var_1), 54159u);
    let var_6 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_4.a, var_0.a, ~var_0.a, ~(~var_6.a)), abs(vec4<i32>(var_0.a, 26115i, -3331i, 1i) | vec4<i32>(15501i, var_0.a, var_4.a, var_6.a)) << (~firstLeadingBit(vec4<u32>(72990u, 0u, var_3.x, 0u)) % vec4<u32>(32u)), vec4<i32>(0i, var_4.a, ~(-36950i) | var_6.a, _wgslsmith_div_i32(var_6.a, 1i))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2 - var_2), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(var_2, var_2)), -694f, select(false, var_4.b.x, var_6.b.x))) * 1f)), min(vec3<u32>(_wgslsmith_dot_vec2_u32(var_3.xw, var_3.yw), 34756u, var_3.x), max(vec3<u32>(u_input.c, 5811u, 0u), ~vec3<u32>(var_3.x, var_1, var_5)) | firstTrailingBit(vec3<u32>(var_1, var_1, 31377u))));
}

