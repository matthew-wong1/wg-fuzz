struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: vec4<i32>,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: f32,
    d: Struct_1,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: bool = true;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2) -> i32 {
    var var_0 = arg_0.a.a;
    var_0 = _wgslsmith_div_u32(max(arg_0.a.c.x, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(55606u, 4294967295u, 45809u), arg_0.a.d.yxz))), arg_0.a.c.x);
    var var_1 = Struct_4(abs(u_input.b.x), arg_0.a.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -909f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(-437f)))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f - 185f), _wgslsmith_f_op_f32(sign(1272f)))))), arg_0.a);
    let var_2 = global0.a;
    let var_3 = 824f;
    return i32(-1i) * -_wgslsmith_mult_i32(4806i, 23188i);
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: f32) -> Struct_5 {
    global1 = false;
    var var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(624f)), -860f)), _wgslsmith_f_op_f32(1779f - arg_2), _wgslsmith_f_op_f32(-1926f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2), arg_2))), arg_2), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, _wgslsmith_div_f32(-1000f, arg_2), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-571f * arg_2), arg_2)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(arg_2)))))), all(!select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), select(vec4<bool>(arg_0, true, true, false), vec4<bool>(false, false, arg_0, arg_0), vec4<bool>(arg_0, arg_0, arg_0, true)), false))));
    let var_1 = _wgslsmith_mod_vec2_i32(vec2<i32>(max(u_input.a.x, ~func_3(Struct_2(Struct_1(4294967295u, arg_0, vec2<u32>(arg_1, arg_1), vec4<u32>(7970u, arg_1, 4294967295u, 0u))))), 2147483647i), vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(-u_input.a, ~u_input.a), abs(vec4<i32>(u_input.c.x, global0.a, -2147483647i, 1i))), reverseBits(-u_input.b.x) >> (arg_1 % 32u)));
    var var_2 = vec4<bool>(false, all(vec3<bool>(true, true, true)), abs(0u) < (select(firstTrailingBit(arg_1), reverseBits(0u), !arg_0) ^ ((arg_1 & arg_1) >> (~arg_1 % 32u))), !(!arg_0));
    let var_3 = Struct_4(-49554i, abs(~1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(368f)) * 183f))) * arg_2), Struct_1(_wgslsmith_mult_u32(_wgslsmith_div_u32(arg_1, 42984u) >> (1401u % 32u), 0u), arg_0, firstTrailingBit(vec2<u32>(reverseBits(54371u), 0u)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1, arg_1, 2149u, 11383u), vec4<u32>(0u, arg_1, 0u, 0u)) & (~vec4<u32>(44346u, 13735u, 19283u, 98540u) << (reverseBits(vec4<u32>(30256u, arg_1, arg_1, arg_1)) % vec4<u32>(32u)))));
    return Struct_5(60856i);
}

