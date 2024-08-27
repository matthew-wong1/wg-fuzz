struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec2<f32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: Struct_1) -> vec4<i32> {
    return -vec4<i32>(min(-29560i, 0i ^ arg_3.d.x), -564i, arg_1.d.x >> (countOneBits(arg_1.b) % 32u), u_input.b) ^ (-select(-vec4<i32>(2147483647i, -1i, arg_3.d.x, arg_3.d.x), firstTrailingBit(vec4<i32>(arg_1.d.x, arg_3.d.x, arg_3.d.x, u_input.b)), vec4<bool>(false, false, true, arg_1.a.x)) | ~vec4<i32>(~arg_3.d.x, arg_1.d.x, _wgslsmith_mult_i32(1i, arg_3.d.x), abs(u_input.b)));
}

fn func_2(arg_0: vec3<bool>) -> f32 {
    var var_0 = _wgslsmith_mult_vec4_i32(vec4<i32>(~(~u_input.b), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.b, 24275i, -578i, 98801i) << (u_input.c % vec4<u32>(32u))), -(~vec4<i32>(-1970i, 1i, u_input.b, u_input.b))), -u_input.b, _wgslsmith_mult_i32(-2147483647i, -u_input.b) << (~u_input.a % 32u)), ~_wgslsmith_mult_vec4_i32(func_3(vec2<f32>(675f, 1880f), Struct_1(vec3<bool>(false, true, false), 49861u, vec2<f32>(-1416f, -1215f), vec3<i32>(-5240i, -2147483647i, 0i)), vec2<u32>(u_input.c.x, u_input.a), Struct_1(arg_0, 0u, vec2<f32>(-432f, -1000f), vec3<i32>(-1242i, 0i, u_input.b))), vec4<i32>(1i, u_input.b, -1i, 0i)));
    var var_1 = -791f;
    var_1 = -657f;
    var_0 = vec4<i32>(u_input.b, min(abs(countOneBits(-15858i)), -1i) >> (~min(~u_input.a, ~4294967295u) % 32u), 5510i, abs(u_input.b) >> (u_input.a % 32u));
    var_1 = 1f;
    return -934f;
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: vec2<i32>, arg_3: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2(vec3<bool>(true || (0u < u_input.c.x), !arg_0.a.a.x, all(vec3<bool>(false, arg_0.a.a.x, false)) && false))), arg_1, !(abs(~arg_0.a.b) <= reverseBits(1u))));
    var var_1 = arg_3.a.a.x;
    var_1 = !all(!(!(!vec4<bool>(arg_0.a.a.x, arg_3.a.a.x, true, false))));
    var var_2 = Struct_3(Struct_1(!vec3<bool>(true, !arg_3.c.x, false), arg_3.a.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.c.x, arg_3.b) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(arg_0.a.c * arg_0.a.c)))), arg_0.a.d), arg_3.a, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.c.x, -772f, -551f) - vec3<f32>(-262f, arg_1, 241f))))))), var_0);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-624f)) * _wgslsmith_f_op_f32(func_2(arg_3.a.a))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + arg_1)), _wgslsmith_f_op_f32(func_2(select(vec3<bool>(false, false, false), var_2.a.a, vec3<bool>(false, true, arg_3.c.x)))))), var_0, var_2.a.a.x)));
    return arg_0;
}

