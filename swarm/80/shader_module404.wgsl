struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: u32,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: vec2<bool>,
    d: vec2<f32>,
    e: vec3<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: i32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -45755i;

var<private> global1: array<f32, 14>;

var<private> global2: Struct_5 = Struct_5(Struct_1(27552i, vec2<f32>(-1592f, -824f), 54017u, -28856i, 33333u), i32(-2147483648), vec4<bool>(false, true, false, true));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: vec2<i32>) -> vec2<bool> {
    global1 = array<f32, 14>();
    let var_0 = global2.a.c;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.a.c.b.x)) * _wgslsmith_f_op_f32(-global2.a.b.x))))), -694f);
    let var_2 = global2.a;
    var var_3 = vec3<i32>(abs(u_input.a.x), firstLeadingBit((-1i << (~arg_0.a.b.c % 32u)) << (countOneBits(max(1u, arg_0.a.b.e)) % 32u)), -(~u_input.a.x));
    return vec2<bool>(global2.c.x, !global2.c.x || true);
}

fn func_2(arg_0: bool, arg_1: vec2<bool>) -> Struct_1 {
    var var_0 = Struct_4(Struct_1(-12719i, vec2<f32>(309f, -1056f), u_input.b.x, -global2.a.d, u_input.c.x ^ u_input.c.x), ~global2.b, func_3(Struct_3(Struct_2(global2.b, Struct_1(u_input.a.x, vec2<f32>(-826f, -1094f), global2.a.c, -17160i, 0u), Struct_1(75485i, vec2<f32>(global1[_wgslsmith_index_u32(24211u, 14u)], global1[_wgslsmith_index_u32(u_input.b.x, 14u)]), global2.a.c, 27347i, global2.a.e), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global2.a.b.x, global2.a.b.x, 1431f, global1[_wgslsmith_index_u32(global2.a.c, 14u)]))))), true, u_input.a), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.a.b * global2.a.b) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1[_wgslsmith_index_u32(1u, 14u)], -1464f))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.a.b * vec2<f32>(219f, global1[_wgslsmith_index_u32(1u, 14u)]))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-843f, 163f) - global2.a.b)))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global2.a.b.x), 106f, 701f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 14u)] * 479f), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 4294967295u), 14u)], _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(global2.a.e, 14u)]))))));
    var var_1 = var_0.a;
    var_0 = Struct_4(Struct_1(-13495i, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-901f, -576f))) * global2.a.b))), ~4294967295u, var_0.a.d, select(56365u, ~(~global2.a.c), all(!vec3<bool>(true, global2.c.x, true)))), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(0i, global2.a.d, var_1.d, max(u_input.a.x, var_1.d))), select(_wgslsmith_mod_vec4_i32(select(vec4<i32>(-1i, var_0.b, 2147483647i, u_input.a.x), vec4<i32>(var_1.a, 9358i, -2147483647i, 10678i), false), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.d, global2.b, 44944i, var_1.a), vec4<i32>(45449i, -2147483647i, u_input.a.x, 26413i), vec4<i32>(var_0.b, var_1.a, -2147483647i, -5935i))), -_wgslsmith_div_vec4_i32(vec4<i32>(5825i, var_0.a.d, global2.b, u_input.a.x), vec4<i32>(global2.a.d, global2.a.a, 22145i, global2.a.d)), !(arg_0 || global2.c.x))), !(!vec2<bool>(arg_0, false)), var_0.e.yy, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(var_1.b.x - global2.a.b.x), 196f, _wgslsmith_div_f32(var_0.d.x, 305f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1115f, 552f, var_1.b.x)))), !any(vec4<bool>(var_0.c.x, false, false, global2.c.x)))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(var_0.e - vec3<f32>(-330f, 565f, -340f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(var_0.e))), !global2.c.x))));
    global1 = array<f32, 14>();
    var var_2 = _wgslsmith_mult_vec4_u32(~vec4<u32>(global2.a.c, ~1u, 1u, ~1u) | ~min(max(vec4<u32>(4200u, global2.a.e, 58547u, var_0.a.c), vec4<u32>(0u, var_0.a.c, 1u, 4294967295u)), select(vec4<u32>(global2.a.c, u_input.b.x, 0u, var_0.a.e), vec4<u32>(45257u, var_1.c, 47814u, 8459u), vec4<bool>(false, arg_1.x, true, false))), ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(3589u, 0u, 4294967295u, 1u), vec4<u32>(1u, var_1.c, 42210u, 42823u), vec4<u32>(34638u, 1u, var_0.a.e, 1u)) >> (~firstTrailingBit(vec4<u32>(global2.a.e, u_input.c.x, 8800u, 1u)) % vec4<u32>(32u))));
    return var_0.a;
}

