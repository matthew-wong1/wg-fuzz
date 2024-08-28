struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec2<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2() -> vec3<i32> {
    return ~(~_wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(9619i, -1i, 1i), vec3<i32>(6808i, 12475i, -34607i), vec3<i32>(-1i, 38083i, -1i)), vec3<i32>(-16157i, 1i, 4425i), vec3<i32>(-21258i, 16435i, -42881i))) | vec3<i32>(max(1i, 4909i >> (_wgslsmith_sub_u32(u_input.a.x, u_input.a.x) % 32u)), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, countOneBits(0i)), vec2<i32>(1i, 1i)), -(~36425i));
}

fn func_3(arg_0: u32) -> i32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1044f) + -291f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(965f + -686f) + _wgslsmith_f_op_f32(sign(-1623f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1147f, -462f))))), u_input.b.zx, vec4<bool>(true, true, false, !all(vec4<bool>(true, true, true, true))));
    let var_1 = vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, select(-33196i, -2147483647i, false)), abs(vec2<i32>(-1i, 1i))), 21259i >> (var_0.b.x % 32u)) << (~var_0.b % vec2<u32>(32u));
    var var_2 = !select(!select(vec2<bool>(var_0.c.x, true), select(var_0.c.yx, vec2<bool>(false, var_0.c.x), var_0.c.zz), select(var_0.c.wx, vec2<bool>(false, var_0.c.x), var_0.c.x)), vec2<bool>(!(var_0.a == -1002f), any(vec3<bool>(false, var_0.c.x, var_0.c.x))), any(select(vec4<bool>(true, true, false, var_0.c.x), select(var_0.c, var_0.c, vec4<bool>(var_0.c.x, false, var_0.c.x, var_0.c.x)), true)));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(631f + -720f), 427f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.a, var_0.a)))), vec2<bool>(var_0.c.x, var_0.c.x))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_div_f32(1864f, -646f), _wgslsmith_f_op_f32(-1000f - var_0.a)), vec2<f32>(-1683f, _wgslsmith_f_op_f32(-1115f + var_0.a)), !var_2.x))));
    var var_4 = Struct_1(345f, vec2<u32>(41169u, arg_0), !(!select(var_0.c, select(vec4<bool>(false, true, var_0.c.x, true), var_0.c, vec4<bool>(true, false, var_0.c.x, true)), var_0.c)));
    return -1i;
}

