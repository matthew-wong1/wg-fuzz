struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<f32>, arg_1: i32) -> vec3<i32> {
    var var_0 = reverseBits(u_input.d | select(~(~vec2<u32>(u_input.c, 4294967295u)), vec2<u32>(23964u, u_input.b.x) | select(vec2<u32>(u_input.d.x, 15242u), u_input.d, true), true));
    var_0 = vec2<u32>(~_wgslsmith_mult_u32(countOneBits(_wgslsmith_mult_u32(var_0.x, u_input.d.x)), ~reverseBits(0u)), 1u);
    var var_1 = -2147483647i;
    return vec3<i32>(8003i, arg_1, min(0i, abs((i32(-1i) * -2147483647i) ^ (-1i | u_input.a))));
}

fn func_2() -> vec3<u32> {
    global0 = 25334u;
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2338f, 1f, -1410f))));
    let var_1 = ~0i;
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(184f, var_0.x, 1000f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1169f), _wgslsmith_f_op_f32(var_0.x - 558f), -798f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2523f, _wgslsmith_f_op_f32(var_0.x + var_0.x), -452f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1735f, -575f, var_0.x), vec3<f32>(-675f, -451f, var_0.x), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.x, -965f, var_0.x), vec3<f32>(var_0.x, -1021f, -1000f))), vec3<bool>(true, true, true))), any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), false)))))));
    var var_2 = Struct_2(Struct_1((select(4294967295u, u_input.b.x, true) < 0u) | true, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, 1000f))))), -15634i, all(vec2<bool>(true, true))), -func_3(_wgslsmith_f_op_vec2_f32(-var_0.zx), 2147483647i), Struct_1(var_0.x == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * 1f), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, var_0.x, 403f), vec3<f32>(var_0.x, -195f, var_0.x), true)))))), -480i, !(min(u_input.d.x, 11185u) > (u_input.b.x ^ 35139u))), Struct_1(28572u < (~u_input.b.x & ~4294967295u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-166f, var_0.x, var_0.x))), var_1, false));
    return u_input.b | u_input.b;
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: f32, arg_3: vec4<bool>) -> Struct_2 {
    global0 = 0u;
    var var_0 = arg_0.b;
    global0 = reverseBits(33541u);
    var var_1 = abs(~_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_add_u32(var_0.x, arg_0.b.x), _wgslsmith_sub_u32(56421u, 28802u), ~u_input.b.x, u_input.c ^ 0u), min(vec4<u32>(u_input.b.x, 4294967295u, u_input.c, var_0.x), _wgslsmith_div_vec4_u32(vec4<u32>(0u, 4294967295u, 0u, 1u), vec4<u32>(var_0.x, 1u, 4294967295u, 1u)))));
    var_1 = countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(var_1.x, arg_0.b.x >> (var_1.x % 32u), _wgslsmith_sub_u32(1u, 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.e.x, var_1.x, 4294967295u), u_input.b)), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, var_0.x, 39878u, 0u), vec4<u32>(u_input.c, u_input.c, var_0.x, 0u)) >> (firstLeadingBit(vec4<u32>(0u, arg_0.e.x, arg_0.c, 1u)) % vec4<u32>(32u))) >> (vec4<u32>(var_1.x, func_2().x, _wgslsmith_add_u32(1u, firstLeadingBit(var_0.x)), abs(~28079u)) % vec4<u32>(32u)));
    return Struct_2(Struct_1(false, arg_0.a.b, firstTrailingBit(reverseBits(2147483647i)), !select(var_0.x == var_0.x, false, !arg_3.x)), vec3<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-23517i, arg_1, -2147483647i, -45166i), vec4<i32>(arg_1, u_input.a, -25909i, u_input.a)) & _wgslsmith_add_i32(arg_0.a.c, -6642i), select(-u_input.a, 1i, arg_0.a.a)), firstLeadingBit(-arg_1) | 15207i, arg_1), arg_0.a, arg_0.a);
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec3<f32>) -> vec3<f32> {
    let var_0 = arg_0;
    global0 = reverseBits(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d.x, u_input.c, u_input.d.x, u_input.d.x), vec4<u32>(0u, 4294967295u, u_input.c, u_input.d.x)), _wgslsmith_mult_vec4_u32(select(vec4<u32>(4294967295u, u_input.c, 1u, u_input.b.x), vec4<u32>(u_input.c, 4294967295u, 0u, u_input.d.x), vec4<bool>(arg_0.x, true, arg_1.d, false)), vec4<u32>(48437u, u_input.d.x, u_input.b.x, 35323u) << (vec4<u32>(u_input.b.x, u_input.c, 22159u, 80234u) % vec4<u32>(32u)))), _wgslsmith_mod_u32(reverseBits(u_input.b.x), ~1656u) | ~u_input.b.x));
    var var_1 = func_4(Struct_3(arg_1, func_2(), u_input.d.x, -30887i, vec3<u32>(u_input.c, ~(~u_input.b.x), u_input.d.x)), ~arg_1.c, 1000f, !(!select(vec4<bool>(arg_1.a, false, false, true), !vec4<bool>(arg_1.a, true, var_0.x, false), vec4<bool>(false, arg_0.x, false, false))));
    global0 = u_input.b.x;
    var var_2 = _wgslsmith_f_op_f32(-arg_1.b.x);
    return vec3<f32>(_wgslsmith_f_op_f32(step(-250f, var_1.a.b.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1375f), _wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(-var_1.d.b.x)))))), _wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-792f, 541f))))));
}

