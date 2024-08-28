struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 7274u;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = arg_0;
    global0 = 12796u;
    var var_1 = 1u;
    let var_2 = reverseBits(~_wgslsmith_sub_vec3_u32(vec3<u32>(firstLeadingBit(4294967295u), reverseBits(46188u), _wgslsmith_add_u32(0u, 4294967295u)), ~vec3<u32>(0u, 53856u, 22355u) & firstTrailingBit(vec3<u32>(27978u, 4294967295u, 1422u))));
    let var_3 = all(select(vec3<bool>(all(vec3<bool>(true, false, false)), select(false, false, arg_0.d), false), select(select(vec3<bool>(true, arg_0.d, false), select(vec3<bool>(true, false, true), vec3<bool>(false, arg_0.d, false), false), true == arg_0.d), !(!vec3<bool>(false, true, arg_0.d)), true | any(vec2<bool>(var_0.d, var_0.d))), vec3<bool>(_wgslsmith_f_op_f32(-var_0.c) < arg_0.b, any(!vec3<bool>(false, true, var_0.d)), all(select(vec3<bool>(true, arg_0.d, false), vec3<bool>(var_0.d, arg_0.d, true), false)))));
    return _wgslsmith_clamp_u32(_wgslsmith_add_u32(~_wgslsmith_sub_u32(countOneBits(var_2.x), _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, 1u, var_2.x), vec3<u32>(40086u, var_2.x, var_2.x))), _wgslsmith_mod_u32(var_2.x, var_2.x & _wgslsmith_sub_u32(4119u, var_2.x))), 55125u >> (~firstLeadingBit(abs(var_2.x)) % 32u), _wgslsmith_dot_vec2_u32(var_2.yx, vec2<u32>(abs(_wgslsmith_div_u32(0u, 1u)), _wgslsmith_div_u32(var_2.x, var_2.x) & 0u)));
}

fn func_2(arg_0: Struct_1) -> u32 {
    global0 = ~(~(~(~(~20957u))));
    var var_0 = _wgslsmith_mod_u32(firstTrailingBit(reverseBits(4294967295u)) ^ ~_wgslsmith_add_u32(_wgslsmith_mod_u32(0u, 49698u), 19839u), 1u);
    var var_1 = _wgslsmith_add_vec2_u32(vec2<u32>(~abs(1u), ~_wgslsmith_mod_u32(func_3(arg_0), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 33706u, 4294967295u), vec4<u32>(0u, 0u, 59945u, 4865u)))), firstTrailingBit(~(select(vec2<u32>(4983u, 17994u), vec2<u32>(38388u, 4294967295u), false) | vec2<u32>(0u, 10890u))));
    global0 = ~_wgslsmith_div_u32(var_1.x, var_1.x ^ 11035u);
    let var_2 = arg_0;
    return 0u;
}

