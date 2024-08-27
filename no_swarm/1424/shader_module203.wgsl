struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
    c: Struct_2,
    d: u32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1481i;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<f32>, arg_1: u32, arg_2: Struct_3) -> u32 {
    var var_0 = Struct_3(arg_2.a, arg_2.b, Struct_2(abs(arg_2.c.a | firstTrailingBit(arg_2.c.a)), _wgslsmith_f_op_vec4_f32(arg_0 - vec4<f32>(arg_0.x, -333f, arg_0.x, arg_2.b.x))), _wgslsmith_div_u32(~select(arg_2.c.a.x >> (4294967295u % 32u), ~arg_2.d, true), arg_2.c.a.x), vec2<bool>(any(select(!vec3<bool>(true, arg_2.e.x, true), vec3<bool>(arg_2.e.x, arg_2.a, arg_2.a), false)), arg_2.a));
    var_0 = Struct_3(true & !(false & var_0.a), _wgslsmith_f_op_vec3_f32(-arg_2.b), var_0.c, abs(4294967295u), vec2<bool>(true, !any(vec3<bool>(var_0.e.x, arg_2.a, var_0.e.x))));
    global0 = u_input.a.x;
    let var_1 = _wgslsmith_f_op_f32(-var_0.b.x);
    var var_2 = !((_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.b.x)) <= _wgslsmith_f_op_f32(min(1646f, _wgslsmith_f_op_f32(-930f - var_0.b.x)))) && any(!select(vec4<bool>(false, var_0.e.x, true, true), vec4<bool>(arg_2.e.x, var_0.a, false, var_0.a), var_0.e.x)));
    return _wgslsmith_dot_vec3_u32(arg_2.c.a | _wgslsmith_clamp_vec3_u32(arg_2.c.a, abs(vec3<u32>(11007u, 4294967295u, 16392u)), arg_2.c.a & (vec3<u32>(arg_2.d, var_0.d, 80200u) >> (vec3<u32>(var_0.c.a.x, arg_2.c.a.x, 4294967295u) % vec3<u32>(32u)))), ~_wgslsmith_add_vec3_u32(var_0.c.a, ~arg_2.c.a));
}

