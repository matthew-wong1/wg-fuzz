struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: i32,
    d: vec3<bool>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(min(-500f, _wgslsmith_f_op_f32(max(-745f, _wgslsmith_f_op_f32(global0.x * -956f))))), 777f, arg_1.e.x), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.e.x)) + _wgslsmith_f_op_f32(-arg_1.a.x)), arg_1.a.x, -793f)));
    let var_1 = Struct_2(vec4<bool>(true, !select(all(vec4<bool>(true, true, true, true)), !arg_1.d.x, any(vec3<bool>(true, true, arg_1.d.x))), arg_1.d.x && arg_1.d.x, arg_1.d.x), arg_1, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_1.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(656f, var_0.x)))), -18617i, arg_1.c | ~_wgslsmith_clamp_i32(45017i, -1i, -51988i), !(!(!arg_1.d)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, arg_1.e.x, -744f, 1129f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(arg_1.e + vec4<f32>(global0.x, var_0.x, 1408f, 224f)), _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.e.x, global0.x, arg_1.e.x, var_0.x), vec4<f32>(arg_1.e.x, -1146f, -1000f, -450f)), false || arg_1.d.x)), vec4<bool>(false, true, all(vec4<bool>(true, true, false, true)), arg_1.d.x)))));
    var var_2 = reverseBits(min(reverseBits((-33351i << (0u % 32u)) >> (1u % 32u)), 1i));
    var_0 = _wgslsmith_f_op_vec3_f32(-var_1.c.e.xww);
    let var_3 = _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x))))));
    return select(vec3<bool>(all(select(!vec3<bool>(arg_1.d.x, var_1.b.d.x, var_1.b.d.x), arg_1.d, !var_1.a.wzz)), _wgslsmith_div_i32(var_1.b.b << (u_input.c % 32u), 1i) <= -(3508i | arg_1.b), arg_1.d.x), select(var_1.c.d, vec3<bool>(-arg_1.b <= (0i & arg_1.c), !(var_1.a.x || true), _wgslsmith_div_f32(var_0.x, 858f) > -271f), var_1.c.d.x & true), vec3<bool>(var_1.a.x, arg_1.d.x, !select(!arg_1.d.x, arg_1.d.x, all(vec3<bool>(false, false, arg_1.d.x)))));
}