fn func_4(arg_0: Struct_5, arg_1: vec2<f32>, arg_2: vec4<u32>, arg_3: Struct_3) -> Struct_3 {
    let var_0 = ~(select(arg_2.zy, u_input.c, vec2<bool>(arg_0.c.x, all(vec3<bool>(arg_0.c.x, false, arg_0.c.x)))) >> ((_wgslsmith_mult_vec2_u32(arg_2.xy | u_input.c, _wgslsmith_mult_vec2_u32(vec2<u32>(global2.a.c, 29324u), vec2<u32>(arg_3.a.b.e, arg_2.x))) | arg_2.xz) % vec2<u32>(32u)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(arg_0.a.b.x, _wgslsmith_f_op_f32(1034f + -1046f))), arg_1.x)), _wgslsmith_div_f32(arg_0.a.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(44178u, 14u)]), _wgslsmith_f_op_f32(exp2(arg_0.a.b.x)))), arg_0.c.x)));
    var var_2 = arg_0.c.wyy;
    let var_3 = -max(vec3<i32>(-1i) * -(vec3<i32>(global2.b, arg_3.a.a, arg_3.a.a) | vec3<i32>(15634i, 2147483647i, u_input.a.x)), firstLeadingBit((vec3<i32>(-41149i, arg_3.a.a, global2.a.a) >> (arg_2.xwx % vec3<u32>(32u))) ^ firstLeadingBit(vec3<i32>(global2.a.d, arg_3.a.c.a, u_input.a.x))));
    var var_4 = var_2.x;
    return arg_3;
}

