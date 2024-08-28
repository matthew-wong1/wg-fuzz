struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: f32,
}

struct Struct_4 {
    a: i32,
    b: vec4<i32>,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_3,
    c: Struct_3,
    d: vec4<bool>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_4) -> i32 {
    return abs(30375i);
}

fn func_4(arg_0: i32, arg_1: vec4<bool>, arg_2: Struct_5) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_2.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(1064f, arg_2.b.a.a.c.x, _wgslsmith_f_op_f32(-arg_2.b.a.a.c.x)) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a.x, arg_2.a.x, arg_2.a.x) + vec3<f32>(arg_2.a.x, arg_2.b.c, arg_2.a.x))))), arg_1.wyx)));
    var var_1 = arg_2.b.a.a;
    var var_2 = -38099i;
    let var_3 = _wgslsmith_add_vec2_i32(u_input.a.zz, vec2<i32>(abs(1i), -_wgslsmith_sub_i32(arg_0, arg_0) | ~(-5693i)));
    var var_4 = 22956i ^ ~select(u_input.a.x << (~3133u % 32u), 26059i, arg_1.x);
    return select(select(select(!vec2<bool>(false, arg_1.x), select(!vec2<bool>(arg_2.c.a.c.x, arg_2.b.a.c.x), vec2<bool>(arg_2.d.x, false), !arg_2.b.a.c), !arg_1.x || true), select(select(arg_1.yx, arg_2.c.a.c, vec2<bool>(true, true)), select(!arg_2.c.a.c, select(arg_2.c.a.c, vec2<bool>(false, false), false), !arg_2.c.a.c.x), arg_1.x), arg_1.x), arg_1.ww, all(vec4<bool>(any(arg_2.c.a.c) && (arg_1.x | true), all(!vec3<bool>(false, arg_2.c.a.c.x, false)), arg_2.d.x, !all(vec3<bool>(arg_1.x, true, true)))));
}

