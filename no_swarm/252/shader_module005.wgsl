struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: f32,
    d: vec3<u32>,
    e: i32,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: u32,
    d: bool,
}

struct Struct_4 {
    a: vec2<bool>,
    b: bool,
    c: vec4<bool>,
}

struct Struct_5 {
    a: vec3<bool>,
    b: u32,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2) -> vec4<bool> {
    var var_0 = Struct_5(!vec3<bool>(all(select(vec4<bool>(arg_2.b.x, true, arg_1, arg_2.b.x), vec4<bool>(true, arg_1, false, true), arg_1)), 743f < arg_0.c, false), _wgslsmith_sub_u32(4294967295u, 4294967295u), arg_2.b.x, select(52008i, firstTrailingBit(~abs(-25281i)), arg_2.b.x));
    var_0 = Struct_5(select(vec3<bool>(arg_2.c.b.x >= var_0.d, true, var_0.a.x), !var_0.a, !(!var_0.a)), _wgslsmith_add_u32(~reverseBits(~var_0.b), _wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(10563u, 1u), vec2<u32>(var_0.b, 28541u)), ~4294967295u)), all(!vec3<bool>(all(vec4<bool>(true, true, true, true)), all(var_0.a.yz), any(vec3<bool>(false, arg_2.b.x, false)))), u_input.b);
    var_0 = Struct_5(var_0.a, ~arg_2.c.d.x, true, select(arg_0.a, var_0.d, _wgslsmith_dot_vec3_i32(-vec3<i32>(arg_0.b.x, 1i, u_input.b), ~vec3<i32>(-1i, 3852i, -5112i)) > ~42516i));
    var_0 = Struct_5(var_0.a, firstTrailingBit(_wgslsmith_div_u32(~_wgslsmith_div_u32(16529u, 17260u), ~var_0.b)), arg_1, firstTrailingBit(6005i >> (select(24223u, 105440u & u_input.a, arg_2.b.x) % 32u)));
    let var_1 = _wgslsmith_clamp_vec3_i32(~select(vec3<i32>(-54852i | arg_0.e, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.c.b.x, 35823i, -1i, arg_2.c.a), vec4<i32>(2147483647i, arg_2.c.a, -1i, u_input.b)), arg_0.e), min(abs(vec3<i32>(arg_2.c.a, arg_0.b.x, 2147483647i)), vec3<i32>(var_0.d, u_input.b, -20479i)), arg_2.b.x), -(~vec3<i32>(abs(arg_2.c.a), -19336i, ~u_input.b)), abs(~(-vec3<i32>(4201i, -13918i, 19201i))));
    return !vec4<bool>(24163u <= var_0.b, false, true, !any(var_0.a));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2) -> i32 {
    var var_0 = Struct_4(vec2<bool>(true, !(arg_0 == -2818f)), (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c - 1038f)) == 1371f) && arg_2.b.x, select(vec4<bool>(arg_2.b.x, false, arg_2.b.x != true, true), vec4<bool>(!arg_2.b.x && true, arg_2.b.x, false, all(vec3<bool>(true, arg_2.b.x, arg_2.b.x)) && true), vec4<bool>(!any(arg_2.b), true, arg_2.b.x, arg_2.b.x)));
    let var_1 = -vec3<i32>(11746i, _wgslsmith_div_i32(firstLeadingBit(44805i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 38524i, u_input.b, u_input.b), vec4<i32>(23912i, arg_2.c.b.x, -1i, -1i))), -(1i << (arg_2.c.d.x % 32u))) << (arg_1.d % vec3<u32>(32u));
    let var_2 = func_3(arg_1, arg_2.b.x, arg_2);
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(select(-2160f, arg_0, var_2.x)), 359f, _wgslsmith_f_op_f32(floor(arg_1.c)), -281f))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-317f, -594f, 1000f, 375f), vec4<f32>(arg_1.c, -557f, arg_1.c, -304f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a, -2059f, arg_2.a, -1575f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c, -1056f, 341f, -1000f)) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-2501f, -1288f, arg_1.c, 669f))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_2.a, arg_1.c, arg_1.c, -407f), vec4<f32>(arg_2.a, -221f, arg_2.c.c, 176f))))))), func_3(Struct_1(u_input.b, vec2<i32>(arg_2.c.a, -7069i), 1000f, _wgslsmith_mod_vec3_u32(arg_1.d, arg_2.c.d), ~arg_1.a), (arg_0 > -1375f) && false, arg_2))));
    var var_4 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-796f * arg_1.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-271f, arg_0))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.c), _wgslsmith_f_op_f32(f32(-1f) * -995f), true))), 505f)));
    return -2147483647i;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<bool>, arg_2: vec3<u32>) -> vec2<i32> {
    return vec2<i32>((func_2(-1751f, Struct_1(u_input.b, vec2<i32>(u_input.b, arg_0.x), 156f, arg_2, 2147483647i), Struct_2(115f, arg_1.xy, Struct_1(arg_0.x, vec2<i32>(-2147483647i, u_input.b), -1420f, vec3<u32>(1u, 39482u, u_input.a), 2147483647i))) | u_input.b) >> (_wgslsmith_dot_vec4_u32(abs(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, arg_2.x, arg_2.x, u_input.a), vec4<u32>(arg_2.x, u_input.a, 811u, u_input.a))), abs(vec4<u32>(14376u, arg_2.x, 27220u, 1u) & vec4<u32>(u_input.a, 17635u, arg_2.x, 5548u))) % 32u), func_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-338f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(187f - -626f), _wgslsmith_f_op_f32(select(1524f, 1000f, arg_1.x))))), Struct_1(-firstLeadingBit(u_input.b), firstTrailingBit(arg_0.xx), 544f, vec3<u32>(abs(1u), u_input.a, arg_2.x << (29455u % 32u)), arg_0.x | ~4222i), Struct_2(-941f, select(!arg_1.yy, vec2<bool>(arg_1.x, false), all(vec4<bool>(true, arg_1.x, arg_1.x, false))), Struct_1(2147483647i & arg_0.x, arg_0.zz, _wgslsmith_div_f32(-336f, 542f), abs(vec3<u32>(22708u, 4294967295u, 47261u)), ~0i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(min(_wgslsmith_div_vec2_i32(func_1(vec3<i32>(u_input.b, u_input.b, 2147483647i), vec3<bool>(false, false, true), vec3<u32>(u_input.a, 2827u, 4294967295u)), ~vec2<i32>(u_input.b, 1i)) & vec2<i32>(0i, func_1(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<bool>(false, false, true), vec3<u32>(u_input.a, u_input.a, 4294967295u)).x), abs(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, 1i), vec2<i32>(u_input.b, 20244i)))));
    let var_1 = Struct_1(var_0.x, -(~(select(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, 26507i), vec2<bool>(true, false)) >> (select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 10225u), false) % vec2<u32>(32u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-613f, _wgslsmith_f_op_f32(select(413f, -277f, true))), -1000f, false)) * -370f), min(~max(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(0u, u_input.a, u_input.a)) << (vec3<u32>(40200u, 1u, ~61061u) % vec3<u32>(32u)), vec3<u32>(reverseBits(u_input.a) >> (_wgslsmith_mod_u32(59962u, 6832u) % 32u), u_input.a, 0u)), u_input.b);
    var var_2 = !(!vec4<bool>(func_3(Struct_1(var_1.a, vec2<i32>(2147483647i, 11518i), var_1.c, var_1.d, u_input.b), var_1.c < var_1.c, Struct_2(var_1.c, vec2<bool>(true, true), var_1)).x, any(vec4<bool>(true, true, true, true)), any(func_3(Struct_1(-1i, vec2<i32>(var_0.x, var_1.e), -1351f, vec3<u32>(0u, 17068u, var_1.d.x), var_1.b.x), true, Struct_2(-414f, vec2<bool>(false, false), Struct_1(u_input.b, var_1.b, var_1.c, var_1.d, var_0.x))).wy), true));
    var var_3 = Struct_5(var_2.zzw, 1u, (var_2.x | var_2.x) | true, -56350i);
    var var_4 = func_3(var_1, false && ((var_2.x | (true | var_3.a.x)) & (_wgslsmith_mult_i32(var_3.d, -16692i) >= -1i)), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.c, var_1.c) + 1000f)), vec2<bool>(var_3.a.x, !var_2.x), var_1));
    var var_5 = vec2<u32>(u_input.a, _wgslsmith_div_u32(select(reverseBits(~var_1.d.x), 4294967295u, 9523u > min(var_3.b, 43698u)), min(1u, ~(4294967295u | var_1.d.x))));
    let var_6 = var_1;
    let var_7 = Struct_2(147f, !select(func_3(var_6, var_3.a.x && false, Struct_2(-103f, vec2<bool>(var_2.x, var_3.a.x), Struct_1(11430i, vec2<i32>(1i, 50794i), var_1.c, vec3<u32>(52394u, var_3.b, var_6.d.x), var_6.a))).xx, vec2<bool>(false, var_2.x), !select(var_4.xw, var_2.zw, vec2<bool>(var_4.x, var_3.a.x))), Struct_1(u_input.b, var_6.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -465f), _wgslsmith_f_op_f32(ceil(536f))))), var_6.d, _wgslsmith_dot_vec2_i32(countOneBits(-vec2<i32>(var_3.d, var_6.b.x)), select(~vec2<i32>(36540i, -2147483647i), -vec2<i32>(0i, 2147483647i), vec2<bool>(true, true)))));
    var var_8 = all(vec2<bool>(var_7.b.x, (true && (true && var_7.b.x)) & func_3(var_1, true, Struct_2(var_7.c.c, vec2<bool>(var_2.x, var_4.x), Struct_1(-4130i, vec2<i32>(var_1.e, var_3.d), var_7.c.c, var_6.d, var_6.a))).x));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_sub_i32(select(_wgslsmith_mod_i32(1i, -27237i), 7331i, true), (var_3.d | 0i) >> (_wgslsmith_div_u32(var_5.x, var_1.d.x) % 32u)));
}

