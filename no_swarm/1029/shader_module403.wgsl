struct Struct_1 {
    a: bool,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: vec4<f32>, arg_2: i32) -> i32 {
    let var_0 = select(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_2, 1i), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, 23065i), u_input.b)) >> (~firstTrailingBit(vec2<u32>(26893u, 37795u)) % vec2<u32>(32u)), abs(vec2<i32>(-2147483647i, reverseBits(arg_2))), any(select(!vec2<bool>(arg_0, false), select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, true), vec2<bool>(true, arg_0)), vec2<bool>(true, true)))) | abs((vec2<i32>(-1i) * -vec2<i32>(1i, u_input.a.x)) << (~vec2<u32>(1u, 1u) % vec2<u32>(32u)));
    var var_1 = vec2<bool>(false, ((arg_0 && (arg_0 & arg_0)) | any(select(vec4<bool>(arg_0, true, false, true), vec4<bool>(arg_0, false, arg_0, arg_0), vec4<bool>(false, arg_0, false, false)))) | (0i < var_0.x));
    var_1 = !(!select(vec2<bool>(arg_0, true), select(vec2<bool>(true, true), !vec2<bool>(arg_0, false), true), true));
    let var_2 = true;
    var var_3 = ~(i32(-1i) * -_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(-1i, -1i, -17923i), 1i, firstTrailingBit(-2147483647i)));
    return -2147483647i;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = arg_0;
    var_1 = arg_0;
    var_1 = Struct_1(any(!(!select(vec3<bool>(true, var_1.a, true), vec3<bool>(var_0.a, false, var_0.a), var_1.b))), false, _wgslsmith_f_op_f32(step(-746f, _wgslsmith_f_op_f32(max(710f, _wgslsmith_f_op_f32(var_0.c * arg_0.c))))));
    var var_2 = func_3(any(vec2<bool>(arg_0.b | arg_0.a, var_0.a & var_1.b)) || var_1.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(722f, var_0.c, _wgslsmith_f_op_f32(var_0.c + _wgslsmith_f_op_f32(-1000f * 742f)), 532f)), -1i);
    return var_0;
}

