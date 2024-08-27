struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: f32,
    d: vec3<f32>,
    e: bool,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<f32>) -> vec4<bool> {
    let var_0 = all(select(!select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), false), vec4<bool>(true, true, true, true)), select(vec4<bool>(any(vec2<bool>(true, false)), true, true, any(vec2<bool>(false, true))), vec4<bool>(any(vec4<bool>(false, false, false, true)), true, true, true), select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false)), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true)), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), false))), vec4<bool>(true, true, true, true)));
    var var_1 = vec4<bool>(var_0, var_0, !var_0, u_input.a.x > _wgslsmith_clamp_i32(u_input.a.x, u_input.b.x, _wgslsmith_div_i32(0i, _wgslsmith_div_i32(-2147483647i, 9809i))));
    return select(vec4<bool>(true, _wgslsmith_f_op_f32(-2894f + arg_0.x) != arg_0.x, true, false), !select(select(select(vec4<bool>(var_1.x, var_0, true, false), vec4<bool>(false, true, var_1.x, var_0), vec4<bool>(var_0, false, false, false)), !vec4<bool>(false, true, false, var_0), select(true, false, var_0)), vec4<bool>(false, true, var_0, all(vec4<bool>(true, true, var_0, var_1.x))), !all(vec3<bool>(var_0, true, var_0))), select(vec4<bool>(var_1.x, select(var_0, arg_0.x == arg_1.x, select(var_1.x, var_1.x, false)), u_input.a.x > -15982i, select(true, true, var_0)), vec4<bool>(!var_1.x, var_0, any(vec3<bool>(var_1.x, var_0, var_1.x)), var_0), vec4<bool>((var_1.x && false) && var_1.x, any(select(var_1.yy, var_1.zy, true)), true, false)));
}

fn func_2() -> vec2<u32> {
    var var_0 = Struct_1(!select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true)), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, all(vec3<bool>(false, false, true))), false), all(vec3<bool>(true, any(vec4<bool>(false, true, false, false)), true)), _wgslsmith_f_op_f32(-267f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1733f, -1231f))), -1052f)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -377f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-861f))), -299f), true);
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1694f)))))));
    let var_2 = Struct_1(select(select(vec4<bool>(true, true, true, var_0.a.x), var_0.a, vec4<bool>(var_0.a.x, false || var_0.b, true, var_0.a.x)), func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.d * vec3<f32>(var_1, var_1, var_1)) - vec3<f32>(var_1, 346f, var_0.d.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1808f, -104f, var_0.d.x)) + vec3<f32>(794f, var_1, -1414f))), var_0.a.x), !func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1063f, 2161f, var_0.c) * var_0.d) - _wgslsmith_f_op_vec3_f32(var_0.d * vec3<f32>(-501f, 1327f, -700f))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c, var_1, var_1) + vec3<f32>(-1693f, var_1, -227f)), _wgslsmith_div_vec3_f32(var_0.d, var_0.d)))).x, _wgslsmith_f_op_f32(step(var_0.d.x, _wgslsmith_f_op_f32(449f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1277f)))))), _wgslsmith_f_op_vec3_f32(select(var_0.d, _wgslsmith_f_op_vec3_f32(max(var_0.d, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.x, -945f, -1402f)))), vec3<bool>(false, all(!vec2<bool>(false, var_0.e)), true))), var_0.e);
    let var_3 = countOneBits(~(~max(min(25493u, 46158u), 1u)));
    var_0 = Struct_1(var_2.a, var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)))), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1 - 510f), _wgslsmith_f_op_f32(var_0.c - var_1)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + -1030f) - -138f), var_0.c), select(false, !var_2.e, select(true, all(vec2<bool>(var_2.e, false)), -1i < u_input.b.x) | !select(true, var_2.e, true)));
    return vec2<u32>(_wgslsmith_sub_u32(6378u | var_3, var_3), 4294967295u);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_sub_vec2_u32(vec2<u32>(max(1u, 4294967295u), 1u) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)), ~(~func_2()) & select(vec2<u32>(1u, 1u), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(48836u, 1u), vec2<u32>(47870u, 1336u), vec2<u32>(73378u, 96265u)), !vec2<bool>(arg_0.e, arg_0.b)));
    let var_1 = vec3<bool>(arg_1.a.x, any(vec2<bool>(!arg_1.b, any(!arg_0.a.wx))), all(select(arg_0.a.zx, vec2<bool>(any(vec4<bool>(true, true, false, true)), true), vec2<bool>(all(vec3<bool>(false, arg_0.e, false)), arg_0.b))));
    let var_2 = !vec2<bool>(true & !any(vec4<bool>(false, var_1.x, arg_1.e, var_1.x)), false);
    let var_3 = Struct_1(!(!(!arg_0.a)), false, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-911f + -1771f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(-117f, _wgslsmith_f_op_f32(arg_1.d.x + 894f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_3.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.d.x, -1000f)))), select(func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.d) - _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.d.x, 252f, 1062f), arg_0.d)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-2345f, -298f, -646f)))).x, 106218u <= select(0u, _wgslsmith_mod_u32(var_0.x, 4294967295u), all(vec4<bool>(arg_1.e, false, true, true))), any(vec4<bool>(true, true, true, true))));
    let var_4 = func_3(vec3<f32>(1371f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-231f, -1528f)) - _wgslsmith_f_op_f32(floor(1725f)))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-257f - -780f), 290f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(402f, -728f, arg_0.e)), _wgslsmith_f_op_f32(trunc(arg_3.a.x))), true))), arg_1.d);
    return Struct_1(select(arg_1.a, select(arg_0.a, !vec4<bool>(arg_1.e, true, arg_0.a.x, arg_0.b), vec4<bool>(true, !var_3.a.x, var_2.x, true)), !any(!vec2<bool>(false, var_4.x))), true, arg_1.c, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_3.d, vec3<f32>(1723f, -213f, -299f), func_3(arg_1.d, arg_1.d).yxy))))), true);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<u32>) -> vec2<u32> {
    var var_0 = vec3<u32>(0u, arg_2.x, _wgslsmith_div_u32(arg_2.x, _wgslsmith_sub_u32(~(arg_2.x & 20413u), 4294967295u)));
    var_0 = firstLeadingBit(~vec3<u32>(~29631u, ~4294967295u, _wgslsmith_div_u32(var_0.x, var_0.x))) & max(~(~(vec3<u32>(36904u, 14277u, arg_2.x) ^ vec3<u32>(arg_2.x, arg_2.x, 1u))), firstLeadingBit(vec3<u32>(1u, 1u, 1u)) & _wgslsmith_div_vec3_u32(~vec3<u32>(arg_2.x, arg_2.x, var_0.x), ~vec3<u32>(12176u, 0u, 25084u)));
    let var_1 = !arg_0.a;
    var_0 = (abs(vec3<u32>(4294967295u, arg_2.x, reverseBits(arg_2.x))) << (~((vec3<u32>(1u, 24957u, var_0.x) ^ vec3<u32>(var_0.x, var_0.x, 1u)) >> (~vec3<u32>(var_0.x, arg_2.x, var_0.x) % vec3<u32>(32u))) % vec3<u32>(32u))) & vec3<u32>((var_0.x >> (_wgslsmith_sub_u32(var_0.x, arg_2.x) % 32u)) & min(countOneBits(var_0.x), 29762u), var_0.x, ~(~_wgslsmith_sub_u32(52743u, arg_2.x)));
    var_0 = select(~(~abs(vec3<u32>(var_0.x, var_0.x, 25312u)) >> (~(~vec3<u32>(var_0.x, 1u, var_0.x)) % vec3<u32>(32u))), ~(vec3<u32>(~4294967295u, min(var_0.x, 1u), var_0.x) >> (~(vec3<u32>(61844u, var_0.x, 1u) | vec3<u32>(var_0.x, var_0.x, var_0.x)) % vec3<u32>(32u))), !(arg_0.d.x <= -519f));
    return abs(vec2<u32>(~arg_2.x, 1u));
}