fn func_2() -> Struct_4 {
    let var_0 = ~min(0u, ~abs(90438u));
    let var_1 = select(func_4(abs(func_3(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x), Struct_1(var_0, var_0, vec3<f32>(-1000f, 1000f, 544f)), Struct_4(0i, u_input.a, Struct_2(Struct_1(43937u, var_0, vec3<f32>(1730f, 761f, -546f)), var_0, vec2<bool>(false, true)), Struct_2(Struct_1(0u, var_0, vec3<f32>(-1421f, -1156f, 1508f)), 4294967295u, vec2<bool>(false, false))))), select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), false)), Struct_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 520f, -1169f)), Struct_3(Struct_2(Struct_1(var_0, 14975u, vec3<f32>(-367f, -205f, -745f)), 1u, vec2<bool>(false, false)), vec2<u32>(var_0, 0u) & vec2<u32>(var_0, 0u), 157f), Struct_3(Struct_2(Struct_1(0u, var_0, vec3<f32>(1246f, 153f, 1623f)), 20363u, vec2<bool>(false, false)), select(vec2<u32>(var_0, 8212u), vec2<u32>(var_0, var_0), vec2<bool>(true, true)), _wgslsmith_f_op_f32(-494f + -246f)), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), true), select(firstTrailingBit(vec4<u32>(var_0, 29617u, 58428u, var_0)), firstLeadingBit(vec4<u32>(var_0, var_0, 53522u, 55771u)), true))), func_4(abs(~(~0i)), !select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), true), vec4<bool>(true, true, true, true), var_0 > var_0), Struct_5(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -443f), _wgslsmith_f_op_f32(f32(-1f) * -1862f), -1606f), Struct_3(Struct_2(Struct_1(65599u, var_0, vec3<f32>(370f, 1000f, 1316f)), var_0, vec2<bool>(true, false)), reverseBits(vec2<u32>(var_0, 1697u)), _wgslsmith_f_op_f32(f32(-1f) * -682f)), Struct_3(Struct_2(Struct_1(86869u, var_0, vec3<f32>(974f, -2312f, 771f)), var_0, vec2<bool>(false, true)), vec2<u32>(35531u, var_0), -720f), vec4<bool>(true, var_0 == var_0, func_4(u_input.a.x, vec4<bool>(true, true, false, false), Struct_5(vec3<f32>(654f, -475f, 1523f), Struct_3(Struct_2(Struct_1(var_0, var_0, vec3<f32>(547f, 695f, -1899f)), var_0, vec2<bool>(false, false)), vec2<u32>(var_0, var_0), 937f), Struct_3(Struct_2(Struct_1(var_0, 96139u, vec3<f32>(1311f, -1233f, 985f)), var_0, vec2<bool>(true, false)), vec2<u32>(3395u, 4294967295u), -1921f), vec4<bool>(false, true, false, true), vec4<u32>(var_0, var_0, 4294967295u, var_0))).x, true), ~_wgslsmith_mod_vec4_u32(vec4<u32>(21433u, 16258u, var_0, 0u), vec4<u32>(1u, 47037u, var_0, var_0)))), !vec2<bool>(all(vec3<bool>(false, false, false)), all(vec4<bool>(true, true, true, true))));
    var var_2 = abs(countOneBits(var_0));
    var var_3 = Struct_2(Struct_1(_wgslsmith_clamp_u32(var_0, _wgslsmith_dot_vec2_u32(vec2<u32>(69726u, var_0), vec2<u32>(4294967295u, var_0) >> (vec2<u32>(4294967295u, 40244u) % vec2<u32>(32u))), var_0), _wgslsmith_mult_u32(~44363u ^ _wgslsmith_mult_u32(21395u, var_0), ~0u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-192f, 1680f, 628f))) - vec3<f32>(1f, 1f, 1f))), firstLeadingBit(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(14558u, var_0, var_0, 0u), vec4<u32>(18333u, 21547u, 70933u, 4294967295u)) ^ vec4<u32>(var_0, 4294967295u, var_0, var_0), _wgslsmith_add_vec4_u32(~vec4<u32>(var_0, 1u, var_0, 1493u), ~vec4<u32>(var_0, var_0, 1u, var_0)))), vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) - _wgslsmith_f_op_f32(-215f + -404f)) == _wgslsmith_f_op_f32(f32(-1f) * -1157f), var_1.x));
    var_3 = Struct_2(var_3.a, ~var_0, select(vec2<bool>(var_1.x, true), var_1, all(!vec4<bool>(var_1.x, true, var_1.x, var_3.c.x))));
    return Struct_4(abs(-1i), select(_wgslsmith_sub_vec4_i32(~u_input.a, u_input.a), ~vec4<i32>(-5865i, func_3(u_input.a.x, Struct_1(var_0, var_0, vec3<f32>(1196f, var_3.a.c.x, 1109f)), Struct_4(-2147483647i, u_input.a, Struct_2(Struct_1(1u, var_3.a.a, var_3.a.c), 27372u, vec2<bool>(true, var_1.x)), Struct_2(var_3.a, var_3.b, vec2<bool>(true, var_3.c.x)))), _wgslsmith_add_i32(-1i, -25456i), -56756i), all(vec4<bool>(select(var_1.x, false, true), true, !var_1.x, any(vec4<bool>(var_3.c.x, true, false, var_3.c.x))))), Struct_2(var_3.a, ~var_0, select(vec2<bool>(all(vec3<bool>(false, var_3.c.x, var_1.x)), all(vec2<bool>(true, var_1.x))), select(vec2<bool>(var_3.c.x, var_1.x), !var_3.c, !var_3.c.x), true)), Struct_2(Struct_1(_wgslsmith_add_u32(9277u, var_0), abs(~var_3.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a.c.x, 291f, var_3.a.c.x))), var_0, var_1));
}

fn func_5(arg_0: Struct_4) -> bool {
    let var_0 = arg_0.c.b;
    let var_1 = abs(countOneBits(func_2().d.b));
    var var_2 = 27467u;
    var var_3 = true;
    var_3 = func_4(_wgslsmith_sub_i32(-abs(1i), countOneBits(-arg_0.a)), select(!vec4<bool>(func_2().c.c.x, func_4(11525i, vec4<bool>(true, false, true, arg_0.d.c.x), Struct_5(vec3<f32>(1000f, -299f, -245f), Struct_3(Struct_2(arg_0.d.a, 1u, vec2<bool>(true, arg_0.c.c.x)), vec2<u32>(4294967295u, 90859u), arg_0.c.a.c.x), Struct_3(arg_0.c, vec2<u32>(arg_0.c.a.b, 1u), -986f), vec4<bool>(arg_0.c.c.x, true, false, arg_0.d.c.x), vec4<u32>(1u, 32757u, 4294967295u, 31699u))).x, true, true), !vec4<bool>(false, true, arg_0.c.c.x, arg_0.c.c.x), vec4<bool>(arg_0.d.c.x, all(!vec4<bool>(arg_0.c.c.x, arg_0.d.c.x, arg_0.c.c.x, false)), arg_0.c.c.x, !arg_0.c.c.x)), Struct_5(arg_0.c.a.c, Struct_3(Struct_2(func_2().d.a, ~var_1, func_4(-2147483647i, vec4<bool>(false, true, arg_0.c.c.x, false), Struct_5(vec3<f32>(-650f, arg_0.d.a.c.x, -226f), Struct_3(Struct_2(Struct_1(arg_0.d.a.a, 36952u, vec3<f32>(1000f, arg_0.d.a.c.x, 620f)), arg_0.d.b, vec2<bool>(arg_0.d.c.x, true)), vec2<u32>(var_0, 24970u), arg_0.d.a.c.x), Struct_3(arg_0.c, vec2<u32>(158694u, var_0), arg_0.d.a.c.x), vec4<bool>(arg_0.d.c.x, arg_0.c.c.x, arg_0.d.c.x, true), vec4<u32>(arg_0.c.a.b, arg_0.c.a.b, var_0, var_0)))), ~vec2<u32>(var_0, 4294967295u), arg_0.d.a.c.x), Struct_3(arg_0.d, vec2<u32>(37431u, ~57798u), -361f), !vec4<bool>(true, true, !arg_0.d.c.x, false), reverseBits(_wgslsmith_div_vec4_u32(~vec4<u32>(var_1, arg_0.c.a.a, arg_0.d.b, 0u), ~vec4<u32>(arg_0.d.a.a, 0u, 22909u, var_0))))).x;
    return true;
}