fn func_1(arg_0: vec3<u32>) -> bool {
    let var_0 = func_2(Struct_1(true, !(!(-2147483647i < u_input.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-282f + -505f)))), vec2<u32>(0u, ~(~arg_0.x)));
    var var_1 = u_input.b.x;
    let var_2 = 1007f;
    var var_3 = u_input.b.x;
    var_1 = u_input.b.x;
    return true;
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: f32) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(_wgslsmith_add_u32(69954u, 46018u), ~2729u, 59619u, _wgslsmith_dot_vec3_u32(vec3<u32>(11836u, 1u, 44672u), vec3<u32>(20052u, 57938u, 34324u)))), firstTrailingBit(~vec4<u32>(0u, 18537u, 17574u, 32299u))), func_2(Struct_1(arg_0.a, select(false, !arg_1, true), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2, arg_2))), ~(~_wgslsmith_div_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(2864u, 1u)))), select(vec3<bool>(arg_1 | arg_0.a, !func_1(vec3<u32>(1u, 0u, 1u)), any(!vec3<bool>(true, false, arg_1))), vec3<bool>(arg_1, arg_1, true), true), func_2(func_2(func_2(Struct_1(arg_0.a, arg_1, arg_2), countOneBits(vec2<u32>(20640u, 0u))), abs(_wgslsmith_add_vec2_u32(vec2<u32>(2207u, 46492u), vec2<u32>(1u, 64549u)))), vec2<u32>(1u, 1u)), arg_0);
    var var_1 = func_2(Struct_1(false && arg_1, func_1(abs(vec3<u32>(19686u, var_0.a, 22612u) << (vec3<u32>(0u, var_0.a, 0u) % vec3<u32>(32u)))), arg_2), _wgslsmith_div_vec2_u32(abs(abs(vec2<u32>(var_0.a, 1u))), vec2<u32>(var_0.a, 8458u)));
    var var_2 = Struct_2(var_0.a, func_2(Struct_1(arg_2 >= -244f, arg_0.b, var_0.d.c), max(~(~vec2<u32>(1u, var_0.a)), ~_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.a, 3244u), vec2<u32>(22843u, 0u)))), select(!select(!vec3<bool>(arg_1, arg_0.a, arg_1), vec3<bool>(arg_1, arg_1, var_0.b.a), vec3<bool>(true, arg_0.a, var_1.b)), !select(!vec3<bool>(var_1.a, true, true), !vec3<bool>(var_1.b, var_0.e.b, var_0.d.a), select(var_0.c, vec3<bool>(var_1.b, false, var_1.a), var_0.e.a)), u_input.a.x >= ~u_input.b.x), func_2(arg_0, vec2<u32>(min(select(var_0.a, var_0.a, var_1.b), var_0.a), var_0.a)), Struct_1(true, var_0.c.x, _wgslsmith_f_op_f32(min(var_1.c, -838f))));
    var var_3 = _wgslsmith_mod_vec2_i32(~_wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.b, vec2<i32>(u_input.b.x, u_input.a.x)), _wgslsmith_mult_vec2_i32(u_input.a.wz, vec2<i32>(1i, u_input.b.x)), ~u_input.a.xw) >> (select(~(~vec2<u32>(1u, var_0.a)), _wgslsmith_div_vec2_u32(~vec2<u32>(1u, var_0.a), firstLeadingBit(vec2<u32>(0u, 10226u))), arg_0.b) % vec2<u32>(32u)), vec2<i32>(26221i, 0i & _wgslsmith_sub_i32(i32(-1i) * -2147483647i, u_input.b.x >> (var_2.a % 32u))));
    var var_4 = ~func_3(var_3.x < _wgslsmith_div_i32(_wgslsmith_sub_i32(-1i, u_input.b.x), 1i), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(-var_0.d.c), var_1.c, -1372f))), var_3.x);
    return Struct_1(-var_3.x > u_input.a.x, (_wgslsmith_sub_i32(max(var_3.x, u_input.b.x), _wgslsmith_mod_i32(2147483647i, u_input.a.x)) << (~_wgslsmith_sub_u32(0u, var_2.a) % 32u)) < _wgslsmith_mult_i32(-15585i, var_3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -629f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_1(-25393i > ~min(9146i, u_input.b.x), func_1(vec3<u32>(35697u, ~56781u, 1u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -834f) * _wgslsmith_f_op_f32(min(943f, 2111f))) + -368f)), !(!(!any(vec3<bool>(true, false, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(260f + _wgslsmith_f_op_f32(sign(func_2(Struct_1(false, false, 101f), vec2<u32>(32828u, 4294967295u)).c)))));
    let var_1 = var_0;
    let var_2 = -2147483647i;
    var var_3 = Struct_1(true, var_0.b, 1456f);
    var var_4 = -select(u_input.a & vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_2, -2147483647i), u_input.a.zz), ~(-23472i), u_input.a.x, _wgslsmith_mult_i32(-1i, u_input.b.x)), select(vec4<i32>(-1i, -17647i, ~u_input.b.x, var_2), -u_input.a ^ ~u_input.a, any(vec2<bool>(var_1.a, false))), vec4<bool>(true, false, var_3.b, func_4(var_0, all(vec2<bool>(false, true)), _wgslsmith_f_op_f32(-1000f - -3590f)).a));
    var_3 = Struct_1(!(1374f >= _wgslsmith_f_op_f32(round(-132f))) && true, func_4(Struct_1(!(!var_3.b), var_0.a, _wgslsmith_f_op_f32(var_0.c - _wgslsmith_f_op_f32(f32(-1f) * -1751f))), !any(vec3<bool>(var_3.b, true, var_0.b)), 1f).a, _wgslsmith_f_op_f32(ceil(var_3.c)));
    var var_5 = firstTrailingBit(u_input.a.wx) ^ vec2<i32>(0i, _wgslsmith_dot_vec3_i32(var_4.yzw, select(-vec3<i32>(15537i, var_4.x, var_4.x), vec3<i32>(-33932i, 0i, u_input.b.x), vec3<bool>(true, var_3.a, var_1.a))));
    let var_6 = firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(64441u, ~91877u, _wgslsmith_mult_u32(33670u, 41748u)), 12734u, ~_wgslsmith_mod_u32(67586u, 5903u), ~(~28487u)), vec4<u32>(1u, ~(~14889u), 63961u, ~abs(4999u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_6, _wgslsmith_mod_u32(~0u, var_6 | 7229u), ~(var_6 << (var_6 % 32u)), countOneBits(1u)) & vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_add_u32(0u, 99843u), ~var_6), var_6, 1u, var_6));
}