fn func_5(arg_0: vec2<u32>) -> Struct_1 {
    let var_0 = select(vec3<bool>(select(true, true && func_1(Struct_1(vec4<bool>(true, false, true, false), false, 1875f, vec3<f32>(556f, 326f, 826f), false), Struct_1(vec4<bool>(false, true, true, true), false, -1271f, vec3<f32>(-920f, -288f, -1000f), false), vec3<i32>(u_input.a.x, -6123i, u_input.a.x), Struct_2(vec2<f32>(1598f, 1444f))).b, any(vec2<bool>(true, true))), any(!func_1(Struct_1(vec4<bool>(false, false, true, true), true, -558f, vec3<f32>(-722f, 794f, 1338f), true), Struct_1(vec4<bool>(true, true, true, true), true, 887f, vec3<f32>(1318f, -235f, -527f), false), vec3<i32>(u_input.b.x, u_input.a.x, 11790i), Struct_2(vec2<f32>(863f, 196f))).a.yyy), !func_1(func_1(Struct_1(vec4<bool>(true, false, false, false), false, 161f, vec3<f32>(857f, 276f, -308f), false), Struct_1(vec4<bool>(false, false, true, false), true, 797f, vec3<f32>(-427f, 1237f, 1000f), true), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), Struct_2(vec2<f32>(-512f, -451f))), Struct_1(vec4<bool>(false, true, false, false), false, -158f, vec3<f32>(1000f, -1396f, 992f), true), vec3<i32>(u_input.a.x, 2147483647i, -382i) << (vec3<u32>(arg_0.x, 1u, 28508u) % vec3<u32>(32u)), Struct_2(vec2<f32>(-658f, 1026f))).b), vec3<bool>(_wgslsmith_div_i32(u_input.a.x, u_input.a.x) > ~(-1i), !(!any(vec4<bool>(false, true, false, true))), any(vec4<bool>(true, true, true, true))), select(vec3<bool>(true, true, true), vec3<bool>(select(true, true, false), !any(vec4<bool>(false, true, false, false)), any(vec3<bool>(false, false, true))), any(vec2<bool>(true, true)) == true));
    var var_1 = ~arg_0.x | ~func_4(func_1(func_1(Struct_1(vec4<bool>(true, var_0.x, var_0.x, var_0.x), var_0.x, 929f, vec3<f32>(-147f, 846f, -1036f), false), Struct_1(vec4<bool>(false, var_0.x, var_0.x, false), true, 651f, vec3<f32>(-833f, 1897f, -1223f), false), vec3<i32>(u_input.b.x, u_input.a.x, u_input.b.x), Struct_2(vec2<f32>(1143f, -1311f))), Struct_1(vec4<bool>(false, var_0.x, true, true), true, 2118f, vec3<f32>(2755f, -873f, -851f), false), select(vec3<i32>(u_input.a.x, u_input.b.x, -33333i), vec3<i32>(u_input.b.x, -2147483647i, 2147483647i), var_0), Struct_2(vec2<f32>(845f, -1060f))), func_1(Struct_1(vec4<bool>(true, false, true, false), var_0.x, -1803f, vec3<f32>(-867f, -807f, 1756f), false), Struct_1(vec4<bool>(var_0.x, false, var_0.x, var_0.x), var_0.x, -200f, vec3<f32>(808f, -1066f, -808f), true), max(vec3<i32>(2147483647i, 1130i, u_input.b.x), vec3<i32>(-115848i, 36587i, u_input.b.x)), Struct_2(vec2<f32>(-2115f, -463f))), vec2<u32>(6304u, arg_0.x) | arg_0).x;
    var var_2 = _wgslsmith_sub_i32(select(u_input.b.x, ~(u_input.b.x >> (31354u % 32u)), true), u_input.b.x);
    var_2 = -(i32(-1i) * -2147483647i);
    var_2 = u_input.b.x;
    return Struct_1(!(!select(!vec4<bool>(false, true, var_0.x, false), !vec4<bool>(var_0.x, var_0.x, true, var_0.x), func_1(Struct_1(vec4<bool>(true, var_0.x, false, var_0.x), false, -682f, vec3<f32>(423f, -1334f, -1000f), var_0.x), Struct_1(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), var_0.x, 869f, vec3<f32>(1185f, -1000f, 1261f), var_0.x), vec3<i32>(-2147483647i, 10336i, -28384i), Struct_2(vec2<f32>(-607f, 1026f))).a)), (countOneBits(_wgslsmith_add_u32(arg_0.x, 1u)) < (arg_0.x << (~arg_0.x % 32u))) | (var_0.x && false), _wgslsmith_f_op_f32(f32(-1f) * -122f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(-763f, 1606f, 350f), vec3<f32>(993f, -652f, 347f)), vec3<f32>(-606f, 296f, 770f)))) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1163f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1058f, 1310f, false)) * _wgslsmith_f_op_f32(sign(2064f))), _wgslsmith_f_op_f32(f32(-1f) * -1637f))), var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec2<f32>(739f, _wgslsmith_f_op_f32(f32(-1f) * -2389f)));
    var var_1 = u_input.a.x;
    var_1 = u_input.b.x;
    var_1 = ~_wgslsmith_dot_vec2_i32(u_input.a, abs(-(~u_input.a)));
    let var_2 = func_5(vec2<u32>(~12989u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(25055u, 0u, 0u), vec3<u32>(4294967295u, 88701u, 34624u)) % 32u), ~(~0u)) | (func_4(func_1(Struct_1(vec4<bool>(true, false, true, true), false, var_0.a.x, vec3<f32>(1077f, var_0.a.x, 742f), true), Struct_1(vec4<bool>(true, true, true, true), false, -1616f, vec3<f32>(var_0.a.x, var_0.a.x, -268f), false), vec3<i32>(u_input.b.x, u_input.b.x, 30016i), var_0), func_1(Struct_1(vec4<bool>(false, false, false, false), true, -562f, vec3<f32>(-633f, 743f, 2072f), true), Struct_1(vec4<bool>(false, true, false, false), false, var_0.a.x, vec3<f32>(387f, var_0.a.x, var_0.a.x), true), vec3<i32>(-2147483647i, 21676i, u_input.b.x), Struct_2(vec2<f32>(274f, 302f))), vec2<u32>(65288u, 17229u)) << ((abs(vec2<u32>(1u, 11610u)) ^ firstTrailingBit(vec2<u32>(0u, 267u))) % vec2<u32>(32u))));
    var_1 = 1691i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(func_5(countOneBits(vec2<u32>(18692u, 44505u))).d.x, func_5(countOneBits(vec2<u32>(0u, 48798u))).c, _wgslsmith_f_op_f32(round(var_2.d.x)), var_0.a.x))), var_2.d);
}

