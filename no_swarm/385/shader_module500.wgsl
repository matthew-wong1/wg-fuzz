struct Struct_1 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec4<bool>,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: f32,
    c: u32,
    d: vec2<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec3<u32> {
    var var_0 = vec3<u32>(u_input.b.x, ~_wgslsmith_mult_u32(u_input.a, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(10057u, 0u, 4324u, 33960u)), abs(50835u))), 7960u);
    let var_1 = vec2<bool>(all(vec4<bool>(true, _wgslsmith_mult_i32(-38011i, 0i) > u_input.c.x, true, false)), true);
    let var_2 = Struct_1(all(vec2<bool>(false, any(vec4<bool>(false, var_1.x, var_1.x, false)))) | ((u_input.c.x == _wgslsmith_dot_vec4_i32(u_input.c, u_input.c)) || (!var_1.x || (1u != var_0.x))), vec2<u32>(var_0.x, u_input.b.x));
    var_0 = vec3<u32>(_wgslsmith_clamp_u32(0u, u_input.a, abs(6046u)), _wgslsmith_mod_u32(1u, ~(countOneBits(u_input.b.x) ^ var_2.b.x)), 65284u);
    let var_3 = var_2;
    return vec3<u32>(_wgslsmith_div_u32(1u, 78564u << ((45980u ^ u_input.a) % 32u)), _wgslsmith_dot_vec3_u32(countOneBits(firstTrailingBit(u_input.b.yzz)), vec3<u32>(var_2.b.x, var_2.b.x, 1u)), u_input.b.x) | ~abs(~(~u_input.b.zxx));
}