fn func_4(arg_0: vec4<u32>, arg_1: u32, arg_2: bool) -> vec3<u32> {
    let var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1929f + 1565f), _wgslsmith_f_op_f32(min(275f, -1057f))))), _wgslsmith_f_op_f32(f32(-1f) * -1142f), -887f, -1794f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-725f, -1783f, 1728f, 1000f), vec4<f32>(528f, 353f, 207f, -309f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1210f, 911f, -1802f, 993f)))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1341f, -177f, 392f, 1000f)))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1204f, 1578f, 1330f, 2182f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1107f, 753f, 405f, 242f) + vec4<f32>(-1775f, 677f, -1000f, 396f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(658f, -1552f, 1417f, 886f) - vec4<f32>(1701f, -1277f, -155f, 1360f))))));
    var var_1 = _wgslsmith_dot_vec2_i32(-(vec2<i32>(firstTrailingBit(-1i), _wgslsmith_mult_i32(u_input.a, 10104i)) & vec2<i32>(_wgslsmith_add_i32(14843i, u_input.a), -u_input.a)), vec2<i32>(u_input.a, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, 1i, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a)), vec3<i32>(1i, u_input.a, u_input.a)), min(_wgslsmith_mod_i32(-11315i, 2156i), -27017i))));
    global0 = arg_0.x >> (0u % 32u);
    global0 = arg_0.x;
    global0 = ~arg_1;
    return _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, func_2(Struct_1(min(vec4<i32>(u_input.a, 45258i, -1i, u_input.a), vec4<i32>(15896i, 1i, u_input.a, -36139i)), _wgslsmith_f_op_f32(var_0.x + var_0.x), var_0.x, true)), ~(~min(arg_1, 10651u))), firstLeadingBit(~(~firstTrailingBit(vec3<u32>(3589u, 1u, arg_1)))));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec3_i32(abs(abs(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, -14953i, u_input.a), vec3<i32>(u_input.a, 0i, u_input.a)))) >> (func_4(vec4<u32>(_wgslsmith_clamp_u32(4987u, 4294967295u, 1u), func_2(Struct_1(vec4<i32>(-2147483647i, 35824i, u_input.a, 2147483647i), 1192f, -471f, false)), 1u, ~65271u), 4294967295u, true || (u_input.a < u_input.a)) % vec3<u32>(32u)), countOneBits(~(~vec3<i32>(u_input.a, -30144i, u_input.a))));
    global0 = ~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~(~vec2<u32>(4294967295u, 1u)), select(countOneBits(vec2<u32>(4745u, 4294967295u)), vec2<u32>(1u, 1u), true)), func_4(vec4<u32>(~1u, min(46732u, 4294967295u), 96161u, max(52489u, 0u)), _wgslsmith_mod_u32(~4294967295u, 75082u), true).zy);
    global0 = ~_wgslsmith_add_u32(1u, func_4(_wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(44773u, 1u, 0u, 21108u)), vec4<u32>(96531u, 0u, 27349u, 1u)), 1u, false).x);
    return Struct_1(reverseBits(_wgslsmith_mod_vec4_i32(~select(vec4<i32>(var_0, u_input.a, -5532i, 1i), vec4<i32>(-2147483647i, 1i, 47596i, var_0), true), vec4<i32>(-var_0, -23869i, u_input.a >> (14467u % 32u), u_input.a ^ u_input.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-518f + -146f) * _wgslsmith_f_op_f32(trunc(-1724f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-522f)) + _wgslsmith_f_op_f32(-277f + 623f)))), 1331f, false);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.c, arg_1.c)))), func_1().b));
    let var_1 = vec3<bool>(arg_1.d, func_1().d, arg_1.a.x >= arg_0.a.x);
    var var_2 = func_1().b;
    var var_3 = ~(firstTrailingBit(vec2<u32>(1u, 1u)) | ~_wgslsmith_mod_vec2_u32(~vec2<u32>(105954u, 4294967295u), vec2<u32>(75174u, 72540u)));
    var var_4 = func_1();
    return max(func_3(Struct_1(-vec4<i32>(-1i, arg_0.a.x, 0i, -2147483647i), 565f, _wgslsmith_f_op_f32(select(1253f, _wgslsmith_f_op_f32(f32(-1f) * -1026f), true)), !(true || arg_0.d))), ~var_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(func_1(), Struct_1(_wgslsmith_add_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(3160i, 32253i, u_input.a, -1i), vec4<i32>(2147483647i, u_input.a, 1i, u_input.a)), _wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.a, u_input.a, 10341i, -2147483647i), abs(vec4<i32>(61869i, u_input.a, u_input.a, -1i)))), _wgslsmith_f_op_f32(f32(-1f) * -1854f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-764f)) * -1254f)), true));
    var var_0 = vec2<i32>(~u_input.a, max(0i >> (select(1u, 4294967295u, true) % 32u), -(~(-5695i)))) | vec2<i32>(-1i, u_input.a);
    let var_1 = Struct_1(_wgslsmith_add_vec4_i32(reverseBits(select(vec4<i32>(u_input.a, -18247i, 38452i, -18337i), ~vec4<i32>(var_0.x, u_input.a, 25856i, var_0.x), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true)))), ~(~(vec4<i32>(u_input.a, var_0.x, u_input.a, -1i) | vec4<i32>(var_0.x, var_0.x, u_input.a, -1i)))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 327f)), _wgslsmith_f_op_f32(f32(-1f) * -1728f)))), _wgslsmith_f_op_f32(step(1151f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -238f))))))), false);
    let var_2 = var_1;
    var_0 = var_1.a.zz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b) + _wgslsmith_f_op_f32(-var_2.c)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-840f, 876f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.b, -289f) * vec2<f32>(var_2.b, var_1.c))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -680f) - _wgslsmith_div_f32(var_2.b, -615f)), _wgslsmith_f_op_f32(step(1058f, _wgslsmith_f_op_f32(exp2(var_2.c))))), var_1.d)), 197f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-425f, var_1.c, 1368f, _wgslsmith_f_op_f32(round(var_2.c)))));
}