fn func_1(arg_0: i32, arg_1: bool) -> vec2<u32> {
    var var_0 = abs(-min(-vec3<i32>(arg_0, -1i, 11528i), vec3<i32>(45962i, arg_0, 28889i)) ^ (func_2() << (select(u_input.c.xxx, ~u_input.c.zww, select(vec3<bool>(arg_1, false, true), vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(arg_1, arg_1, false))) % vec3<u32>(32u))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-195f)) + -692f) - _wgslsmith_f_op_f32(step(258f, -1234f))) * -103f), u_input.a, !vec4<bool>(arg_1, arg_1, !any(vec3<bool>(arg_1, true, true)), select(true, arg_1 || arg_1, false)));
    let var_2 = var_1;
    var_0 = _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(~15777i, _wgslsmith_add_i32(-2147483647i, var_0.x), _wgslsmith_clamp_i32(-83504i, arg_0, arg_0)), min(abs(vec3<i32>(var_0.x, arg_0, 2147483647i)), ~vec3<i32>(var_0.x, arg_0, -2147483647i))) >> (u_input.c.zyx % vec3<u32>(32u)), vec3<i32>(2147483647i, abs(-arg_0), _wgslsmith_mult_i32(-13120i, var_0.x)));
    var_0 = _wgslsmith_sub_vec3_i32(vec3<i32>(arg_0, ~var_0.x, arg_0), vec3<i32>(_wgslsmith_sub_i32(var_0.x & var_0.x, func_3(var_1.b.x)), _wgslsmith_div_i32(2709i, ~var_0.x), var_0.x)) >> (select(vec3<u32>(71725u, u_input.a.x, var_2.b.x), ~u_input.b, select(!var_2.c.wzw, select(!var_2.c.wxz, !var_2.c.wxy, true), vec3<bool>(true, true, true))) % vec3<u32>(32u));
    return ~max(_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(max(u_input.b.zy, vec2<u32>(88385u, 4294967295u)), u_input.b.yx), select(~var_1.b, ~vec2<u32>(var_1.b.x, var_1.b.x), !vec2<bool>(arg_1, true))), u_input.b.xy);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: vec3<i32>) -> StorageBuffer {
    let var_0 = ~u_input.a.x;
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(199f, -797f, arg_0.a, arg_2), vec4<f32>(arg_0.a, 1986f, 1310f, arg_1.a)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_2, -1502f, arg_2, 725f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-734f, arg_0.a, arg_0.a, arg_0.a) + vec4<f32>(1027f, arg_2, arg_2, 1000f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-899f * _wgslsmith_f_op_f32(select(436f, arg_1.a, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.a, -805f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(arg_2, -1049f, false)), _wgslsmith_f_op_f32(-arg_1.a))), arg_0.a) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, 1304f, -743f, arg_0.a)) + vec4<f32>(-652f, arg_2, arg_1.a, arg_0.a)) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1475f, arg_1.a, arg_2, arg_1.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1149f, arg_0.a, 291f, 379f)))))));
    var_1 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.a), 555f, arg_1.a, -892f)));
    var_1 = vec4<f32>(arg_1.a, arg_1.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(929f, arg_1.a) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(680f + _wgslsmith_f_op_f32(arg_0.a - 448f)))), _wgslsmith_div_f32(1120f, -869f));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1f, _wgslsmith_f_op_f32(246f * arg_2), -165f, -1051f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, -1000f, var_1.x, 520f) * vec4<f32>(arg_1.a, var_1.x, arg_0.a, arg_2)) * vec4<f32>(-214f, arg_2, arg_0.a, arg_1.a)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, arg_2, arg_1.a, -921f)))))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(var_1.x - arg_2), 1f, arg_1.a)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1026f, var_1.x, 978f, arg_0.a))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, 581f, -1315f, var_1.x) * vec4<f32>(1841f, var_1.x, 513f, -594f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.a, arg_1.a, 829f, arg_2), vec4<f32>(698f, var_1.x, -405f, arg_0.a), false))), all(select(vec3<bool>(false, arg_1.c.x, false), arg_1.c.zxx, arg_1.c.x)))), any(vec4<bool>(false, false, arg_0.b.x < var_0, !arg_0.c.x)))));
    return StorageBuffer(~arg_1.b, _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, arg_0.b.x, arg_1.b.x & arg_1.b.x, _wgslsmith_mod_u32(firstLeadingBit(arg_1.b.x), 1u)), ~abs(vec4<u32>(arg_0.b.x, arg_1.b.x, var_0, var_0)), vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b.x, u_input.b.x), vec2<u32>(0u, u_input.b.x)), ~u_input.b.x, _wgslsmith_clamp_u32(arg_1.b.x, 13596u, 72836u), _wgslsmith_mult_u32(min(0u, 28052u), ~9783u))), min(vec2<u32>(countOneBits(4294967295u) >> (abs(arg_1.b.x) % 32u), arg_0.b.x), countOneBits(u_input.c.yw) ^ arg_0.b), vec2<i32>(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_3.x, 1i), -arg_3.yy) >> (min(~44341u, ~arg_1.b.x) % 32u)), vec4<i32>(-23957i, firstLeadingBit(-4112i), ~_wgslsmith_clamp_i32(arg_3.x, arg_3.x, arg_3.x) >> (_wgslsmith_div_u32(max(var_0, arg_0.b.x), arg_1.b.x) % 32u), firstLeadingBit(firstTrailingBit(i32(-1i) * -4600i))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -961f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1000f, 591f)))), ~func_1(~15924i, false), select(vec4<bool>(select(true, false, false), true, true, false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false)))), Struct_1(329f, select(abs(vec2<u32>(150652u, 11229u)), min(func_1(-1692i, false), vec2<u32>(4294967295u, 691u)), all(vec4<bool>(true, true, false, false))), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false)), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-628f, 1152f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-716f))))), -_wgslsmith_sub_vec3_i32(-vec3<i32>(2147483647i, -2147483647i, 36237i), vec3<i32>(1i, max(57663i, 1i), func_3(60809u))));
}

