struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: bool,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<u32>,
    d: vec4<f32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_2) -> f32 {
    let var_0 = Struct_2(arg_0.a, _wgslsmith_mult_i32(_wgslsmith_mult_i32(-1i, 2147483647i), arg_0.b), vec3<u32>(_wgslsmith_add_u32(~(~arg_0.c.x), min(u_input.a, u_input.a)), 48378u, ~(~firstTrailingBit(37237u))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.d.x, arg_0.d.x, arg_0.d.x, arg_0.d.x), arg_0.a.b))), _wgslsmith_div_vec4_f32(vec4<f32>(-3055f, arg_0.a.b.x, _wgslsmith_f_op_f32(arg_0.d.x * -422f), arg_0.a.b.x), _wgslsmith_f_op_vec4_f32(arg_0.a.b - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.a.x, 904f, arg_0.d.x, 968f) * vec4<f32>(-911f, arg_0.a.b.x, 568f, arg_0.a.a.x)))))));
    var var_1 = !var_0.a.c;
    let var_2 = ~0u;
    var_1 = true;
    var var_3 = max(arg_0.b, _wgslsmith_mult_i32(~_wgslsmith_sub_i32(0i, _wgslsmith_div_i32(arg_0.a.d.x, var_0.a.e.x)), ~arg_0.b));
    return 840f;
}

fn func_4(arg_0: vec4<f32>, arg_1: u32, arg_2: i32, arg_3: Struct_4) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(vec2<f32>(arg_0.x, arg_0.x), arg_0, true, vec3<i32>(-2147483647i, -1i, -2147483647i), vec4<i32>(arg_2, -1i, arg_2, -2147483647i)), arg_2, vec3<u32>(1u, 21272u, 42880u), vec4<f32>(-873f, arg_0.x, arg_0.x, arg_0.x))))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2579f - -1000f)));
    var var_1 = (countOneBits(vec4<i32>(~arg_2, ~arg_2, -arg_2, arg_2 & arg_2)) << (u_input.b % vec4<u32>(32u))) >> (~(~_wgslsmith_mod_vec4_u32(~u_input.b, reverseBits(vec4<u32>(u_input.b.x, arg_3.a.x, 7266u, arg_1)))) % vec4<u32>(32u));
    let var_2 = firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(44873u, countOneBits(48335u), 8428u, ~(u_input.b.x & 15948u)), ~select(vec4<u32>(0u, u_input.b.x, 40083u, 68204u) >> (vec4<u32>(4294967295u, u_input.b.x, arg_1, arg_3.a.x) % vec4<u32>(32u)), u_input.b, select(true, false, true))));
    var var_3 = Struct_2(Struct_1(arg_0.yy, _wgslsmith_f_op_vec4_f32(arg_0 * _wgslsmith_f_op_vec4_f32(-arg_0)), true | select(false, var_2 <= 0u, false), vec3<i32>(-1i, arg_2, select(~var_1.x, var_1.x, false)), abs(-(~vec4<i32>(var_1.x, -1i, var_1.x, 0i)))), _wgslsmith_mult_i32(~_wgslsmith_mod_i32(var_1.x, var_1.x), abs(-27841i)), firstLeadingBit(u_input.b.xyz), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-507f, -1000f)), _wgslsmith_f_op_f32(713f - _wgslsmith_f_op_f32(round(1000f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(arg_0.x)))))));
    var var_4 = Struct_4(u_input.b.yzy);
    return abs(~(~select(vec4<u32>(u_input.b.x, var_2, 1u, u_input.a), ~u_input.b, vec4<bool>(false, var_3.a.c, true, var_3.a.c))));
}

fn func_2(arg_0: vec2<u32>, arg_1: bool) -> Struct_4 {
    let var_0 = abs(func_4(vec4<f32>(_wgslsmith_div_f32(-1236f, 901f), -1558f, _wgslsmith_f_op_f32(391f - 1457f), _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(vec2<f32>(677f, 1128f), vec4<f32>(229f, 1038f, 506f, 1310f), arg_1, vec3<i32>(1i, 32551i, -17196i), vec4<i32>(-73005i, -1i, -2147483647i, 0i)), 1i, vec3<u32>(arg_0.x, 415u, 1u), vec4<f32>(-909f, -338f, -592f, -1776f))))), select(~18884u, arg_0.x, true), 0i, Struct_4(~u_input.b.zww)) << (~u_input.b % vec4<u32>(32u)));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1587f, -610f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(146f, -116f))) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1165f, 947f)))), arg_1))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-429f, -107f, -453f, -1442f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 312f, 403f, 1500f)))))), !arg_1, ~(~vec3<i32>(17415i, 3758i, -1i) | ((vec3<i32>(-2147483647i, -22381i, 2147483647i) >> (vec3<u32>(14994u, u_input.a, var_0.x) % vec3<u32>(32u))) << (vec3<u32>(u_input.a, 26515u, var_0.x) % vec3<u32>(32u)))), -select(max(~vec4<i32>(-13913i, 14189i, 1i, 0i), vec4<i32>(1i, 2147483647i, 3582i, -1i)), vec4<i32>(7957i, _wgslsmith_div_i32(-1i, 8914i), ~(-20267i), 1i), select(vec4<bool>(false, arg_1, false, true), select(vec4<bool>(arg_1, arg_1, true, false), vec4<bool>(true, true, arg_1, true), vec4<bool>(arg_1, false, true, false)), vec4<bool>(false, arg_1, true, arg_1))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_1.b.xwy, vec3<f32>(var_1.a.x, var_1.a.x, var_1.a.x)) * vec3<f32>(621f, 1471f, var_1.b.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.b.yzw)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1132f, 1153f, var_1.b.x)))) + vec3<f32>(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(floor(var_1.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -789f)))));
    return Struct_4(u_input.b.zzx);
}