fn func_4(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_2) -> vec3<i32> {
    var var_0 = _wgslsmith_clamp_vec4_i32(~(~_wgslsmith_div_vec4_i32(func_3(vec2<f32>(133f, 1192f), Struct_1(vec3<bool>(true, arg_2.a.a.x, true), 1u, arg_1, arg_2.a.d), u_input.c.wx, Struct_1(vec3<bool>(arg_2.a.a.x, arg_2.c.x, false), 56019u, vec2<f32>(-189f, arg_2.a.c.x), arg_2.a.d)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, 38857i, arg_0, -60576i), vec4<i32>(25289i, -2147483647i, arg_0, u_input.b)))), _wgslsmith_clamp_vec4_i32((_wgslsmith_mult_vec4_i32(vec4<i32>(-4439i, u_input.b, arg_0, arg_2.a.d.x), vec4<i32>(arg_2.a.d.x, arg_0, 0i, u_input.b)) << ((u_input.c | u_input.c) % vec4<u32>(32u))) ^ (vec4<i32>(u_input.b, arg_2.a.d.x, 3112i, -2816i) << (u_input.c % vec4<u32>(32u))), _wgslsmith_mod_vec4_i32(vec4<i32>(-56384i, 27292i, u_input.b, arg_2.a.d.x), abs(vec4<i32>(arg_2.a.d.x, -42950i, -66512i, u_input.b))) & vec4<i32>(countOneBits(u_input.b), arg_2.a.d.x, arg_0, 0i), abs(~vec4<i32>(arg_2.a.d.x, 0i, 1i, -27395i) | ~vec4<i32>(-11431i, arg_2.a.d.x, u_input.b, -14788i))), firstLeadingBit(~firstTrailingBit(vec4<i32>(u_input.b, 268i, 6963i, arg_2.a.d.x))));
    var_0 = _wgslsmith_sub_vec4_i32(abs(firstTrailingBit(~(~vec4<i32>(arg_2.a.d.x, 2147483647i, 395i, u_input.b)))), -(~(-vec4<i32>(1841i, 2147483647i, 1i, 20622i))) | vec4<i32>(countOneBits(u_input.b), ~(-3373i ^ arg_0), func_3(arg_2.a.c, Struct_1(vec3<bool>(false, false, arg_2.a.a.x), 1u, arg_2.a.c, var_0.zyz), select(vec2<u32>(13457u, 0u), u_input.c.yx, vec2<bool>(true, false)), Struct_1(vec3<bool>(arg_2.a.a.x, true, arg_2.a.a.x), 11462u, arg_1, vec3<i32>(u_input.b, -1i, var_0.x))).x, 1i));
    var_0 = firstLeadingBit(vec4<i32>(-6636i, ~var_0.x | (u_input.b << (0u % 32u)), arg_2.a.d.x, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(arg_2.a.d.x, var_0.x, arg_2.a.d.x), var_0.x)) | firstTrailingBit(~vec4<i32>(-40439i, -1972i, var_0.x, -1i)));
    var var_1 = !(!any(func_1(Struct_2(Struct_1(arg_2.c.zww, u_input.a, vec2<f32>(arg_1.x, arg_1.x), var_0.xyw), -2124f, vec4<bool>(false, true, false, true)), _wgslsmith_f_op_f32(arg_2.b * 893f), select(var_0.zz, vec2<i32>(6559i, var_0.x), arg_2.a.a.x), arg_2).c));
    let var_2 = Struct_3(Struct_1(vec3<bool>(!arg_2.a.a.x, abs(21794u) != u_input.a, false), arg_2.a.b, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1078f, 1000f)), -663f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-372f, arg_1.x) - _wgslsmith_f_op_f32(-arg_1.x))), arg_2.a.d), Struct_1(select(vec3<bool>(!arg_2.a.a.x, !arg_2.a.a.x, arg_2.c.x | false), !(!arg_2.c.wyw), ~arg_2.a.b <= arg_2.a.b), ~u_input.c.x, _wgslsmith_f_op_vec2_f32(-arg_2.a.c), ~arg_2.a.d), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_1.x, 713f, -502f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a.c.x, -1378f, arg_2.a.c.x)))))), -1077f);
    return ~max(-_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, 10273i, var_2.b.d.x), vec3<i32>(1i, -12170i, -30039i)), vec3<i32>(countOneBits(func_1(Struct_2(arg_2.a, arg_1.x, vec4<bool>(true, var_2.a.a.x, false, arg_2.a.a.x)), -1358f, vec2<i32>(arg_0, u_input.b), Struct_2(arg_2.a, 627f, arg_2.c)).a.d.x), var_0.x << (4294967295u % 32u), var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b << (37849u % 32u);
    var var_1 = 5041i;
    let var_2 = var_0 >= -2147483647i;
    var var_3 = vec3<i32>(-29809i, i32(-1i) * -1i, i32(-1i) * -(i32(-1i) * -4547i)) ^ -(func_4(select(u_input.b, -1i, var_2), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1192f, -963f), vec2<f32>(-428f, -269f))), func_1(Struct_2(Struct_1(vec3<bool>(false, true, true), u_input.c.x, vec2<f32>(-2167f, 1859f), vec3<i32>(u_input.b, var_0, -1i)), -1398f, vec4<bool>(var_2, var_2, var_2, false)), -953f, vec2<i32>(var_0, var_0), Struct_2(Struct_1(vec3<bool>(var_2, false, var_2), 0u, vec2<f32>(1420f, -599f), vec3<i32>(u_input.b, u_input.b, u_input.b)), -325f, vec4<bool>(var_2, var_2, var_2, var_2)))) >> (u_input.c.yyw % vec3<u32>(32u)));
    var var_4 = -(~abs(vec3<i32>(~0i, -var_0, -1i)));
    let x = u_input.a;
    s_output = StorageBuffer((vec3<u32>(6259u, _wgslsmith_dot_vec2_u32(u_input.c.xw, u_input.c.xw), reverseBits(149734u)) & vec3<u32>(_wgslsmith_div_u32(0u, u_input.c.x), select(u_input.a, 4294967295u, false), u_input.a)) ^ ~u_input.c.yww, u_input.c.x, vec4<i32>(var_4.x, var_3.x, 0i, -var_3.x), u_input.c);
}