fn func_1(arg_0: f32) -> Struct_4 {
    let var_0 = -3020i;
    let var_1 = arg_0;
    var var_2 = select(true, true, true);
    let var_3 = !vec4<bool>(select(false, func_5(func_2()), true), any(vec2<bool>(true, true)), true, true);
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(arg_0 + var_1)), -757f)));
    return Struct_4(_wgslsmith_mult_i32(-17696i, var_0) ^ u_input.a.x, ~vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_mod_i32(14966i, -46861i), ~var_0), firstTrailingBit(reverseBits(u_input.a.x)), ~(~var_0), u_input.a.x), func_2().c, Struct_2(Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), abs(vec2<u32>(7627u, 20683u))), 15445u, _wgslsmith_f_op_vec3_f32(var_4.yzy * _wgslsmith_f_op_vec3_f32(var_4.xzz * vec3<f32>(-354f, arg_0, -428f)))), ~37584u, func_4(~u_input.a.x, var_3, Struct_5(var_4.zyx, Struct_3(Struct_2(Struct_1(10471u, 0u, var_4.wzw), 1u, var_3.wx), vec2<u32>(0u, 45952u), var_1), Struct_3(Struct_2(Struct_1(0u, 96644u, var_4.wzx), 1u, var_3.ww), vec2<u32>(4294967295u, 75482u), 356f), var_3, ~vec4<u32>(40377u, 0u, 9018u, 0u)))));
}

fn func_6(arg_0: Struct_4, arg_1: Struct_3, arg_2: i32, arg_3: bool) -> u32 {
    var var_0 = arg_1;
    var var_1 = -24123i;
    return reverseBits(9535u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0u;
    var_0 = countOneBits(_wgslsmith_clamp_u32(func_6(func_1(1342f), Struct_3(func_2().c, ~vec2<u32>(30560u, 26215u), _wgslsmith_f_op_f32(trunc(1049f))), _wgslsmith_clamp_i32(-52850i, 2147483647i, u_input.a.x), !all(vec4<bool>(false, false, true, false))), 1u, 1u));
    var var_1 = Struct_2(func_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -508f), _wgslsmith_f_op_f32(step(120f, -1641f)), true)), -1000f, ~u_input.a.x != u_input.a.x))).d.a, ~(40731u >> (firstTrailingBit(4294967295u) % 32u)), select(func_1(_wgslsmith_f_op_f32(f32(-1f) * -1231f)).d.c, vec2<bool>(false, any(vec3<bool>(true, true, true))), any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))));
    var_0 = _wgslsmith_mult_u32(firstTrailingBit(1u) | ~(~var_1.a.a ^ 0u), select(firstLeadingBit(53769u), ~_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(50985u, var_1.a.b), vec2<u32>(14404u, var_1.a.b)), vec2<u32>(1u, var_1.a.a)), var_1.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x | 2582i, 1u, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1322f, var_1.a.c.x, var_1.a.c.x) - vec4<f32>(var_1.a.c.x, var_1.a.c.x, var_1.a.c.x, var_1.a.c.x)) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_1.a.c.x, -1534f, 532f, 1043f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.a.c.x, -520f, -218f, var_1.a.c.x), vec4<f32>(var_1.a.c.x, var_1.a.c.x, -1123f, 359f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.c.x, 1130f, 172f, 593f) + vec4<f32>(-157f, var_1.a.c.x, var_1.a.c.x, var_1.a.c.x)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.a.c.yx) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-409f, var_1.a.c.x)), vec2<f32>(var_1.a.c.x, var_1.a.c.x), all(vec4<bool>(var_1.c.x, false, true, var_1.c.x))))))));
}