fn func_2() -> bool {
    global0 = vec3<f32>(-1951f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(sign(-600f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1196f, _wgslsmith_f_op_f32(max(global0.x, -837f)))))));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1151f, global0.x, global0.x))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(-1629f)), 651f, global0.x) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -648f, global0.x) * vec3<f32>(global0.x, global0.x, global0.x)) - vec3<f32>(2044f, global0.x, 1461f)))));
    var var_0 = Struct_1(vec2<f32>(-1000f, global0.x), ~(~_wgslsmith_sub_i32(-11407i << (u_input.c % 32u), -u_input.d.x)), max(firstLeadingBit(~(~u_input.e)), ~(u_input.d.x ^ _wgslsmith_mult_i32(u_input.b.x, u_input.e))), func_3(u_input.c, Struct_1(global0.xz, -38582i, 27588i, select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true)), vec3<bool>(false, true, true), true), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-882f, -1000f, -157f, -930f) + vec4<f32>(-837f, 331f, -544f, 492f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.x, global0.x, global0.x, global0.x))))))));
    return !func_3(abs(u_input.a) | abs(27165u), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-681f, global0.x)), -_wgslsmith_clamp_i32(var_0.c, var_0.b, 13262i), u_input.e, select(select(vec3<bool>(var_0.d.x, false, var_0.d.x), var_0.d, var_0.d.x), !var_0.d, select(vec3<bool>(true, var_0.d.x, var_0.d.x), var_0.d, true)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-var_0.e))))).x;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> bool {
    global0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-793f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1202f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-240f)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.x))), 810f, 1f) * arg_0.e.wxz), !(!vec3<bool>(all(arg_0.d), false, select(false, true, arg_1.b.d.x)))));
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(1409f)), _wgslsmith_f_op_f32(f32(-1f) * -1213f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(644f)))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.c.e.xxw - arg_0.e.wyy) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, arg_1.b.e.x, -1488f) * arg_0.e.yxz))) - _wgslsmith_f_op_vec3_f32(abs(arg_1.b.e.yzx))));
    global0 = vec3<f32>(global0.x, arg_0.e.x, _wgslsmith_f_op_f32(step(global0.x, _wgslsmith_div_f32(955f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -161f))))));
    var var_0 = arg_1;
    let var_1 = arg_1.b;
    return (1u & ~u_input.c) != 17500u;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<f32>, arg_2: vec3<f32>) -> Struct_1 {
    var var_0 = vec4<bool>(!arg_0.x, arg_0.x, func_4(Struct_1(_wgslsmith_f_op_vec2_f32(-arg_1), _wgslsmith_clamp_i32(429i, ~u_input.d.x, 2147483647i), u_input.b.x, vec3<bool>(false || arg_0.x, func_2(), 326f >= arg_2.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-369f, 1000f, -525f, -557f))))), Struct_2(select(!vec4<bool>(arg_0.x, true, true, arg_0.x), arg_0, arg_0.x), Struct_1(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0.x, global0.x))), -12079i, min(u_input.d.x, -8019i), arg_0.yww, vec4<f32>(global0.x, -279f, 449f, arg_2.x)), Struct_1(_wgslsmith_f_op_vec2_f32(arg_1 * vec2<f32>(438f, 1082f)), ~(-20517i), _wgslsmith_mult_i32(-2147483647i, 1i), select(vec3<bool>(arg_0.x, true, false), arg_0.ywx, arg_0.x), vec4<f32>(arg_2.x, arg_2.x, arg_1.x, 502f)))), u_input.a == ~max(_wgslsmith_div_u32(u_input.a, 4294967295u), ~1u));
    var_0 = vec4<bool>(0u == u_input.a, true, (-336f <= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1281f + 820f)))) == false, func_4(Struct_1(_wgslsmith_f_op_vec2_f32(trunc(arg_1)), 2147483647i | _wgslsmith_clamp_i32(2147483647i, -1i, u_input.b.x), firstLeadingBit(reverseBits(-4685i)), arg_0.wyx, vec4<f32>(_wgslsmith_f_op_f32(arg_1.x * -542f), 1f, -1000f, _wgslsmith_f_op_f32(f32(-1f) * -338f))), Struct_2(vec4<bool>(var_0.x, true, 1u > u_input.a, arg_2.x == arg_1.x), Struct_1(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_2.x, arg_2.x))), -43965i, _wgslsmith_div_i32(u_input.d.x, u_input.d.x), !arg_0.wxw, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1935f, global0.x, -1971f, global0.x) + vec4<f32>(-200f, global0.x, arg_2.x, arg_2.x))), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, arg_1.x) + vec2<f32>(arg_1.x, arg_1.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 0i), vec2<i32>(u_input.b.x, u_input.e)), 10924i, vec3<bool>(true, var_0.x, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -537f, arg_1.x, -1018f))))));
    var var_1 = Struct_1(arg_1, ~(_wgslsmith_mult_i32(u_input.d.x, _wgslsmith_div_i32(-1i, 10451i)) ^ u_input.d.x), ~(~u_input.d.x), !var_0.wyz, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_1.x)), _wgslsmith_f_op_f32(-global0.x))), arg_2.x, -838f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2.x))) + 1219f)));
    global0 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(221f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-591f, global0.x)))))), _wgslsmith_f_op_f32(abs(-644f)), _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(abs(978f))));
    global0 = vec3<f32>(_wgslsmith_f_op_f32(select(-101f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_2.x)) * var_1.a.x), true)), arg_1.x, arg_1.x);
    return Struct_1(_wgslsmith_f_op_vec2_f32(-arg_2.yx), min(_wgslsmith_div_i32(abs(-var_1.c), -15120i), _wgslsmith_mult_i32(_wgslsmith_sub_i32(var_1.b ^ var_1.b, _wgslsmith_sub_i32(0i, -40878i)), u_input.d.x)), ~((_wgslsmith_add_i32(var_1.b, u_input.b.x) | ~u_input.d.x) | _wgslsmith_mod_i32(-15255i, ~var_1.c)), var_1.d, _wgslsmith_f_op_vec4_f32(round(var_1.e)));
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: vec2<i32>) -> vec3<u32> {
    var var_0 = -firstLeadingBit(arg_1);
    let var_1 = arg_0;
    let var_2 = !vec4<bool>(var_1.c == -17114i, true, true || !(arg_0.d.x || false), any(!(!vec4<bool>(var_1.d.x, true, var_1.d.x, arg_0.d.x))));
    var var_3 = abs(-_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(arg_2, abs(u_input.d.yy)), vec2<i32>(21239i | u_input.b.x, 1i)));
    var var_4 = arg_0.d;
    return vec3<u32>(~_wgslsmith_sub_u32(~(~u_input.a), 1u), ~((31750u >> (u_input.a % 32u)) & _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.a, 66733u), vec3<u32>(u_input.c, u_input.a, 4294967295u))) >> (~u_input.a % 32u), 17473u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<f32>(1281f, -866f, _wgslsmith_f_op_f32(1248f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.x, -1112f)))));
    global0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, 300f, -1132f), vec3<f32>(1130f, global0.x, global0.x))))) + vec3<f32>(global0.x, 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - global0.x))))));
    var var_0 = ~(~vec3<u32>(~46108u, reverseBits(9294u), ~73391u)) ^ (countOneBits(func_5(func_1(vec4<bool>(false, true, true, false), vec2<f32>(-1416f, global0.x), vec3<f32>(-578f, global0.x, 464f)), min(-4292i, u_input.b.x), firstTrailingBit(vec2<i32>(23008i, u_input.e)))) & _wgslsmith_sub_vec3_u32(vec3<u32>(func_5(Struct_1(global0.yz, u_input.d.x, u_input.e, vec3<bool>(false, false, false), vec4<f32>(-2134f, global0.x, -1492f, global0.x)), 2147483647i, vec2<i32>(u_input.d.x, -1i)).x, 0u, _wgslsmith_sub_u32(u_input.c, u_input.a)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(7513u, 14099u, 55161u), max(vec3<u32>(4294967295u, u_input.c, 0u), vec3<u32>(u_input.a, u_input.c, u_input.c)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, 12657u, 27865u), vec3<u32>(1u, u_input.a, u_input.a)))));
    let var_1 = countOneBits(vec2<u32>(var_0.x | u_input.a, _wgslsmith_mult_u32(4294967295u, _wgslsmith_clamp_u32(0u, 0u, u_input.a)) & 0u));
    var var_2 = Struct_2(!select(select(vec4<bool>(false, false, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true)), true), select(vec4<bool>(false, false, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), true), true), any(vec4<bool>(false, true, false, false)) & any(vec4<bool>(false, true, false, false))), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(-579f, global0.x)), -1167f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.yy - global0.yy) * vec2<f32>(global0.x, global0.x))), -41173i, -34554i, !vec3<bool>(10287u != var_0.x, func_4(Struct_1(global0.yz, u_input.d.x, 32523i, vec3<bool>(true, true, false), vec4<f32>(-1089f, -1372f, -1365f, -114f)), Struct_2(vec4<bool>(false, false, false, false), Struct_1(global0.yy, u_input.e, 1i, vec3<bool>(true, true, false), vec4<f32>(global0.x, global0.x, 519f, global0.x)), Struct_1(vec2<f32>(-252f, -247f), u_input.d.x, 1i, vec3<bool>(false, false, false), vec4<f32>(global0.x, -597f, -1000f, global0.x)))), true), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(round(173f)), -470f, -1152f, -680f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-901f, -959f, global0.x, global0.x)), vec4<bool>(0i > u_input.e, func_1(vec4<bool>(false, true, false, false), global0.zx, vec3<f32>(2445f, global0.x, global0.x)).d.x, all(vec2<bool>(true, false)), true)))), Struct_1(global0.zy, -(~2147483647i), -2147483647i, vec3<bool>(true, (global0.x < global0.x) & false, all(vec2<bool>(false, false))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1000f - global0.x), _wgslsmith_f_op_f32(floor(global0.x)), -589f, -1485f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(~var_1.x, u_input.a, 0u | u_input.c), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 1u, var_0.x), vec3<u32>(u_input.c, u_input.a, var_1.x) | vec3<u32>(u_input.c, var_0.x, var_1.x), ~vec3<u32>(55624u, var_1.x, u_input.a))), vec3<u32>(~1u | u_input.c, var_0.x, 5580u)), ~abs(_wgslsmith_mod_vec2_u32(var_1 | vec2<u32>(0u, 4294967295u), vec2<u32>(u_input.a, var_1.x))));
}