fn func_1(arg_0: i32, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: bool) -> u32 {
    global1 = false;
    global0 = Struct_5((arg_1.c.x | -_wgslsmith_mod_i32(-41043i, global0.a)) | u_input.d);
    let var_0 = arg_1.a.a.d.zxw;
    global0 = func_2(arg_3, ~(~arg_1.a.a.a), 199f);
    var var_1 = all(select(vec4<bool>(arg_3, all(vec2<bool>(true, false)), true, true), select(select(vec4<bool>(true, arg_1.a.a.b, arg_3, arg_1.a.a.b), select(vec4<bool>(arg_1.a.a.b, arg_1.a.a.b, arg_3, true), vec4<bool>(arg_1.a.a.b, false, arg_3, arg_3), vec4<bool>(false, arg_3, true, arg_1.a.a.b)), arg_1.a.a.b && true), select(vec4<bool>(arg_1.a.a.b, arg_1.a.a.b, arg_1.a.a.b, arg_3), vec4<bool>(false, arg_1.a.a.b, true, false), arg_3), vec4<bool>(arg_1.a.a.b, false, false, true)), arg_1.a.a.b));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(~(~_wgslsmith_add_vec4_u32(vec4<u32>(0u, 0u, 1u, 68170u), vec4<u32>(54626u, 0u, 0u, 2115u))), vec4<u32>(~firstTrailingBit(105620u), firstTrailingBit(countOneBits(42394u)), ~0u, func_1(0i, Struct_3(Struct_2(Struct_1(4294967295u, true, vec2<u32>(0u, 0u), vec4<u32>(0u, 1u, 4641u, 4294967295u))), vec2<f32>(358f, 1840f), u_input.a), vec4<f32>(-162f, -740f, 553f, -1561f), true))) >> (vec4<u32>(countOneBits(abs(4294967295u)) << (func_1(u_input.b.x, Struct_3(Struct_2(Struct_1(4294967295u, true, vec2<u32>(10156u, 4294967295u), vec4<u32>(13835u, 39444u, 1u, 1u))), vec2<f32>(114f, 548f), u_input.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-158f, -521f, 291f, -499f)), true) % 32u), ~min(countOneBits(4294967295u), 4294967295u), ~(func_1(-1i, Struct_3(Struct_2(Struct_1(0u, false, vec2<u32>(4294967295u, 4294967295u), vec4<u32>(12793u, 0u, 0u, 62179u))), vec2<f32>(-144f, 781f), vec4<i32>(u_input.c.x, u_input.b.x, 14374i, 0i)), vec4<f32>(2732f, -2845f, 482f, -512f), true) << (17087u % 32u)), ~4294967295u) % vec4<u32>(32u));
    var var_1 = _wgslsmith_dot_vec2_u32(max(var_0.yx, select(min(vec2<u32>(var_0.x, 0u), abs(var_0.xw)), vec2<u32>(0u, var_0.x) & vec2<u32>(var_0.x, var_0.x), true)), var_0.ww);
    var var_2 = Struct_1(0u, true, ~max(vec2<u32>(var_0.x, 1u), ~min(vec2<u32>(var_0.x, 11197u), var_0.yy)), _wgslsmith_sub_vec4_u32(var_0, vec4<u32>(4294967295u, 45514u, 38782u, _wgslsmith_add_u32(var_0.x, var_0.x))));
    var_2 = Struct_1(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(~min(vec4<u32>(var_0.x, var_0.x, 0u, 0u), var_0), min(vec4<u32>(64538u, var_0.x, 0u, var_0.x) & vec4<u32>(var_2.a, var_2.a, 0u, var_2.c.x), abs(vec4<u32>(var_2.c.x, 1u, 4996u, var_0.x)))), firstLeadingBit(_wgslsmith_add_vec4_u32(var_2.d, _wgslsmith_add_vec4_u32(vec4<u32>(3242u, var_2.d.x, var_2.d.x, 41848u), vec4<u32>(4294967295u, 16083u, var_2.c.x, var_2.c.x))))), var_2.b, _wgslsmith_mult_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 4294967295u), ~var_2.d.xx), reverseBits(_wgslsmith_mult_vec2_u32(~var_0.wz, ~var_0.wx))), ~(~(~vec4<u32>(49321u, 1u, var_0.x, 1u)) | vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.c.x, var_0.x), vec2<u32>(95670u, var_2.d.x)), ~0u, 40969u, _wgslsmith_add_u32(0u, 17056u))));
    var var_3 = -637f;
    var var_4 = firstLeadingBit(-28063i);
    global1 = true;
    global0 = Struct_5(-(~u_input.b.x) >> (~firstLeadingBit(~var_2.d.x) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~var_0.x, var_2.a, var_0.x, ~firstLeadingBit(firstTrailingBit(var_2.a))), firstLeadingBit(var_0), vec2<u32>(_wgslsmith_dot_vec4_u32(abs(~vec4<u32>(1u, 24514u, var_2.a, 63332u)), ~(~var_0)), ~(var_2.a >> (var_2.d.x % 32u)) & 1u), -947f, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(330f * -404f), 152f, _wgslsmith_f_op_f32(ceil(1235f)), _wgslsmith_div_f32(-956f, 852f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(424f))), -2703f, 1000f, _wgslsmith_f_op_f32(select(-783f, _wgslsmith_f_op_f32(1000f * 769f), var_2.b))), !vec4<bool>(var_2.b, true, all(vec2<bool>(var_2.b, var_2.b)), false))));
}