fn func_2() -> vec3<u32> {
    global0 = -31288i;
    global0 = u_input.a.x;
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1853f, -545f) + 1000f), -501f));
    var var_1 = Struct_1(abs(_wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, 39173u, 10710u), vec3<u32>(0u, 0u, 29285u), vec3<u32>(1u, 1u, 1u))) << (vec3<u32>((4294967295u >> (1u % 32u)) >> (func_3(vec4<f32>(835f, 1000f, 800f, -1024f), 1u, Struct_3(true, vec3<f32>(2687f, 1000f, -528f), Struct_2(vec3<u32>(0u, 1u, 4294967295u), vec4<f32>(679f, -2506f, -898f, -1000f)), 80058u, vec2<bool>(true, true))) % 32u), ~(~21592u), 25075u) % vec3<u32>(32u)), all(vec2<bool>(true, select(true, true, true))), select(_wgslsmith_mod_vec2_u32(~vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 1u)), abs(vec2<u32>(4294967295u, 12114u)), select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true), true)) << (~vec2<u32>(1u, 1u) % vec2<u32>(32u)));
    global0 = 13836i;
    return ~(~(~vec3<u32>(_wgslsmith_mult_u32(1u, var_1.a.x), _wgslsmith_dot_vec2_u32(var_1.c, var_1.a.zz), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a.x, 0u, var_1.a.x), vec3<u32>(var_1.a.x, var_1.c.x, 18332u)))));
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: bool) -> vec4<f32> {
    var var_0 = Struct_1(_wgslsmith_add_vec3_u32((firstLeadingBit(vec3<u32>(26161u, 15691u, arg_1)) ^ vec3<u32>(arg_1, 1u, arg_1)) >> ((_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 0u, 78806u), vec3<u32>(arg_1, 25935u, arg_1)) << (func_2() % vec3<u32>(32u))) % vec3<u32>(32u)), abs(vec3<u32>(func_2().x, 4294967295u, arg_1))), !arg_2, ~vec2<u32>(27105u, ~44556u) & vec2<u32>(countOneBits(arg_1), ~max(1u, 27975u)));
    var var_1 = _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(70844u, 0u, arg_1, 4294967295u), vec4<u32>(var_0.c.x, 48559u, 40432u, var_0.c.x)), min(~vec4<u32>(4294967295u, 22062u, var_0.a.x, 4294967295u), vec4<u32>(var_0.c.x, 4294967295u, arg_1, arg_1))) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(~0u, arg_1, ~4294967295u, arg_1), ~vec4<u32>(1u, arg_1, 3446u, var_0.c.x), ~(vec4<u32>(var_0.c.x, 0u, 4294967295u, arg_1) ^ vec4<u32>(0u, arg_1, 27016u, 31882u))), (~(~vec4<u32>(var_0.a.x, var_0.c.x, 19063u, 17664u)) | ~vec4<u32>(30095u, 16736u, 0u, var_0.a.x)) << (vec4<u32>(~func_3(vec4<f32>(737f, 1064f, -471f, 1010f), 1u, Struct_3(false, vec3<f32>(-1279f, 554f, 1134f), Struct_2(var_0.a, vec4<f32>(828f, 1000f, 2009f, 1463f)), var_0.c.x, vec2<bool>(true, false))), var_0.a.x, _wgslsmith_mod_u32(~35599u, var_0.a.x), reverseBits(_wgslsmith_clamp_u32(var_0.c.x, 1u, arg_1))) % vec4<u32>(32u)));
    var var_2 = true;
    var_2 = true || (true != ((any(vec4<bool>(arg_2, true, true, false)) == var_0.b) || (-24791i != countOneBits(u_input.a.x))));
    let var_3 = Struct_3(any(select(!(!vec4<bool>(arg_2, arg_2, arg_2, arg_2)), !(!vec4<bool>(var_0.b, true, var_0.b, var_0.b)), vec4<bool>(arg_2, arg_2, false, arg_2))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-711f * _wgslsmith_f_op_f32(-1571f + 1074f)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-2081f, 364f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, 856f, arg_2)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(923f)) - _wgslsmith_f_op_f32(f32(-1f) * -188f))), Struct_2(var_1.xzw, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-595f, 754f, 941f, -668f)), _wgslsmith_div_vec4_f32(vec4<f32>(-1688f, 826f, -1442f, 298f), vec4<f32>(712f, 783f, -1935f, -2565f)))), var_0.c.x & var_0.c.x, !(!vec2<bool>(true, var_0.b)));
    return vec4<f32>(var_3.c.b.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -648f))), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_3.b.x - var_3.b.x))) - 212f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2733f, -1000f, 1848f, -242f) + vec4<f32>(834f, -867f, 641f, -1082f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(u_input.a.x, 38094u, true)))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(797f + -994f), -1003f, _wgslsmith_div_f32(324f, -1059f), 532f))))));
    global0 = -2147483647i & _wgslsmith_mod_i32(u_input.a.x, ~(~u_input.a.x & ~96018i));
    global0 = 0i | (abs(_wgslsmith_mod_i32(-1i, abs(-10534i))) ^ (-(~37147i) | u_input.a.x));
    global0 = -_wgslsmith_dot_vec2_i32(vec2<i32>(-u_input.a.x, 1i), u_input.a.wz);
    var var_1 = ~(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), -vec2<i32>(0i, -1i)) >> (vec2<u32>(_wgslsmith_mult_u32(abs(4294967295u), 1u), max(_wgslsmith_clamp_u32(1u, 0u, 1u), 12316u)) % vec2<u32>(32u)));
    var var_2 = select(163f >= _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), all(select(vec4<bool>(true, true, true, true), vec4<bool>(var_0.x <= var_0.x, true, true, all(vec3<bool>(false, false, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), true))), all(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), vec3<bool>(true, true, false), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(-701f)), _wgslsmith_f_op_f32(var_0.x * 2158f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * -2003f) + _wgslsmith_f_op_f32(var_0.x + var_0.x))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -288f), _wgslsmith_f_op_f32(-var_0.x), 726f)), firstLeadingBit(~firstTrailingBit(abs(vec2<u32>(4294967295u, 1u)))));
}

