struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<f32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> i32 {
    var var_0 = arg_1;
    var_0 = arg_1;
    let var_1 = vec4<i32>(0i, -select(arg_1.e.x, abs(var_0.e.x), true), u_input.b, -778i);
    let var_2 = _wgslsmith_f_op_vec4_f32(arg_1.a - arg_1.a);
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(var_0.a * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1.d.x, var_2.x, -1000f, var_2.x)))))))), vec4<u32>(countOneBits(~u_input.a.x), ~0u, firstLeadingBit(abs(~0u)), var_0.c), 1u, var_0.d, vec2<i32>(57129i, arg_1.e.x));
    return ~_wgslsmith_mod_i32(abs(2147483647i), -max(arg_1.e.x, _wgslsmith_dot_vec2_i32(var_1.yw, vec2<i32>(29062i, -2147483647i))));
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - -1230f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1097f - -2034f)))));
    let var_1 = ~(vec2<i32>(_wgslsmith_mod_i32(func_3(true, Struct_1(vec4<f32>(-670f, -1000f, 182f, 158f), vec4<u32>(u_input.c, u_input.a.x, u_input.c, u_input.d.x), 23922u, vec3<f32>(-1136f, -797f, 797f), vec2<i32>(14119i, 2147483647i))), 25401i), firstTrailingBit(22877i)) & -(~vec2<i32>(u_input.e, arg_0) >> (vec2<u32>(u_input.c, u_input.c) % vec2<u32>(32u))));
    var var_2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1125f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(1000f, -337f, false)), _wgslsmith_f_op_f32(step(-1064f, 379f)), true)), _wgslsmith_f_op_f32(-1755f - -1000f))), _wgslsmith_f_op_f32(735f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(1174f, 716f))))), _wgslsmith_f_op_f32(3268f - 264f)), max(abs(_wgslsmith_add_vec4_u32(u_input.d, _wgslsmith_mult_vec4_u32(vec4<u32>(30046u, u_input.c, u_input.c, u_input.c), vec4<u32>(19797u, u_input.d.x, u_input.a.x, 1u)))), vec4<u32>(~(u_input.a.x | u_input.d.x), _wgslsmith_add_u32(u_input.a.x, 20745u) & u_input.c, _wgslsmith_mult_u32(1u, 1u), 124373u)), ~_wgslsmith_mod_u32(min(41014u, u_input.a.x), u_input.a.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-2639f)) - _wgslsmith_div_f32(1000f, 1081f)), _wgslsmith_f_op_f32(round(-531f)), _wgslsmith_f_op_f32(-824f * _wgslsmith_f_op_f32(f32(-1f) * -1729f))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 2423f, 1537f))))), vec2<i32>(func_3(true, Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-562f, 1390f, -618f, -766f)), u_input.d, ~u_input.d.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(617f, -240f, -551f) + vec3<f32>(533f, -1932f, 463f)), var_1)), firstLeadingBit(_wgslsmith_dot_vec2_i32(~var_1, reverseBits(vec2<i32>(var_1.x, -2147483647i))))));
    var_2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(abs(-709f)), 1f, _wgslsmith_f_op_f32(f32(-1f) * -127f)), reverseBits(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 38922u, u_input.c, 4294967295u), var_2.b), abs(var_2.b))) >> (_wgslsmith_add_vec4_u32(abs(vec4<u32>(29659u, u_input.a.x, u_input.c, u_input.d.x)), ~u_input.d) % vec4<u32>(32u)), select(1u, abs(1u), all(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(round(var_2.d.x)), _wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(f32(-1f) * -379f), true)), 1022f))), _wgslsmith_add_vec2_i32(var_2.e >> (select(u_input.d.wy, u_input.d.zz, true) % vec2<u32>(32u)), var_2.e << (vec2<u32>(~67923u, u_input.d.x) % vec2<u32>(32u))));
    var_2 = Struct_1(vec4<f32>(var_2.a.x, _wgslsmith_f_op_f32(select(906f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.d.x))), true)), -685f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.a.x, var_2.d.x))), ~(~var_2.b), max(abs(~_wgslsmith_mult_u32(0u, var_2.c)), _wgslsmith_add_u32(var_2.c, 41833u)), _wgslsmith_f_op_vec3_f32(-var_2.d), vec2<i32>(_wgslsmith_mod_i32(~countOneBits(var_2.e.x), -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e, -11295i, 23767i), vec3<i32>(60302i, -1i, -9675i))), arg_0));
    return Struct_1(vec4<f32>(var_2.a.x, -1100f, _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_2.d.x - var_2.a.x)))), -647f), _wgslsmith_div_vec4_u32(vec4<u32>(1u, countOneBits(0u), 1u, 1u), u_input.d), ~(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.b.x, u_input.a.x), var_2.b.xw))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(-307f, _wgslsmith_f_op_f32(1441f * -705f))), 977f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.d.x + var_2.a.x) * var_2.a.x)) - var_2.d), ~vec2<i32>(_wgslsmith_add_i32(_wgslsmith_mult_i32(arg_0, arg_0), var_2.e.x), _wgslsmith_mod_i32(-2147483647i, ~var_1.x)));
}