fn func_5(arg_0: u32, arg_1: vec3<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_vec3_f32(func_1(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), Struct_1(true, vec3<f32>(arg_1.x, arg_1.x, arg_1.x), 0i, true), _wgslsmith_div_vec3_f32(vec3<f32>(-642f, arg_1.x, arg_1.x), vec3<f32>(-1112f, 670f, arg_1.x)))).x));
    let var_1 = func_4(Struct_3(func_4(Struct_3(func_4(Struct_3(Struct_1(true, vec3<f32>(var_0, 526f, arg_1.x), 9075i, false), u_input.b, 0u, 0i, u_input.b), 20961i, var_0, vec4<bool>(false, true, true, false)).d, ~vec3<u32>(arg_0, 1u, 1u), u_input.b.x, _wgslsmith_div_i32(u_input.a, u_input.a), u_input.b), 0i, _wgslsmith_f_op_f32(f32(-1f) * -2009f), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))).c, vec3<u32>(44748u, ~4294967295u, ~firstLeadingBit(u_input.d.x)), _wgslsmith_add_u32(u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, u_input.b.x, 20913u, 1u), vec4<u32>(1u, 1u, 20406u, 88206u)) | reverseBits(arg_0)), func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(588f, 889f), vec2<f32>(404f, arg_1.x))) + _wgslsmith_f_op_vec2_f32(arg_1.yy * arg_1.yx)), _wgslsmith_sub_i32(~u_input.a, min(2147483647i, 74299i))).x, vec3<u32>(~_wgslsmith_div_u32(u_input.c, 4294967295u), arg_0, 11437u)), -1i, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(911f)), -1848f, all(vec2<bool>(true, true)))), !vec4<bool>(true, all(vec4<bool>(true, true, true, true)), all(vec4<bool>(true, true, true, true)), false)).c;
    var var_2 = var_1;
    var var_3 = var_1;
    var_2 = var_1;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~_wgslsmith_mult_u32(~(~(~u_input.c)), _wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(61115u, 68695u, u_input.b.x, u_input.d.x), vec4<u32>(8495u, u_input.d.x, u_input.c, u_input.c)), _wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(u_input.c, 29973u, 0u, 98853u)), ~vec4<u32>(41394u, u_input.d.x, 1u, u_input.b.x))));
    global0 = ~(~u_input.c) << (1u % 32u);
    global0 = _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, min(3679u, _wgslsmith_mult_u32(_wgslsmith_sub_u32(27425u, u_input.b.x), ~14598u))), ~abs(vec2<u32>(_wgslsmith_clamp_u32(0u, u_input.b.x, u_input.b.x), 208u)));
    let var_0 = Struct_2(func_5(1u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1088f, 2264f, 656f))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(func_1(vec2<bool>(false, false), Struct_1(false, vec3<f32>(-136f, 1221f, 1196f), 2147483647i, false), vec3<f32>(-586f, 242f, -1257f))))))), vec3<i32>(1i, -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, 67192i, u_input.a), vec4<i32>(u_input.a, u_input.a, 30760i, u_input.a)), 0i) >> (~u_input.b % vec3<u32>(32u)), Struct_1(select(u_input.d.x > u_input.d.x, all(vec3<bool>(true, true, true)), false), vec3<f32>(1325f, -815f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1143f, 143f) - _wgslsmith_f_op_f32(select(1000f, -2049f, false)))), u_input.a, true), Struct_1(true, func_4(Struct_3(Struct_1(false, vec3<f32>(1420f, 426f, -1325f), -1i, true), u_input.b, 19140u ^ u_input.d.x, u_input.a, ~vec3<u32>(21915u, 4294967295u, 4294967295u)), _wgslsmith_sub_i32(reverseBits(1i), -2147483647i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-937f, -179f)) + _wgslsmith_div_f32(296f, 128f)), vec4<bool>(true, true, true, true)).a.b, u_input.a, !(u_input.a < ~u_input.a)));
    var var_1 = Struct_3(Struct_1((_wgslsmith_clamp_i32(-26630i, var_0.c.c, 36350i) | _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, var_0.d.c, 0i), vec4<i32>(21648i, 0i, var_0.c.c, 23832i))) > _wgslsmith_clamp_i32(~var_0.c.c, countOneBits(0i), reverseBits(var_0.b.x)), vec3<f32>(var_0.a.b.x, var_0.d.b.x, _wgslsmith_f_op_f32(sign(var_0.a.b.x))), u_input.a, any(!vec4<bool>(false, var_0.a.d, var_0.d.a, false))), ~_wgslsmith_add_vec3_u32(vec3<u32>(0u, _wgslsmith_dot_vec2_u32(u_input.d, vec2<u32>(4294967295u, u_input.b.x)), u_input.c | 37260u), u_input.b), ~(~(~u_input.b.x)), reverseBits(i32(-1i) * -1i), _wgslsmith_sub_vec3_u32(reverseBits(~u_input.b), vec3<u32>(~123001u, _wgslsmith_mult_u32(0u, u_input.d.x), abs(u_input.d.x))) << (u_input.b % vec3<u32>(32u)));
    var var_2 = vec2<bool>(!(var_0.d.b.x < _wgslsmith_f_op_f32(round(var_1.a.b.x))), false);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_vec3_f32(func_1(vec2<bool>(var_1.a.a, true), var_0.c, vec3<f32>(129f, var_1.a.b.x, 2038f))).x)), var_1.a.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(0i), ~vec2<i32>(-_wgslsmith_sub_i32(-682i, var_1.a.c), _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(-1i, 58336i, var_0.b.x, 12369i)), countOneBits(vec4<i32>(var_0.b.x, var_0.c.c, var_1.d, u_input.a)))), max(var_0.b.zx, var_0.b.yy), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-664f)) * _wgslsmith_f_op_f32(var_0.a.b.x * var_0.d.b.x)));
}