fn func_5(arg_0: Struct_3, arg_1: bool) -> bool {
    var var_0 = vec4<i32>(arg_0.a.b.a, i32(-1i) * -1i, -1i, firstLeadingBit(771i));
    global1 = array<f32, 14>();
    var var_1 = global2.a.e;
    var var_2 = !(17098i > (i32(-1i) * -var_0.x));
    let var_3 = firstLeadingBit(firstLeadingBit(_wgslsmith_div_vec4_i32(abs(vec4<i32>(global2.a.d, -7222i, 89686i, var_0.x)) >> (~vec4<u32>(u_input.b.x, arg_0.a.b.e, 98468u, u_input.c.x) % vec4<u32>(32u)), -(vec4<i32>(31829i, global2.a.d, -6782i, -1i) & vec4<i32>(global2.a.d, arg_0.a.c.a, var_0.x, 2147483647i)))));
    return arg_1;
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: bool, arg_3: Struct_4) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-2410f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.a.b.x, global2.a.b.x))))));
    let var_1 = global2.c.zzz;
    var var_2 = func_5(func_4(Struct_5(func_2(var_1.x == global2.c.x, arg_3.c), -1579i, vec4<bool>(arg_3.c.x, all(vec4<bool>(false, true, false, true)), true, true)), vec2<f32>(_wgslsmith_f_op_f32(global2.a.b.x * -459f), _wgslsmith_f_op_f32(f32(-1f) * -752f)), ~(~(~vec4<u32>(0u, global2.a.e, 1u, arg_3.a.c))), Struct_3(Struct_2(-arg_3.a.a, Struct_1(-28093i, vec2<f32>(2787f, arg_1), 24979u, global2.b, 0u), Struct_1(u_input.a.x, vec2<f32>(156f, 2061f), global2.a.c, global2.b, u_input.b.x), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_3.a.b.x, global2.a.b.x, global2.a.b.x, arg_3.d.x), vec4<f32>(-199f, arg_1, -152f, arg_3.d.x)))))), all(vec2<bool>(false, var_1.x)) || select(global2.c.x, all(global2.c.zxx) | func_3(Struct_3(Struct_2(u_input.a.x, arg_3.a, global2.a, vec4<f32>(var_0, global1[_wgslsmith_index_u32(69400u, 14u)], 697f, -1000f))), false, u_input.a).x, !arg_3.c.x));
    var var_3 = Struct_3(func_4(Struct_5(Struct_1(0i << (u_input.b.x % 32u), vec2<f32>(global1[_wgslsmith_index_u32(arg_3.a.c, 14u)], -155f), arg_3.a.e, u_input.a.x & u_input.a.x, 0u), -17076i, vec4<bool>(var_1.x, false, true, arg_2)), _wgslsmith_div_vec2_f32(global2.a.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.a.b.x, -1460f))), _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(13779u, 44546u, 1u, 0u)), vec4<u32>(u_input.c.x, global2.a.e, arg_3.a.e, 0u)), select(select(vec4<u32>(0u, 58667u, 1u, 31853u), vec4<u32>(u_input.b.x, arg_3.a.e, u_input.c.x, arg_3.a.e), vec4<bool>(true, false, var_1.x, false)), vec4<u32>(arg_3.a.c, u_input.c.x, u_input.c.x, u_input.b.x), vec4<bool>(arg_2, var_1.x, arg_2, var_1.x))), Struct_3(func_4(Struct_5(global2.a, u_input.a.x, global2.c), vec2<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 14u)], global2.a.b.x), countOneBits(vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, 54219u)), func_4(Struct_5(arg_3.a, global2.b, global2.c), vec2<f32>(global1[_wgslsmith_index_u32(global2.a.c, 14u)], 402f), vec4<u32>(32567u, arg_3.a.e, 27848u, 46843u), Struct_3(Struct_2(global2.a.d, global2.a, arg_3.a, vec4<f32>(223f, global2.a.b.x, arg_1, -944f))))).a)).a);
    global2 = Struct_5(Struct_1(_wgslsmith_dot_vec2_i32(-_wgslsmith_sub_vec2_i32(u_input.a, vec2<i32>(var_3.a.a, 2147483647i)), vec2<i32>(var_3.a.a, var_3.a.b.d)), _wgslsmith_f_op_vec2_f32(-arg_3.a.b), _wgslsmith_mult_u32(arg_3.a.c, 1u), ~47392i, _wgslsmith_add_u32(~var_3.a.c.c ^ _wgslsmith_mod_u32(0u, arg_3.a.e), _wgslsmith_sub_u32(~24295u, _wgslsmith_mod_u32(global2.a.c, 1u)))), var_3.a.c.d, select(vec4<bool>(func_3(Struct_3(var_3.a), !arg_3.c.x, vec2<i32>(-26344i, var_3.a.a) ^ u_input.a).x, arg_3.c.x, true, false), !vec4<bool>(true, true, global2.c.x, var_3.a.c.c <= arg_3.a.e), !select(global2.c, vec4<bool>(arg_3.c.x, arg_3.c.x, arg_3.c.x, arg_3.c.x), global2.c)));
    return 0i;
}