fn func_1(arg_0: i32, arg_1: vec3<i32>, arg_2: vec3<f32>) -> vec2<bool> {
    let var_0 = func_2(~u_input.b.zy, all(!vec4<bool>(true, true, false, select(true, false, true))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_2.yz, arg_2.xy)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -683f), _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(arg_2.yy, vec4<f32>(958f, -656f, arg_2.x, arg_2.x), false, arg_1, vec4<i32>(82001i, arg_1.x, 159i, -3305i)), -2147483647i, u_input.b.ywz, vec4<f32>(arg_2.x, -1000f, arg_2.x, arg_2.x)))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(arg_2.x, arg_2.x, arg_2.x, -664f), vec4<f32>(588f, 721f, -2172f, 126f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.x, arg_2.x, -1717f, 3140f), vec4<f32>(arg_2.x, arg_2.x, 610f, arg_2.x), true)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, 348f, -892f, arg_2.x) - vec4<f32>(897f, -692f, arg_2.x, -1000f)))), any(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false)))), any(vec3<bool>(false, false, false)) & any(vec2<bool>(true, true)), -_wgslsmith_sub_vec3_i32(vec3<i32>(arg_1.x, 5745i, 26826i), arg_1), vec4<i32>(firstTrailingBit(arg_0), arg_1.x, -22342i, arg_1.x)), arg_0, _wgslsmith_sub_vec3_u32(u_input.b.zyy, vec3<u32>(4294967295u, 28806u, countOneBits(4294967295u))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.x, _wgslsmith_f_op_f32(f32(-1f) * -1356f)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1337f * -388f))), -1000f));
    let var_2 = ((vec2<i32>(86966i, abs(var_1.a.d.x)) ^ ~(~var_1.a.e.yz)) | (_wgslsmith_add_vec2_i32(arg_1.yz << (vec2<u32>(u_input.a, 4294967295u) % vec2<u32>(32u)), countOneBits(var_1.a.d.xz)) << (var_0.a.xx % vec2<u32>(32u)))) & ~firstLeadingBit(arg_1.xy);
    let var_3 = var_1.a.c;
    var var_4 = 2147483647i;
    return vec2<bool>(true, _wgslsmith_mod_i32(-55389i, -37422i) > (~reverseBits(var_1.a.d.x) << (15931u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    var var_1 = _wgslsmith_add_vec2_u32(~abs(~var_0.xx), ~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(56687u, u_input.b.x, u_input.b.x), vec3<u32>(22536u, 27008u, 1u)), ~var_0.x)) ^ ~vec2<u32>(_wgslsmith_mod_u32(~var_0.x, 44470u), (u_input.b.x ^ u_input.b.x) << (u_input.b.x % 32u));
    var_0 = u_input.b;
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(116f, _wgslsmith_f_op_f32(f32(-1f) * -618f), _wgslsmith_f_op_f32(sign(1291f))));
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(var_2.x + 709f), _wgslsmith_f_op_f32(round(var_2.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 2512f))), vec2<bool>(true, u_input.b.x == 0u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(500f, 180f, 1271f, var_2.x)))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1312f, 146f, var_2.x, 1131f)))))), all(func_1(i32(-1i) * -1i, ~vec3<i32>(18056i, 1i, -221i), var_2)), vec3<i32>(-1i) * -(~vec3<i32>(-240i, -25845i, 1i)), ~vec4<i32>(1i, 1i, 1i, 1i) >> (vec4<u32>(1u, abs(u_input.a), _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(22211u, 61054u, 6648u, 51951u)), 0u << (var_0.x % 32u)) % vec4<u32>(32u))), min(-54571i, -30416i), u_input.b.wxw, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-882f, 118f, 1285f, var_2.x))))))));
    var_1 = ~(~vec2<u32>(~(~var_0.x), select(95140u, 15561u, all(vec2<bool>(true, false)))));
    var_1 = ~firstTrailingBit(var_3.c.yy);
    let var_4 = var_3.a.c;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(min(u_input.b.x, var_1.x), 0u), reverseBits(102206u | (firstLeadingBit(u_input.a) >> (_wgslsmith_dot_vec2_u32(u_input.b.ww, vec2<u32>(var_3.c.x, u_input.a)) % 32u))), 557f, ~(u_input.b & ~vec4<u32>(4294967295u, 4294967295u, 54608u, var_0.x)));
}