fn func_2(arg_0: vec2<u32>) -> f32 {
    var var_0 = func_3();
    var var_1 = u_input.c.x;
    var var_2 = select(select(vec2<bool>(1u != arg_0.x, (4294967295u & arg_0.x) >= 4294967295u), !select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec4<bool>(true, false, false, false))), vec2<bool>(true, true)), !(!(!select(vec2<bool>(true, true), vec2<bool>(false, true), false))), !vec2<bool>(true, any(vec2<bool>(true, true))));
    let var_3 = Struct_5(_wgslsmith_f_op_f32(f32(-1f) * -1034f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1070f, 253f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -469f) * _wgslsmith_f_op_f32(459f + 1730f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1646f * 897f)))), var_0.x, ~select(var_0.zy, vec2<u32>(var_0.x | arg_0.x, _wgslsmith_sub_u32(1u, arg_0.x)), select(select(vec2<bool>(var_2.x, var_2.x), vec2<bool>(var_2.x, true), vec2<bool>(var_2.x, var_2.x)), select(vec2<bool>(true, false), vec2<bool>(var_2.x, var_2.x), true), select(vec2<bool>(var_2.x, false), vec2<bool>(false, var_2.x), true))), Struct_2(Struct_1(!var_2.x, vec2<u32>(countOneBits(715u), _wgslsmith_mult_u32(9310u, u_input.b.x))), -_wgslsmith_sub_vec3_i32(u_input.c.yyz ^ vec3<i32>(0i, 65874i, u_input.c.x), ~vec3<i32>(-10453i, -2147483647i, u_input.c.x)), !vec4<bool>(var_2.x, var_2.x, true, any(vec3<bool>(var_2.x, var_2.x, var_2.x))), -42871i, Struct_1(var_2.x, select(arg_0, vec2<u32>(4294967295u, var_0.x), vec2<bool>(var_2.x, true)) & max(u_input.b.yw, vec2<u32>(1u, 0u)))));
    var var_4 = !(!vec2<bool>(false, any(var_3.e.c)));
    return 1226f;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_5) -> Struct_2 {
    var var_0 = true || ((true && arg_1.a) & arg_2.e.a.a);
    var_0 = false;
    let var_1 = arg_2.e.b;
    var_0 = !(arg_0 <= 435f);
    var var_2 = ~arg_2.e.e.b.x;
    return Struct_2(arg_1, ~(-min(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, u_input.c.x, 50605i), arg_2.e.b), vec3<i32>(var_1.x, arg_2.e.d, arg_2.e.d))), vec4<bool>(arg_1.a, all(arg_2.e.c), !(!arg_2.e.a.a), arg_2.e.a.a), -36301i, Struct_1(all(arg_2.e.c.xw), u_input.b.ww));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: u32) -> bool {
    var var_0 = !arg_1.a;
    let var_1 = Struct_3(u_input.c.yzz);
    var_0 = false;
    var var_2 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -984f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1275f + 546f))), true))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) + _wgslsmith_div_f32(-166f, 654f))))), ~arg_1.b.x, ~(~vec2<u32>(1u, arg_0)), func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-726f - 317f)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-817f, -1756f)), _wgslsmith_f_op_f32(sign(901f))))), Struct_1(false, ~firstLeadingBit(vec2<u32>(4294967295u, arg_1.b.x))), Struct_5(_wgslsmith_f_op_f32(select(-188f, _wgslsmith_f_op_f32(func_2(vec2<u32>(arg_2, 31474u))), true)), _wgslsmith_div_f32(-304f, _wgslsmith_f_op_f32(sign(1402f))), u_input.a, ~_wgslsmith_add_vec2_u32(vec2<u32>(arg_0, u_input.b.x), vec2<u32>(1u, 0u)), Struct_2(arg_1, _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c.x, 0i, var_1.a.x), u_input.c.wyy), !vec4<bool>(arg_1.a, true, true, false), var_1.a.x, Struct_1(false, arg_1.b)))));
    var_0 = ~var_2.d.x <= arg_1.b.x;
    return !(all(vec4<bool>(true, any(var_2.e.c.yyy), any(vec3<bool>(var_2.e.c.x, arg_1.a, true)), true)) | true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(1f, 632f, _wgslsmith_clamp_u32(~u_input.a, _wgslsmith_mult_u32(_wgslsmith_mult_u32(24716u, u_input.b.x), 1u), abs(4294967295u)), u_input.b.zy, Struct_2(Struct_1(true, firstTrailingBit(~u_input.b.wz)), -u_input.c.wxw, vec4<bool>(all(vec4<bool>(true, true, true, true)), !func_1(19714u, Struct_1(false, u_input.b.wx), u_input.a), all(vec4<bool>(true, true, true, true)), all(vec4<bool>(false, false, false, false)) == true), _wgslsmith_mult_i32(-14835i, select(func_4(-531f, Struct_1(false, u_input.b.xw), Struct_5(-467f, 845f, 19785u, u_input.b.yw, Struct_2(Struct_1(false, vec2<u32>(6760u, u_input.a)), u_input.c.zwz, vec4<bool>(false, true, false, false), u_input.c.x, Struct_1(false, u_input.b.yx)))).b.x, reverseBits(2147483647i), all(vec3<bool>(true, false, true)))), Struct_1(false, vec2<u32>(u_input.b.x ^ 50961u, 1u))));
    var_0 = Struct_5(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-486f, 177f))))), var_0.c, _wgslsmith_add_vec2_u32(var_0.e.a.b, firstTrailingBit(u_input.b.zz)), Struct_2(func_4(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-469f, -521f) + 918f), var_0.e.e, Struct_5(var_0.b, _wgslsmith_f_op_f32(sign(var_0.b)), var_0.c & u_input.a, var_0.d ^ vec2<u32>(var_0.d.x, u_input.a), Struct_2(Struct_1(true, var_0.d), var_0.e.b, var_0.e.c, -2147483647i, Struct_1(var_0.e.e.a, u_input.b.yx)))).e, vec3<i32>(~_wgslsmith_dot_vec2_i32(var_0.e.b.zy, u_input.c.xx), _wgslsmith_dot_vec2_i32(~vec2<i32>(var_0.e.d, 27073i), vec2<i32>(-2147483647i, var_0.e.b.x) << (var_0.e.e.b % vec2<u32>(32u))), -var_0.e.b.x & min(u_input.c.x, 31140i)), !select(select(vec4<bool>(var_0.e.e.a, true, var_0.e.e.a, false), vec4<bool>(var_0.e.e.a, false, false, true), vec4<bool>(var_0.e.a.a, var_0.e.c.x, var_0.e.e.a, false)), select(vec4<bool>(true, false, var_0.e.e.a, false), vec4<bool>(var_0.e.a.a, var_0.e.a.a, var_0.e.c.x, var_0.e.e.a), true), true), -70207i, var_0.e.e));
    let var_1 = Struct_3((_wgslsmith_sub_vec3_i32(-var_0.e.b, ~vec3<i32>(0i, var_0.e.b.x, u_input.c.x)) | abs(var_0.e.b)) << (abs(vec3<u32>(u_input.a, _wgslsmith_add_u32(var_0.d.x, var_0.d.x), u_input.b.x)) % vec3<u32>(32u)));
    var var_2 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.a))), var_0.a, !var_0.e.c.x))), 1f, abs(~min(u_input.b.x, var_0.c) & 4294967295u), firstLeadingBit(func_3().zz), Struct_2(var_0.e.e, var_0.e.b << (u_input.b.xzz % vec3<u32>(32u)), vec4<bool>(var_0.e.e.a, true, max(var_0.d.x, 16201u) < u_input.a, var_0.e.a.a & all(vec4<bool>(true, var_0.e.c.x, var_0.e.e.a, true))), ~u_input.c.x, func_4(_wgslsmith_f_op_f32(f32(-1f) * -220f), var_0.e.e, Struct_5(-2198f, -951f, min(u_input.b.x, var_0.c), _wgslsmith_mod_vec2_u32(var_0.d, var_0.d), var_0.e)).e));
    var var_3 = var_1.a.yy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(min(var_1.a.x, _wgslsmith_div_i32(max(51039i, u_input.c.x), -15183i | var_3.x)), ~func_4(970f, func_4(-1000f, Struct_1(var_2.e.a.a, var_2.d), Struct_5(var_0.a, var_2.a, var_2.d.x, var_0.e.e.b, var_2.e)).e, Struct_5(1733f, -473f, var_2.e.a.b.x, var_0.e.a.b, Struct_2(Struct_1(var_2.e.a.a, vec2<u32>(u_input.a, var_2.c)), vec3<i32>(var_1.a.x, 22439i, var_2.e.d), vec4<bool>(var_0.e.e.a, var_2.e.c.x, true, var_0.e.c.x), 94028i, Struct_1(var_2.e.c.x, vec2<u32>(var_0.e.a.b.x, var_0.d.x))))).d), vec2<f32>(var_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -704f) - _wgslsmith_f_op_f32(var_2.b + var_2.a)))));
}