fn func_6(arg_0: u32, arg_1: i32, arg_2: vec4<u32>, arg_3: bool) -> Struct_2 {
    var var_0 = _wgslsmith_mod_i32(select(u_input.a.x, abs(~(~arg_1)), arg_3), ~1i);
    var var_1 = min(vec2<i32>(global2.a.d, 28137i), max(vec2<i32>(arg_1, -firstTrailingBit(-34063i)), reverseBits(firstTrailingBit(u_input.a) ^ (u_input.a & u_input.a))));
    let var_2 = Struct_4(func_4(Struct_5(Struct_1(1i, _wgslsmith_f_op_vec2_f32(global2.a.b + global2.a.b), 12500u << (arg_2.x % 32u), 1i, 4294967295u), -709i, global2.c), global2.a.b, arg_2, func_4(Struct_5(Struct_1(2147483647i, vec2<f32>(476f, global2.a.b.x), global2.a.e, -13853i, 0u), -34627i << (u_input.b.x % 32u), select(global2.c, vec4<bool>(true, false, arg_3, false), global2.c.x)), global2.a.b, _wgslsmith_sub_vec4_u32(abs(vec4<u32>(arg_2.x, 15084u, 0u, 0u)), arg_2), func_4(Struct_5(Struct_1(-39799i, global2.a.b, 4294967295u, arg_1, 4294967295u), arg_1, global2.c), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-374f, -429f), vec2<f32>(global1[_wgslsmith_index_u32(1u, 14u)], global2.a.b.x), global2.c.xy)), ~arg_2, func_4(Struct_5(Struct_1(-2147483647i, vec2<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 14u)], global2.a.b.x), 71956u, -34154i, 19755u), 0i, vec4<bool>(true, global2.c.x, arg_3, false)), vec2<f32>(global2.a.b.x, global2.a.b.x), arg_2, Struct_3(Struct_2(1i, global2.a, Struct_1(20397i, global2.a.b, arg_2.x, -22731i, global2.a.c), vec4<f32>(global1[_wgslsmith_index_u32(arg_0, 14u)], -1000f, global1[_wgslsmith_index_u32(16169u, 14u)], global1[_wgslsmith_index_u32(1u, 14u)]))))))).a.b, arg_1, func_3(Struct_3(func_4(Struct_5(global2.a, global2.a.d, vec4<bool>(false, global2.c.x, global2.c.x, arg_3)), _wgslsmith_f_op_vec2_f32(-global2.a.b), ~arg_2, Struct_3(Struct_2(1i, global2.a, Struct_1(-61246i, vec2<f32>(1040f, global1[_wgslsmith_index_u32(global2.a.e, 14u)]), 58354u, var_1.x, u_input.c.x), vec4<f32>(global2.a.b.x, global1[_wgslsmith_index_u32(17309u, 14u)], global2.a.b.x, -1947f)))).a), func_5(func_4(Struct_5(Struct_1(global2.b, vec2<f32>(1000f, 425f), arg_2.x, var_1.x, 32696u), -48377i, vec4<bool>(arg_3, true, arg_3, arg_3)), _wgslsmith_f_op_vec2_f32(global2.a.b - vec2<f32>(global2.a.b.x, -1852f)), vec4<u32>(103213u, arg_0, arg_0, u_input.b.x), Struct_3(Struct_2(0i, global2.a, Struct_1(var_1.x, global2.a.b, 95548u, 0i, u_input.c.x), vec4<f32>(global1[_wgslsmith_index_u32(1u, 14u)], global2.a.b.x, 977f, global1[_wgslsmith_index_u32(4294967295u, 14u)])))), all(global2.c.wwz)), u_input.a), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(856f - global1[_wgslsmith_index_u32(0u, 14u)]), -194f), vec2<f32>(global1[_wgslsmith_index_u32(abs(~arg_2.x), 14u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1101f, global2.a.b.x, true)))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.b.x) * 1000f), -746f, global2.a.b.x));
    var var_3 = Struct_5(Struct_1(_wgslsmith_sub_i32(~firstTrailingBit(global2.a.d), abs(58650i)), global2.a.b, ~(min(49353u, u_input.b.x) & var_2.a.c), _wgslsmith_dot_vec4_i32(~select(vec4<i32>(var_1.x, arg_1, u_input.a.x, 10219i), vec4<i32>(-35634i, var_1.x, 4423i, u_input.a.x), var_2.c.x), ~_wgslsmith_div_vec4_i32(vec4<i32>(arg_1, -39411i, 2147483647i, var_2.a.d), vec4<i32>(var_1.x, -1i, 2147483647i, 33083i))), _wgslsmith_mod_u32(~(~arg_0), 0u << (_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.x, 0u), vec2<u32>(34410u, arg_0)) % 32u))), 2147483647i, vec4<bool>(!all(!vec2<bool>(true, global2.c.x)), arg_3, (~(-60689i) << (_wgslsmith_mult_u32(12962u, u_input.c.x) % 32u)) != reverseBits(~27425i), arg_3 != all(!global2.c)));
    global2 = Struct_5(Struct_1(42290i << (arg_0 % 32u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.a.b.x, 415f)) * vec2<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 14u)], global2.a.b.x)) * _wgslsmith_f_op_vec2_f32(-var_2.e.zx)), reverseBits(49274u), _wgslsmith_dot_vec4_i32((vec4<i32>(1i, -2147483647i, arg_1, -8729i) ^ vec4<i32>(var_1.x, 1i, u_input.a.x, global2.b)) >> (vec4<u32>(arg_0, u_input.b.x, arg_2.x, var_3.a.c) % vec4<u32>(32u)), ~(vec4<i32>(2147483647i, u_input.a.x, var_3.a.d, var_1.x) >> (arg_2 % vec4<u32>(32u)))), 4294967295u), ~_wgslsmith_dot_vec2_i32(u_input.a, u_input.a), vec4<bool>(true, var_3.c.x, func_3(func_4(Struct_5(Struct_1(global2.a.d, var_3.a.b, 4294967295u, 0i, 1u), -2147483647i, var_3.c), _wgslsmith_f_op_vec2_f32(-var_2.d), vec4<u32>(var_3.a.e, arg_2.x, 30094u, u_input.c.x), func_4(Struct_5(global2.a, 21136i, global2.c), vec2<f32>(var_3.a.b.x, -504f), arg_2, Struct_3(Struct_2(u_input.a.x, Struct_1(11500i, vec2<f32>(978f, 2263f), arg_0, global2.b, u_input.b.x), Struct_1(16036i, vec2<f32>(global1[_wgslsmith_index_u32(0u, 14u)], global2.a.b.x), 32241u, 37362i, var_2.a.e), vec4<f32>(global1[_wgslsmith_index_u32(var_3.a.c, 14u)], global1[_wgslsmith_index_u32(4294967295u, 14u)], var_3.a.b.x, var_3.a.b.x))))), !all(global2.c.yyw), u_input.a).x, var_3.c.x));
    return func_4(Struct_5(func_2(any(vec2<bool>(true, var_3.c.x)) | global2.c.x, !vec2<bool>(arg_3, global2.c.x)), var_2.b, !select(!vec4<bool>(arg_3, var_2.c.x, var_3.c.x, false), vec4<bool>(arg_3, true, arg_3, global2.c.x), select(var_3.c, vec4<bool>(true, true, true, true), var_3.c))), _wgslsmith_f_op_vec2_f32(step(var_3.a.b, vec2<f32>(714f, global2.a.b.x))), _wgslsmith_clamp_vec4_u32(~(~arg_2) & max(vec4<u32>(arg_2.x, 2688u, 0u, arg_0) << (arg_2 % vec4<u32>(32u)), vec4<u32>(1u, 58085u, 0u, u_input.b.x) ^ vec4<u32>(var_3.a.c, global2.a.c, arg_0, 96463u)), firstLeadingBit(firstTrailingBit(vec4<u32>(arg_2.x, 53101u, arg_0, u_input.b.x))), vec4<u32>(var_2.a.e, ~(global2.a.c ^ 30162u), u_input.b.x, _wgslsmith_div_u32(abs(0u), 13336u))), Struct_3(Struct_2(16533i, Struct_1(func_1(1000f, 429f, false, var_2), var_3.a.b, 70431u, -1i, ~arg_0), func_4(Struct_5(global2.a, 4465i, global2.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2630f, 1187f)), _wgslsmith_div_vec4_u32(arg_2, vec4<u32>(1u, 33663u, 60922u, global2.a.e)), func_4(Struct_5(global2.a, -1i, vec4<bool>(false, arg_3, arg_3, false)), vec2<f32>(108f, var_3.a.b.x), arg_2, Struct_3(Struct_2(var_1.x, var_2.a, Struct_1(u_input.a.x, vec2<f32>(2723f, -977f), 1u, -2147483647i, u_input.b.x), vec4<f32>(global1[_wgslsmith_index_u32(17139u, 14u)], var_3.a.b.x, var_3.a.b.x, var_3.a.b.x))))).a.c, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-801f, 892f, var_2.d.x, var_2.a.b.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a.b.x, global2.a.b.x, global2.a.b.x, 168f))))))).a;
}