fn func_1(arg_0: vec3<i32>) -> Struct_1 {
    var var_0 = func_2(arg_0.x);
    var var_1 = func_2(-u_input.e);
    let var_2 = func_2(var_1.e.x);
    var var_3 = var_2;
    var_1 = var_2;
    return func_2(1i);
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: Struct_1) -> vec3<u32> {
    var var_0 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_2.a * vec4<f32>(320f, -241f, 133f, arg_2.a.x)))), arg_2.a), vec4<u32>(2698u, 39694u, 56995u, _wgslsmith_dot_vec3_u32(u_input.d.ywz, _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 4294967295u, arg_2.c), u_input.d.zwz, u_input.d.zxz))), _wgslsmith_sub_u32(47382u, select(1u, arg_2.b.x, false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-571f, _wgslsmith_f_op_f32(round(arg_1)), _wgslsmith_f_op_f32(step(arg_2.a.x, arg_1)))), arg_2.e);
    var var_1 = any(!select(vec2<bool>(57023u >= arg_2.b.x, any(vec3<bool>(false, true, false))), vec2<bool>(true, true), vec2<bool>(true, true)));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(var_0.a * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_2.a * vec4<f32>(2426f, -626f, -821f, arg_1))))), abs(~(~vec4<u32>(1u, 4294967295u, 16753u, u_input.d.x) & ~var_0.b)), ~_wgslsmith_dot_vec2_u32(~(~u_input.a), _wgslsmith_sub_vec2_u32(arg_2.b.yw, ~vec2<u32>(arg_2.c, 0u))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_2.d, vec3<f32>(_wgslsmith_f_op_f32(-arg_1), arg_2.d.x, 1f), vec3<bool>(true, false, true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, var_0.a.x, arg_2.a.x) - var_0.d)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(643f, -353f, 1187f), vec3<f32>(var_0.a.x, arg_2.d.x, var_0.a.x))))), vec2<i32>(~(~0i), -(~_wgslsmith_add_i32(u_input.b, var_0.e.x))));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1798f, var_0.a.x, arg_1, arg_2.d.x)), _wgslsmith_div_vec4_f32(vec4<f32>(860f, 1555f, 1323f, arg_2.a.x), var_0.a)) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(arg_2.d.x, 1000f, arg_1, arg_1), vec4<f32>(-1087f, arg_2.a.x, 621f, arg_2.a.x)), _wgslsmith_f_op_vec4_f32(max(var_0.a, arg_2.a)), any(vec4<bool>(false, true, false, false)))))), _wgslsmith_mult_vec4_u32(~(~vec4<u32>(24364u, 16094u, var_0.b.x, arg_2.c)), u_input.d >> (vec4<u32>(firstLeadingBit(arg_2.b.x), arg_2.b.x, ~4294967295u, ~4294967295u) % vec4<u32>(32u))), countOneBits(~1u), vec3<f32>(_wgslsmith_div_f32(arg_2.d.x, var_0.a.x), _wgslsmith_f_op_f32(min(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1629f)) + func_2(arg_2.e.x).a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-831f + -1222f))), vec2<i32>(-1i, ~var_0.e.x | u_input.e));
    let var_2 = func_3(false, Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, var_0.d.x, _wgslsmith_f_op_f32(arg_2.a.x - -656f), _wgslsmith_f_op_f32(min(-286f, arg_1))) - _wgslsmith_f_op_vec4_f32(sign(arg_2.a))), _wgslsmith_sub_vec4_u32(max(vec4<u32>(arg_2.c, 4294967295u, var_0.c, 60258u) << (vec4<u32>(0u, 44963u, 43931u, 4294967295u) % vec4<u32>(32u)), vec4<u32>(var_0.c, var_0.b.x, arg_2.b.x, arg_2.c)), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.c, u_input.d.x, arg_2.c, 49823u) & vec4<u32>(u_input.d.x, var_0.c, arg_2.b.x, 1u), ~u_input.d)), u_input.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1026f, 1334f, -1044f))))), -(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_2.e.x, -15916i), vec2<i32>(-25081i, arg_2.e.x), arg_2.e) | min(arg_2.e, arg_2.e))));
    return ~var_0.b.xzw;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(~(vec3<u32>(u_input.c, 14876u, u_input.c) | u_input.d.wyz) & vec3<u32>(u_input.a.x, ~0u, u_input.a.x), func_4(~(-u_input.b), _wgslsmith_f_op_f32(699f + _wgslsmith_f_op_f32(round(-255f))), func_1(vec3<i32>(u_input.e, u_input.b, 50520i) << (vec3<u32>(u_input.c, u_input.a.x, u_input.d.x) % vec3<u32>(32u))))), u_input.d.yxz);
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1109f, 2242f, 786f, 223f))))) - vec4<f32>(1f, 1f, 1f, 1f)), vec4<u32>(u_input.c >> (~var_0.x % 32u), _wgslsmith_dot_vec3_u32(countOneBits(~u_input.d.xzx), func_1(vec3<i32>(u_input.e, 0i, u_input.b)).b.www | ~vec3<u32>(0u, var_0.x, 48462u)), reverseBits(1u), _wgslsmith_add_u32(_wgslsmith_clamp_u32(1881u, var_0.x, var_0.x), ~(~74883u))), ~(~(~84340u)) & u_input.d.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1403f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-618f - -428f)), 1430f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(555f, 2156f, -740f), vec3<f32>(-1742f, -315f, -1462f)))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -551f), _wgslsmith_f_op_f32(ceil(660f)), -227f))), (~(-vec2<i32>(-4951i, -34039i)) << (var_0.xz % vec2<u32>(32u))) | vec2<i32>(_wgslsmith_add_i32(u_input.e, -32037i), -24731i));
    var_0 = countOneBits((~vec3<u32>(var_0.x, u_input.c, 4294967295u) | u_input.d.yzy) >> (firstTrailingBit(u_input.d.www) % vec3<u32>(32u)));
    var_0 = vec3<u32>(firstLeadingBit(_wgslsmith_add_u32(u_input.d.x | var_1.b.x, var_0.x) >> (_wgslsmith_mod_u32(~0u, 1u) % 32u)), firstLeadingBit(var_0.x), 39543u);
    let var_2 = select(select(vec4<bool>(false && (-245f != var_1.d.x), _wgslsmith_f_op_f32(floor(var_1.a.x)) == var_1.a.x, true, true), !vec4<bool>(false, true, true, all(vec4<bool>(true, true, true, true))), true), vec4<bool>(true, true, true, true), select(vec4<bool>(2147483647i > _wgslsmith_dot_vec2_i32(vec2<i32>(-14115i, u_input.b), var_1.e), true, all(vec2<bool>(true, false)), true), vec4<bool>(true, true, true, true), true));
    let var_3 = _wgslsmith_f_op_f32(-func_2(46425i).a.x);
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.d), _wgslsmith_mod_i32(func_3(all(var_2), var_1), ~u_input.e), var_1.b.xww, 7606u);
}

