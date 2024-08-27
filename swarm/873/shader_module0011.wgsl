struct Struct_1 {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: vec3<u32>,
    c: Struct_2,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<vec3<f32>, 29> = array<vec3<f32>, 29>(vec3<f32>(-1921f, -1540f, -2084f), vec3<f32>(-722f, -374f, 1000f), vec3<f32>(-629f, 1077f, 365f), vec3<f32>(-321f, 828f, -641f), vec3<f32>(-379f, -372f, -121f), vec3<f32>(-181f, 1000f, 1016f), vec3<f32>(1000f, -202f, -442f), vec3<f32>(-193f, 985f, -1180f), vec3<f32>(-762f, 584f, 896f), vec3<f32>(664f, -320f, 1223f), vec3<f32>(-437f, 155f, -1000f), vec3<f32>(1168f, -653f, -511f), vec3<f32>(-1000f, 399f, -227f), vec3<f32>(417f, 643f, -1519f), vec3<f32>(-1402f, 1000f, 444f), vec3<f32>(-1126f, -392f, -464f), vec3<f32>(-910f, 1033f, -138f), vec3<f32>(-803f, 1704f, 1000f), vec3<f32>(2231f, -197f, -1638f), vec3<f32>(1378f, -769f, -377f), vec3<f32>(-162f, -684f, 590f), vec3<f32>(-778f, -1256f, 1411f), vec3<f32>(2507f, 117f, -2330f), vec3<f32>(188f, -252f, -967f), vec3<f32>(-891f, 278f, 1183f), vec3<f32>(-272f, -133f, -488f), vec3<f32>(-1442f, -2008f, 450f), vec3<f32>(-1000f, -567f, -1000f), vec3<f32>(-202f, 844f, 1000f));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec2<bool> {
    global1 = array<vec3<f32>, 29>();
    var var_0 = Struct_2(Struct_1(~70288u, global0.x, 4294967295u, ~_wgslsmith_sub_u32(countOneBits(global0.x), 1u), ~(min(vec3<u32>(66964u, 75030u, 23709u), vec3<u32>(9251u, global0.x, 0u)) | vec3<u32>(global0.x, global0.x, global0.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -278f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1420f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(2202f, 895f)) * _wgslsmith_f_op_f32(f32(-1f) * -209f))), true)), ~global0.zz);
    var var_1 = select(vec2<bool>(true, true), !(!vec2<bool>(all(vec4<bool>(false, false, false, true)), false)), !(!(global0.x > 4294967295u)) | false);
    let var_2 = !vec4<bool>(false, var_1.x, false, var_1.x);
    var_1 = vec2<bool>(true, all(var_2.zw));
    return var_2.yw;
}

fn func_2() -> Struct_3 {
    global1 = array<vec3<f32>, 29>();
    let var_0 = func_3();
    let var_1 = Struct_2(Struct_1(global0.x, 1u, 71559u, _wgslsmith_mod_u32(~(~26489u), 4294967295u), ~countOneBits(vec3<u32>(global0.x, global0.x, 0u))), -2559f, vec2<u32>(~_wgslsmith_clamp_u32(global0.x, global0.x, 38317u) | global0.x, global0.x));
    var var_2 = min(-(vec4<i32>(u_input.a, 1i, u_input.a, u_input.a) | ~vec4<i32>(-23458i, 0i, u_input.a, u_input.a)), vec4<i32>(~1i, 0i, u_input.a, 1i)) ^ vec4<i32>(-(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 1i, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, -36806i, 54513i)) | (u_input.a & 1i)), _wgslsmith_clamp_i32(_wgslsmith_div_i32(u_input.a, u_input.a), u_input.a, ~(-1i)), u_input.a, u_input.a);
    let var_3 = global0.x;
    return Struct_3(_wgslsmith_dot_vec3_u32(~var_1.a.e, var_1.a.e | abs(vec3<u32>(1u, 1u, global0.x))), vec3<u32>(abs(_wgslsmith_sub_u32(~var_1.a.a, global0.x)), ~1u, _wgslsmith_div_u32(~(~global0.x), global0.x)), Struct_2(var_1.a, var_1.b, _wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u) ^ select(var_1.a.e.yx, vec2<u32>(29057u, var_1.a.b), vec2<bool>(var_0.x, true)), _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(global0.zy, vec2<u32>(global0.x, 4294967295u)), firstTrailingBit(global0.zx)))), var_2.zzy, max(vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_1.a.c, var_1.a.a, 4294967295u), var_1.a.e), 1u, firstLeadingBit(~39865u)), min(select(var_1.a.e, max(var_1.a.e, vec3<u32>(global0.x, global0.x, global0.x)), true), _wgslsmith_sub_vec3_u32(~vec3<u32>(var_1.a.b, 5652u, global0.x), ~vec3<u32>(global0.x, global0.x, var_1.c.x)))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec2<u32>) -> u32 {
    global0 = _wgslsmith_mod_vec3_u32(~(~_wgslsmith_mod_vec3_u32(arg_0.a.e ^ arg_1.a.e, arg_0.a.e)), ~max(_wgslsmith_mult_vec3_u32(arg_0.a.e, arg_1.a.e), _wgslsmith_add_vec3_u32(arg_0.a.e, arg_1.a.e)) ^ vec3<u32>(abs(0u), arg_1.a.c, global0.x));
    global1 = array<vec3<f32>, 29>();
    let var_0 = vec2<bool>(true | (_wgslsmith_f_op_f32(min(-396f, -961f)) <= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_2.c.b * arg_0.b)))), -2147483647i != (func_2().d.x ^ u_input.a));
    global1 = array<vec3<f32>, 29>();
    var var_1 = vec4<bool>(false, any(select(select(vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(var_0.x, true, var_0.x, false), false), vec4<bool>(true, var_0.x, false, var_0.x), false)) && false, all(!var_0), !(any(select(vec3<bool>(var_0.x, false, false), vec3<bool>(false, false, var_0.x), var_0.x)) & var_0.x));
    return _wgslsmith_div_u32(countOneBits(1874u), arg_3.x) ^ ~global0.x;
}

