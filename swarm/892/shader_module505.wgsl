struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 14> = array<vec2<f32>, 14>(vec2<f32>(-366f, 1000f), vec2<f32>(-756f, -108f), vec2<f32>(813f, 1483f), vec2<f32>(-829f, -125f), vec2<f32>(856f, -1019f), vec2<f32>(368f, 1046f), vec2<f32>(-590f, -871f), vec2<f32>(108f, 1066f), vec2<f32>(309f, 601f), vec2<f32>(-1002f, -1240f), vec2<f32>(604f, -1215f), vec2<f32>(-152f, -676f), vec2<f32>(661f, -387f), vec2<f32>(-1000f, -1000f));

var<private> global1: Struct_1;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<i32>) -> i32 {
    var var_0 = _wgslsmith_div_vec3_i32(vec3<i32>(1i, arg_0.x, u_input.b >> (~4294967295u % 32u)), firstTrailingBit(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, arg_0.x, -1i), vec3<i32>(-2147483647i, arg_0.x, u_input.b)))) >> (~select(max(u_input.c.zzz, u_input.c.wxx), min(vec3<u32>(u_input.d.x, u_input.c.x, u_input.a), ~u_input.c.yxy), vec3<bool>(!global1.a.x, global1.a.x || true, u_input.b >= u_input.b)) % vec3<u32>(32u));
    var var_1 = Struct_4(vec2<i32>(var_0.x, u_input.b), ~_wgslsmith_add_u32(4294967295u, ~u_input.d.x), select(vec3<u32>(u_input.a, u_input.a, select(93202u, 24246u << (1u % 32u), !global1.a.x)), u_input.c.xzz, (1i > max(-2147483647i, var_0.x)) || global1.a.x), true);
    var_1 = Struct_4(_wgslsmith_clamp_vec2_i32(reverseBits(_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, -7252i), vec2<i32>(arg_0.x, arg_0.x)), arg_0)), _wgslsmith_sub_vec2_i32(~vec2<i32>(u_input.b, arg_0.x) & -var_0.zz, var_0.xx), ~countOneBits(~var_0.zy)), var_1.c.x, select(max(vec3<u32>(0u, u_input.d.x >> (6521u % 32u), u_input.d.x), _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(65382u, 74163u, u_input.d.x), u_input.c.zyz), min(u_input.c.xxz, var_1.c), reverseBits(u_input.c.yzz))), abs(~u_input.c.xyy) ^ _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.c.wxz, vec3<u32>(4294967295u, 1u, var_1.c.x), vec3<u32>(44707u, 27758u, 29405u)), ~vec3<u32>(1u, 93617u, 4583u)), var_1.d), !(549f != _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-534f, -618f))))));
    var var_2 = var_0.x ^ ~var_0.x;
    global0 = array<vec2<f32>, 14>();
    return ~arg_0.x;
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: vec3<u32>) -> vec2<i32> {
    let var_0 = Struct_1(!global1.a);
    var var_1 = ~(~0u) >= ~(~reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, 3641u, 26298u), arg_2)));
    var var_2 = Struct_3(reverseBits(countOneBits(_wgslsmith_mult_vec2_i32(vec2<i32>(0i, 2147483647i), vec2<i32>(u_input.b, u_input.b)) | firstLeadingBit(vec2<i32>(-2147483647i, -1i)))), Struct_2(select(countOneBits(vec4<i32>(arg_1, u_input.b, arg_1, u_input.b)), select(-vec4<i32>(1i, u_input.b, 2147483647i, 9992i), -vec4<i32>(arg_1, 66225i, -1i, 25010i), select(global1.a, global1.a, true)), -u_input.b < countOneBits(u_input.b)), vec2<i32>(38346i, -arg_1 & ~u_input.b), Struct_1(select(vec4<bool>(var_0.a.x, global1.a.x, global1.a.x, false), !global1.a, true)), arg_2.x), Struct_1(select(vec4<bool>(global1.a.x, var_0.a.x, true, !var_0.a.x), vec4<bool>(var_0.a.x, var_0.a.x, global1.a.x, true), !(u_input.b >= u_input.b))), Struct_2(~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, -1i, u_input.b, 12858i), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, arg_1, u_input.b, u_input.b), vec4<i32>(arg_1, u_input.b, u_input.b, arg_1))), min(max(vec2<i32>(u_input.b, 0i) ^ vec2<i32>(u_input.b, -1i), vec2<i32>(u_input.b, 1i)), ~vec2<i32>(-6431i, arg_1)), var_0, ~1u), var_0);
    global1 = var_2.b.c;
    let var_3 = -arg_1;
    return vec2<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(1i, _wgslsmith_mult_i32(-74200i, 13133i)), vec2<i32>(var_3, abs(_wgslsmith_sub_i32(u_input.b, 1i)))), 1i ^ firstLeadingBit(u_input.b));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_2 {
    global0 = array<vec2<f32>, 14>();
    var var_0 = Struct_3(-_wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(~vec2<i32>(31139i, u_input.b), ~vec2<i32>(u_input.b, u_input.b)), func_4(u_input.c.x, func_3(vec2<i32>(u_input.b, 2147483647i)), vec3<u32>(113114u, u_input.a, u_input.c.x) | vec3<u32>(u_input.a, 4386u, u_input.d.x))), Struct_2(firstTrailingBit(abs(~vec4<i32>(6507i, u_input.b, -1i, u_input.b))), -min(~vec2<i32>(-20978i, u_input.b), vec2<i32>(-33370i, u_input.b)), arg_1, ~firstTrailingBit(~16534u)), Struct_1(!arg_1.a), Struct_2(~vec4<i32>(_wgslsmith_div_i32(3393i, -2147483647i), u_input.b & 0i, u_input.b >> (u_input.a % 32u), 49905i), vec2<i32>(1i, func_4(countOneBits(u_input.a), u_input.b, abs(u_input.c.xxw)).x), Struct_1(!select(vec4<bool>(arg_2.a.x, arg_1.a.x, false, arg_2.a.x), vec4<bool>(arg_1.a.x, true, true, false), global1.a)), countOneBits(~0u)), arg_1);
    var var_1 = Struct_3(abs(reverseBits(var_0.d.a.wz)), Struct_2(_wgslsmith_mod_vec4_i32((var_0.b.a | vec4<i32>(u_input.b, -31811i, 38929i, u_input.b)) << (~u_input.c % vec4<u32>(32u)), select(var_0.b.a, var_0.d.a | var_0.b.a, select(arg_1.a, arg_2.a, false))), abs(~vec2<i32>(u_input.b, var_0.a.x)), arg_2, var_0.d.d), arg_1, var_0.b, arg_2);
    var var_2 = vec4<u32>(var_0.d.d, ~(~(~29822u)), 85091u, u_input.a);
    var var_3 = !(!(!any(var_0.e.a)) && false);
    return var_1.b;
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<i32>, arg_2: vec3<i32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(775f, 449f, -2510f, 1000f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1044f, 279f, -1556f, 1201f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-361f, 233f, 482f, 519f)) * _wgslsmith_div_vec4_f32(vec4<f32>(-802f, -407f, -643f, -780f), vec4<f32>(-545f, 1247f, -1768f, -988f))), vec4<bool>(false, global1.a.x, true, global1.a.x))) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-1088f * 1000f), _wgslsmith_f_op_f32(max(-865f, -330f)), -802f, _wgslsmith_f_op_f32(trunc(1000f)))))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(473f, var_0.x));
    global0 = array<vec2<f32>, 14>();
    let var_2 = Struct_3(vec2<i32>(max(~27073i | u_input.b, 2147483647i), -5466i), func_2(var_0.www, Struct_1(global1.a), Struct_1(vec4<bool>(true, true, true, select(global1.a.x, global1.a.x, global1.a.x)))), func_2(var_0.zxw, Struct_1(func_2(_wgslsmith_f_op_vec3_f32(var_0.www - vec3<f32>(-1180f, var_0.x, var_0.x)), Struct_1(global1.a), func_2(var_0.zxy, Struct_1(global1.a), Struct_1(global1.a)).c).c.a), func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_0.yxx, vec3<f32>(-104f, var_0.x, 389f), global1.a.wyw))), func_2(var_0.zzy, Struct_1(vec4<bool>(true, false, true, global1.a.x)), Struct_1(global1.a)).c, Struct_1(vec4<bool>(true, true, false, global1.a.x))).c).c, func_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, -405f, var_0.x))), _wgslsmith_f_op_vec3_f32(-var_0.yyx)), func_2(vec3<f32>(_wgslsmith_f_op_f32(-1398f * var_0.x), 812f, _wgslsmith_f_op_f32(1293f + var_0.x)), func_2(var_0.yyz, Struct_1(global1.a), func_2(vec3<f32>(var_0.x, 272f, -377f), Struct_1(vec4<bool>(global1.a.x, true, global1.a.x, false)), Struct_1(vec4<bool>(false, global1.a.x, true, true))).c).c, Struct_1(global1.a)).c, Struct_1(vec4<bool>(global1.a.x, global1.a.x, true, any(vec4<bool>(true, global1.a.x, false, global1.a.x))))), Struct_1(!(!vec4<bool>(true, true, true, global1.a.x))));
    global1 = Struct_1(var_2.b.c.a);
    return Struct_2(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1.x, -21575i, max(var_2.a.x, var_2.b.b.x), -2147483647i) >> (min(u_input.c, abs(u_input.c)) % vec4<u32>(32u)), var_2.b.a, var_2.d.a), ~(-(~arg_2.zy)), func_2(_wgslsmith_f_op_vec3_f32(-var_0.zxy), var_2.c, Struct_1(select(vec4<bool>(false, var_2.d.c.a.x, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, var_2.d.c.a.x)))).c, var_2.d.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~abs(vec2<u32>(u_input.c.x >> (u_input.a % 32u), 1u)), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, _wgslsmith_add_i32(-1i, 0i)) >> (vec2<u32>(1u | u_input.c.x, u_input.a ^ u_input.a) % vec2<u32>(32u)), vec2<i32>(~_wgslsmith_mod_i32(-1i, -34800i), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -37000i), vec2<i32>(10473i, u_input.b)), u_input.b >> (0u % 32u))), (_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(2147483647i, u_input.b)) << (vec2<u32>(u_input.c.x, 8831u) % vec2<u32>(32u))) >> (~(u_input.c.zy ^ u_input.c.ww) % vec2<u32>(32u))), ~vec3<i32>(_wgslsmith_sub_i32(~u_input.b, 1i), _wgslsmith_clamp_i32(u_input.b, u_input.b, u_input.b) ^ ~1i, u_input.b >> (u_input.c.x % 32u)));
    let var_1 = _wgslsmith_div_vec3_u32(~u_input.c.ywx, u_input.c.wzy);
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-935f * -1538f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-761f, 722f, global1.a.x)), -218f))))));
    global1 = var_0.c;
    let var_3 = func_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1437f * -101f)))), 2016f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -303f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1373f + -357f)))))), Struct_1(!func_1(vec2<u32>(var_1.x, u_input.a), ~vec2<i32>(u_input.b, var_0.a.x), -vec3<i32>(var_0.b.x, var_0.b.x, var_0.a.x)).c.a), Struct_1(!func_2(vec3<f32>(-678f, 816f, -1072f), func_1(var_1.xy, var_0.b, vec3<i32>(var_0.a.x, u_input.b, u_input.b)).c, func_2(vec3<f32>(-332f, -895f, 262f), Struct_1(vec4<bool>(true, var_0.c.a.x, var_0.c.a.x, true)), Struct_1(vec4<bool>(global1.a.x, global1.a.x, global1.a.x, global1.a.x))).c).c.a)).c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(-938f, -253f, !var_0.c.a.x)), _wgslsmith_f_op_f32(min(1233f, _wgslsmith_f_op_f32(f32(-1f) * -2905f))), _wgslsmith_f_op_f32(-1025f + -616f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1038f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-252f, -1000f, 354f, 904f))))))));
}