fn func_7(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_4) -> Struct_3 {
    global2 = Struct_5(func_4(Struct_5(Struct_1(13837i, _wgslsmith_f_op_vec2_f32(arg_0.a.c.b * arg_0.a.b.b), _wgslsmith_add_u32(global2.a.c, 4294967295u), min(-1i, arg_0.a.c.d), _wgslsmith_mult_u32(21127u, arg_1.a.e)), -25793i, vec4<bool>(true, 1163f != arg_0.a.c.b.x, true == arg_1.c.x, global2.c.x & arg_2.c.x)), global2.a.b, countOneBits(vec4<u32>(select(global2.a.c, 4294967295u, false), arg_2.a.c, countOneBits(5554u), 4294967295u | arg_2.a.c)), arg_0).a.b, -32685i, vec4<bool>(arg_1.c.x, global2.c.x, !global2.c.x, false));
    let var_0 = arg_0.a.b.c & func_4(Struct_5(func_6(22159u, -41845i, _wgslsmith_sub_vec4_u32(vec4<u32>(31877u, 22994u, arg_2.a.e, arg_2.a.c), vec4<u32>(u_input.b.x, global2.a.c, 34504u, arg_1.a.e)), false).b, -2147483647i, !(!global2.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.a.c.b - arg_1.e.zx)), vec4<u32>(reverseBits(~1u), min(_wgslsmith_sub_u32(global2.a.c, arg_2.a.c), func_6(4074u, arg_0.a.a, vec4<u32>(64775u, u_input.b.x, 1u, 4294967295u), true).c.c), _wgslsmith_mult_u32(firstLeadingBit(arg_1.a.c), func_6(global2.a.e, u_input.a.x, vec4<u32>(10516u, arg_2.a.e, global2.a.c, 9687u), false).b.e), 27591u), Struct_3(func_4(Struct_5(arg_0.a.b, -2147483647i, vec4<bool>(global2.c.x, false, arg_2.c.x, false)), vec2<f32>(arg_0.a.b.b.x, -966f), vec4<u32>(1u, arg_2.a.e, 4294967295u, 48135u), func_4(Struct_5(global2.a, 27797i, global2.c), vec2<f32>(-477f, 415f), vec4<u32>(arg_2.a.e, 37937u, 4294967295u, 0u), Struct_3(Struct_2(arg_1.b, Struct_1(-2147483647i, vec2<f32>(global2.a.b.x, global1[_wgslsmith_index_u32(22387u, 14u)]), 70730u, -10782i, arg_1.a.c), Struct_1(-24662i, arg_2.e.zx, 28462u, arg_0.a.c.d, 5079u), vec4<f32>(global1[_wgslsmith_index_u32(17334u, 14u)], 392f, arg_1.e.x, arg_1.a.b.x))))).a)).a.b.e;
    let var_1 = (vec4<u32>(var_0 >> (~31865u % 32u), ~22213u << (_wgslsmith_mod_u32(arg_2.a.e, 0u) % 32u), 1u >> (countOneBits(arg_2.a.c) % 32u), reverseBits(4294967295u) >> (abs(arg_1.a.e) % 32u)) & ~min(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.a.e, u_input.c.x, global2.a.e, 0u), vec4<u32>(var_0, var_0, 14539u, 4294967295u)), vec4<u32>(11122u, arg_0.a.c.c, 14558u, 1u))) >> (select(max(vec4<u32>(_wgslsmith_mod_u32(13754u, global2.a.e), 11774u, global2.a.e, ~arg_2.a.e), select(select(vec4<u32>(arg_1.a.c, arg_2.a.e, 30339u, 44871u), vec4<u32>(5812u, arg_2.a.c, arg_2.a.c, 0u), vec4<bool>(false, false, true, false)), ~vec4<u32>(1018u, 1u, u_input.b.x, arg_1.a.c), select(global2.c, global2.c, false))), reverseBits(vec4<u32>(u_input.c.x, var_0, 1u, u_input.c.x) & vec4<u32>(1885u, 64623u, 1u, 0u)) ^ ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, global2.a.e, 98826u, 72701u), vec4<u32>(u_input.b.x, var_0, 0u, global2.a.c)), select(vec4<bool>(arg_1.c.x, !arg_2.c.x, arg_0.a.d.x > global1[_wgslsmith_index_u32(arg_1.a.c, 14u)], all(vec3<bool>(global2.c.x, false, false))), select(!vec4<bool>(global2.c.x, global2.c.x, arg_1.c.x, false), vec4<bool>(false, true, arg_1.c.x, arg_1.c.x), !arg_2.c.x), arg_2.c.x)) % vec4<u32>(32u));
    var var_2 = 5323u;
    let var_3 = arg_0;
    return Struct_3(Struct_2(_wgslsmith_mod_i32(var_3.a.c.d, -22123i), arg_1.a, Struct_1(-_wgslsmith_mod_i32(arg_2.a.a, 13285i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(853f, arg_2.d.x), arg_1.e.zx))), ~min(4294967295u, 4294967295u), reverseBits(0i) & arg_0.a.a, ~(var_3.a.b.c << (var_0 % 32u))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-arg_0.a.d))), func_4(Struct_5(global2.a, var_3.a.b.a, vec4<bool>(true, true, false, true)), _wgslsmith_f_op_vec2_f32(arg_2.d - global2.a.b), select(vec4<u32>(var_3.a.c.c, var_3.a.c.c, 4294967295u, 138359u), var_1, arg_1.c.x), func_4(Struct_5(Struct_1(arg_1.b, vec2<f32>(-995f, -3196f), u_input.b.x, 0i, var_3.a.c.c), -1i, global2.c), arg_0.a.c.b, var_1, Struct_3(arg_0.a))).a.d))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(Struct_3(func_6(1u, _wgslsmith_clamp_i32(func_1(482f, global1[_wgslsmith_index_u32(u_input.c.x, 14u)], global2.c.x, Struct_4(global2.a, 0i, vec2<bool>(true, global2.c.x), vec2<f32>(405f, 1381f), vec3<f32>(global2.a.b.x, global2.a.b.x, 984f))), -10253i, global2.b), _wgslsmith_mod_vec4_u32(vec4<u32>(21815u, global2.a.e, 0u, global2.a.e), vec4<u32>(70715u, 44564u, 7638u, global2.a.e)) >> (min(vec4<u32>(global2.a.e, global2.a.c, global2.a.e, 4294967295u), vec4<u32>(u_input.c.x, global2.a.e, global2.a.e, global2.a.e)) % vec4<u32>(32u)), global2.c.x)), Struct_4(Struct_1(_wgslsmith_mult_i32(_wgslsmith_mod_i32(global2.a.d, u_input.a.x), _wgslsmith_mult_i32(global2.b, 31848i)), vec2<f32>(934f, -898f), u_input.c.x & 0u, select(_wgslsmith_mod_i32(global2.b, u_input.a.x), 13232i, any(global2.c.xx)), u_input.c.x), ~(~(-global2.a.a)), vec2<bool>(global2.c.x, true), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(global2.a.e, 14u)], global2.a.b.x) + vec2<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 14u)], -1000f)) + vec2<f32>(global2.a.b.x, global1[_wgslsmith_index_u32(global2.a.e, 14u)])))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a.b.x, global1[_wgslsmith_index_u32(global2.a.e, 14u)], 390f) * vec3<f32>(global2.a.b.x, global2.a.b.x, global1[_wgslsmith_index_u32(global2.a.e, 14u)])))))), Struct_4(Struct_1(15518i, vec2<f32>(_wgslsmith_div_f32(global2.a.b.x, global1[_wgslsmith_index_u32(u_input.b.x, 14u)]), 936f), 56687u, 1i, _wgslsmith_add_u32(~99839u, _wgslsmith_sub_u32(12516u, 0u))), -_wgslsmith_dot_vec4_i32(select(vec4<i32>(-24834i, global2.a.d, u_input.a.x, global2.b), vec4<i32>(-51199i, 34891i, global2.a.d, -4415i), global2.c.x), vec4<i32>(0i, 2147483647i, u_input.a.x, 7160i)), !vec2<bool>(1u <= u_input.b.x, select(global2.c.x, global2.c.x, global2.c.x)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.a.b.x, 976f) * global2.a.b), vec2<f32>(global1[_wgslsmith_index_u32(1u, 14u)], global1[_wgslsmith_index_u32(22079u, 14u)]), vec2<bool>(global2.c.x, true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a.b.x, global1[_wgslsmith_index_u32(4294967295u, 14u)])) - vec2<f32>(global2.a.b.x, 585f)), select(global2.c.zy, vec2<bool>(global2.c.x, true), func_3(Struct_3(Struct_2(u_input.a.x, global2.a, global2.a, vec4<f32>(global2.a.b.x, 471f, -1213f, -866f))), global2.c.x, vec2<i32>(-72415i, u_input.a.x)).x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.b.x, global2.a.b.x, global1[_wgslsmith_index_u32(0u, 14u)]))))));
    var var_1 = func_7(Struct_3(Struct_2(7660i, func_7(Struct_3(Struct_2(u_input.a.x, global2.a, var_0.a.b, var_0.a.d)), Struct_4(global2.a, 3214i, global2.c.xw, vec2<f32>(1840f, -219f), vec3<f32>(511f, 907f, var_0.a.b.b.x)), Struct_4(var_0.a.c, -1914i, vec2<bool>(global2.c.x, global2.c.x), var_0.a.b.b, var_0.a.d.yyz)).a.b, var_0.a.c, vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0.a.c.c, 14u)]), _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(38661u, 14u)])), _wgslsmith_f_op_f32(433f * -441f), global2.a.b.x))), Struct_4(Struct_1(~var_0.a.a << (var_0.a.c.c % 32u), global2.a.b, (23633u ^ var_0.a.c.e) >> (_wgslsmith_mult_u32(var_0.a.c.e, var_0.a.c.c) % 32u), select(1i, reverseBits(-2147483647i), true), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.b.c, 0u), u_input.c) & _wgslsmith_clamp_u32(0u, u_input.b.x, 1300u)), u_input.a.x, !vec2<bool>(global2.c.x, false), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + var_0.a.c.b)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-938f, 686f, func_6(u_input.b.x, global2.a.a, vec4<u32>(0u, 9736u, 0u, u_input.b.x), global2.c.x).d.x)))), Struct_4(var_0.a.b, 19912i, global2.c.xy, _wgslsmith_f_op_vec2_f32(-global2.a.b), vec3<f32>(_wgslsmith_f_op_f32(var_0.a.d.x - var_0.a.d.x), var_0.a.c.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b.x, 14u)])))));
    global1 = array<f32, 14>();
    var var_2 = 1u | _wgslsmith_clamp_u32(~func_6(abs(85681u), -2147483647i, ~vec4<u32>(4294967295u, 7982u, 4294967295u, 0u), any(vec4<bool>(false, true, true, global2.c.x))).b.c, 1u, func_6(var_1.a.b.e, _wgslsmith_div_i32(u_input.a.x, -13498i), select(vec4<u32>(27446u, var_1.a.b.e, var_1.a.b.e, u_input.b.x), vec4<u32>(8252u, 29419u, var_0.a.c.e, 5978u), global2.c.x), !global2.c.x).c.c & u_input.b.x);
    global1 = array<f32, 14>();
    let var_3 = 38568u <= u_input.c.x;
    let var_4 = -abs(-2147483647i);
    let var_5 = countOneBits(u_input.c.x << ((~global2.a.c >> (var_0.a.b.e % 32u)) % 32u)) >> (u_input.c.x % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.c.a, _wgslsmith_mult_u32(~73162u, var_0.a.b.c), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(var_1.a.b.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-209f, -475f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(21795u, 14u)], _wgslsmith_f_op_f32(abs(1562f))))))));
}