fn func_5(arg_0: i32, arg_1: vec4<u32>, arg_2: vec4<bool>, arg_3: bool) -> Struct_1 {
    global1 = array<vec3<f32>, 29>();
    global0 = _wgslsmith_mod_vec3_u32(arg_1.wzx, _wgslsmith_clamp_vec3_u32(~firstLeadingBit(vec3<u32>(23832u, 67273u, 1088u)), vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_mult_u32(global0.x, arg_1.x), 70077u), ~(~global0.x), arg_1.x), abs(abs(~arg_1.zwx))));
    global0 = firstTrailingBit(~arg_1.wxx);
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1454f);
    var var_1 = firstTrailingBit(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(arg_0, 0i, 1i, 2147483647i) | vec4<i32>(12984i, arg_0, arg_0, arg_0)), vec4<i32>(arg_0 >> (31325u % 32u), arg_0, _wgslsmith_mult_i32(1i, -1997i), 46057i >> (0u % 32u)))) << (arg_1 % vec4<u32>(32u));
    return Struct_1(arg_1.x, _wgslsmith_add_u32(_wgslsmith_mult_u32(global0.x, countOneBits(arg_1.x)), ~arg_1.x), _wgslsmith_clamp_u32(arg_1.x, ~0u, _wgslsmith_div_u32(1u, 1u)), _wgslsmith_clamp_u32(61691u | arg_1.x, global0.x, arg_1.x), _wgslsmith_mod_vec3_u32(abs(~(arg_1.ywz ^ vec3<u32>(1u, arg_1.x, arg_1.x))), _wgslsmith_mult_vec3_u32(firstLeadingBit(arg_1.yxw), countOneBits(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 0u, arg_1.x), vec3<u32>(arg_1.x, global0.x, arg_1.x))))));
}

fn func_1(arg_0: vec4<i32>, arg_1: u32, arg_2: vec4<f32>) -> Struct_1 {
    global1 = array<vec3<f32>, 29>();
    let var_0 = !(1u <= _wgslsmith_mod_u32(countOneBits(~arg_1), ~4294967295u));
    let var_1 = !(!(select(var_0, var_0, arg_2.x != -1620f) || false));
    global1 = array<vec3<f32>, 29>();
    var var_2 = true;
    return func_5(_wgslsmith_sub_i32(u_input.a, 1i), ~vec4<u32>(global0.x, func_4(Struct_2(Struct_1(global0.x, 5296u, arg_1, 63469u, vec3<u32>(arg_1, global0.x, 1u)), 1067f, vec2<u32>(1u, 0u)), Struct_2(Struct_1(0u, 0u, 62385u, 1u, vec3<u32>(61766u, 49107u, arg_1)), arg_2.x, global0.zx), func_2(), vec2<u32>(1u, global0.x)), 4294967295u, 4294967295u), select(vec4<bool>(true, func_3().x, any(vec4<bool>(true, var_0, true, true)), var_0), select(vec4<bool>(true, true, select(var_1, true, var_1), 29658i > arg_0.x), select(vec4<bool>(var_0, true, var_0, true), select(vec4<bool>(var_0, var_1, false, true), vec4<bool>(var_1, false, var_1, var_0), false), any(vec4<bool>(false, var_1, var_0, var_1))), select(!vec4<bool>(var_0, var_1, var_0, false), !vec4<bool>(true, var_1, var_1, var_0), !vec4<bool>(var_0, var_0, var_0, var_1))), !vec4<bool>(!var_1, true, false, var_0)), !(_wgslsmith_mod_u32(max(arg_1, 0u), arg_1) == global0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<f32>, 29>();
    global0 = vec3<u32>(global0.x, ~global0.x, ~max(global0.x, _wgslsmith_mod_u32(global0.x, ~34693u)));
    global0 = ~vec3<u32>(8184u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, ~global0.x, global0.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(48293u, global0.x, 1711u) | vec3<u32>(global0.x, 0u, 21207u), min(vec3<u32>(107210u, 4294967295u, 4294967295u), vec3<u32>(0u, 4294967295u, 15300u)), ~vec3<u32>(4294967295u, global0.x, 195u))), 1u);
    var var_0 = Struct_3(~(_wgslsmith_clamp_u32(49404u, abs(global0.x), _wgslsmith_div_u32(16911u, 14542u)) << (_wgslsmith_dot_vec2_u32(global0.yz, global0.zx) % 32u)), _wgslsmith_mod_vec3_u32(min(vec3<u32>(44768u, global0.x, select(33122u, 8113u, false)), ~(vec3<u32>(1u, 20082u, global0.x) | vec3<u32>(31270u, global0.x, global0.x))), vec3<u32>(global0.x, global0.x | (global0.x << (1u % 32u)), 1u)), Struct_2(func_1(-(vec4<i32>(u_input.a, u_input.a, u_input.a, -11852i) >> (vec4<u32>(global0.x, 25888u, 35576u, 4294967295u) % vec4<u32>(32u))), global0.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-228f, 534f, -234f, -1000f) * vec4<f32>(111f, 652f, 1322f, 374f)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), max(~vec2<u32>(global0.x, 14145u), ~(global0.yy >> (global0.yy % vec2<u32>(32u))))), select(_wgslsmith_mod_vec3_i32(select(vec3<i32>(u_input.a, -2147483647i, 0i), vec3<i32>(u_input.a, 46232i, u_input.a), false), min(vec3<i32>(0i, -1i, u_input.a), vec3<i32>(u_input.a, u_input.a, -1i))) ^ (vec3<i32>(-1i) * -vec3<i32>(-53673i, u_input.a, u_input.a)), _wgslsmith_div_vec3_i32(countOneBits(vec3<i32>(49704i, u_input.a, 1i)), _wgslsmith_div_vec3_i32(vec3<i32>(13416i, -1i, 0i), vec3<i32>(u_input.a, u_input.a, -1i))), !select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true), vec3<bool>(false, false, true), vec3<bool>(true, true, true))), vec3<u32>(global0.x ^ min(global0.x, 4294967295u), _wgslsmith_div_u32(abs(abs(global0.x)), ~_wgslsmith_div_u32(7919u, global0.x)), ~4294967295u | ~global0.x));
    var var_1 = func_1(_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(select(vec4<i32>(49049i, var_0.d.x, 23245i, -1i), vec4<i32>(u_input.a, var_0.d.x, var_0.d.x, 0i), vec4<bool>(true, false, false, true)), vec4<i32>(33841i, -20579i, u_input.a, 61495i) | vec4<i32>(50533i, -16538i, -1i, var_0.d.x)) | ~vec4<i32>(u_input.a, var_0.d.x, var_0.d.x, 0i), -abs(vec4<i32>(2147483647i, u_input.a, 7617i, var_0.d.x))), global0.x, vec4<f32>(-1008f, _wgslsmith_div_f32(-1133f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(var_0.c.b, var_0.c.b)), _wgslsmith_f_op_f32(ceil(2049f))))), 512f, _wgslsmith_f_op_f32(var_0.c.b - _wgslsmith_f_op_f32(-1f))));
    var_0 = func_2();
    let var_2 = func_4(var_0.c, func_2().c, func_2(), var_1.e.zy << (vec2<u32>(_wgslsmith_mod_u32(global0.x, 34142u), 5993u) % vec2<u32>(32u)));
    let var_3 = vec2<bool>(true, true);
    var var_4 = var_3.x;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~var_0.d.zx), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -643f)) + 451f), select(~abs(u_input.a), u_input.a, var_3.x), i32(-1i) * -var_0.d.x);
}

