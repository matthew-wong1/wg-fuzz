struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: u32,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec4<bool>, arg_1: bool, arg_2: vec4<bool>, arg_3: vec3<i32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_div_f32(-1143f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(522f - 252f) * _wgslsmith_f_op_f32(select(-884f, 840f, arg_0.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-998f, _wgslsmith_f_op_f32(trunc(1444f)), arg_1 && true)))), 125f)));
    let var_1 = _wgslsmith_f_op_f32(201f + 871f);
    let var_2 = arg_1;
    var var_3 = Struct_4(vec2<u32>(countOneBits(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 73672u), ~vec2<u32>(0u, 4294967295u))), 1u), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-578f)), -683f)), var_1, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1))))), 209f), ~(~1u), Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, 2602f, -1451f, -1329f) * vec4<f32>(1000f, 1000f, 1231f, -398f))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2100f, var_0.x, var_1, 716f))))), Struct_1(-1573f, 1u, countOneBits(vec4<u32>(4294967295u, 23485u, 4294967295u, 1u)))));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(var_1, 407f))));
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1, arg_3: Struct_2) -> Struct_1 {
    let var_0 = 298f;
    let var_1 = _wgslsmith_f_op_f32(arg_3.b.a - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(vec4<bool>(any(vec3<bool>(arg_3.a.x, arg_3.a.x, false)), true, u_input.c != u_input.c, false), true, select(vec4<bool>(arg_3.a.x, false, arg_1, true), select(vec4<bool>(false, arg_1, false, false), vec4<bool>(false, arg_0.a.x, arg_0.a.x, arg_0.a.x), vec4<bool>(false, true, true, true)), select(vec4<bool>(false, arg_3.a.x, arg_3.a.x, arg_3.a.x), vec4<bool>(arg_0.a.x, true, true, false), arg_0.a.x)), ~_wgslsmith_mod_vec3_i32(vec3<i32>(13341i, 0i, u_input.c), vec3<i32>(u_input.c, -2147483647i, -2147483647i)))), _wgslsmith_f_op_f32(step(891f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.d.a, arg_0.d.a) - _wgslsmith_f_op_f32(503f * 1215f)))))));
    let var_2 = arg_3.a.x;
    let var_3 = arg_0;
    var var_4 = true | arg_1;
    return Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_3.b.a)) - 1884f))), ((10443u << (var_3.d.c.x % 32u)) | arg_0.b.c.x) << (select(~(~86612u), abs(_wgslsmith_clamp_u32(arg_0.d.b, 72817u, arg_3.d.c.x)), var_2) % 32u), arg_0.b.c);
}

fn func_4(arg_0: Struct_1) -> bool {
    var var_0 = select(vec2<bool>(true & !select(false, true, false), 442f == _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -969f)))), select(!select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), !select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), true), true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), true))), true);
    let var_1 = ~_wgslsmith_mult_u32(arg_0.c.x, abs(firstTrailingBit(73445u ^ arg_0.b)));
    let var_2 = vec2<bool>(!all(select(!vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(true, var_0.x, var_0.x), !vec3<bool>(var_0.x, true, var_0.x))), any(select(!select(vec3<bool>(true, true, false), vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x)), vec3<bool>(true, var_1 != 46026u, all(vec4<bool>(true, var_0.x, var_0.x, false))), select(select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, var_0.x, true), var_0.x), vec3<bool>(true, var_0.x, var_0.x), true))));
    var var_3 = arg_0.a;
    var var_4 = vec2<i32>(2147483647i, 19889i);
    return !(-firstTrailingBit(2147483647i) < -max(u_input.c ^ 0i, u_input.a & 22255i));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3) -> vec3<u32> {
    let var_0 = 1i;
    let var_1 = arg_1;
    var var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.a, arg_0.d.a, -268f)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.a, arg_0.b.a, arg_0.c.x) * vec3<f32>(arg_1.a.x, arg_0.d.a, arg_1.b.a)))))))));
    return ~(arg_1.b.c.yyx ^ _wgslsmith_mult_vec3_u32(max(_wgslsmith_div_vec3_u32(vec3<u32>(var_1.b.b, arg_1.b.b, arg_0.d.b), arg_0.d.c.xwx), ~arg_1.b.c.ywx), _wgslsmith_mult_vec3_u32(vec3<u32>(var_1.b.c.x, arg_0.d.b, 9862u), ~arg_0.b.c.wzz)));
}

fn func_1(arg_0: i32) -> bool {
    var var_0 = func_5(Struct_2(vec2<bool>(func_4(func_2(Struct_2(vec2<bool>(true, true), Struct_1(378f, 24475u, vec4<u32>(46994u, 49920u, 64846u, 1u)), vec4<f32>(390f, 1000f, 139f, 264f), Struct_1(1584f, 44934u, vec4<u32>(54173u, 80833u, 64177u, 53019u))), false, Struct_1(364f, 1u, vec4<u32>(1u, 24378u, 4294967295u, 1u)), Struct_2(vec2<bool>(true, true), Struct_1(2033f, 1u, vec4<u32>(71201u, 2508u, 57363u, 14118u)), vec4<f32>(1255f, 551f, -471f, 434f), Struct_1(-186f, 79212u, vec4<u32>(1u, 0u, 45180u, 0u))))), all(vec2<bool>(true, true))), Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1517f + 759f))), ~_wgslsmith_sub_u32(46096u, 16118u), min(abs(vec4<u32>(7157u, 4294967295u, 5063u, 4294967295u)), vec4<u32>(11075u, 4294967295u, 4294967295u, 1u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-330f, 216f, -938f, -664f)))))), Struct_1(_wgslsmith_f_op_f32(272f + -686f), 1u, countOneBits(~vec4<u32>(14546u, 4294967295u, 1u, 1u)))), Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(1556f)), -1960f, _wgslsmith_f_op_f32(select(1000f, -929f, false)), -393f)), func_2(Struct_2(select(vec2<bool>(false, false), vec2<bool>(true, false), true), Struct_1(-323f, 6876u, vec4<u32>(4294967295u, 7166u, 4416u, 0u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-845f, 2958f, 1205f, 2345f)), Struct_1(-1395f, 37063u, vec4<u32>(16590u, 55787u, 34185u, 4294967295u))), true, Struct_1(_wgslsmith_f_op_f32(-842f - -320f), ~4294967295u, vec4<u32>(1u, 1u, 1u, 1u)), Struct_2(vec2<bool>(false, true), func_2(Struct_2(vec2<bool>(true, false), Struct_1(-313f, 0u, vec4<u32>(0u, 0u, 24936u, 0u)), vec4<f32>(429f, -1136f, -964f, 2583f), Struct_1(-147f, 4294967295u, vec4<u32>(45625u, 1u, 4294967295u, 1u))), true, Struct_1(-158f, 38428u, vec4<u32>(4294967295u, 0u, 4294967295u, 4897u)), Struct_2(vec2<bool>(false, false), Struct_1(729f, 4294967295u, vec4<u32>(17014u, 28575u, 4294967295u, 54669u)), vec4<f32>(327f, 201f, 932f, 1000f), Struct_1(-457f, 24386u, vec4<u32>(1u, 4294967295u, 25143u, 10624u)))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, 987f, -169f, -936f))), Struct_1(2029f, 28164u, vec4<u32>(1u, 9514u, 8976u, 4294967295u))))));
    var_0 = countOneBits(~(vec3<u32>(abs(39888u), ~1u, firstLeadingBit(var_0.x)) | (vec3<u32>(4294967295u, 44724u, var_0.x) ^ vec3<u32>(37601u, 1u, 11532u))));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -322f) * _wgslsmith_f_op_f32(trunc(-2065f))), 823f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1243f)) * _wgslsmith_f_op_f32(-536f + -247f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(1689f, -1164f, 455f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(124f, -862f, 1573f) + vec3<f32>(1325f, 674f, -400f)))))));
    var var_2 = vec3<bool>(!any(select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), true))), false, true);
    let var_3 = Struct_4(_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(28182u, _wgslsmith_mod_u32(4294967295u, var_0.x)), ~firstTrailingBit(0u)), vec2<u32>(~(~1u), 1u)), vec4<f32>(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, 1352f))), _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(var_1.x, -809f, var_2.x))))), _wgslsmith_f_op_f32(floor(-535f)), var_1.x), _wgslsmith_dot_vec4_u32(~abs(vec4<u32>(var_0.x, var_0.x, 0u, 0u)) | select(abs(vec4<u32>(var_0.x, 41856u, var_0.x, var_0.x)), select(vec4<u32>(55742u, 48081u, 1u, var_0.x), vec4<u32>(1u, 1u, var_0.x, var_0.x), false), !var_2.x), vec4<u32>(_wgslsmith_div_u32(1u, var_0.x), _wgslsmith_mod_u32(var_0.x, var_0.x) << (countOneBits(26482u) % 32u), abs(var_0.x), var_0.x)), Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(987f, -694f, 162f, var_1.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(389f, var_1.x, var_1.x, var_1.x))))), func_2(Struct_2(vec2<bool>(var_2.x, true), Struct_1(var_1.x, 56188u, vec4<u32>(var_0.x, 4294967295u, var_0.x, 45875u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, -475f, var_1.x)), func_2(Struct_2(var_2.xz, Struct_1(var_1.x, 22218u, vec4<u32>(4294967295u, var_0.x, var_0.x, var_0.x)), vec4<f32>(-804f, -1000f, -2626f, var_1.x), Struct_1(var_1.x, var_0.x, vec4<u32>(86151u, var_0.x, 1u, 0u))), var_2.x, Struct_1(667f, var_0.x, vec4<u32>(var_0.x, var_0.x, 40775u, var_0.x)), Struct_2(vec2<bool>(var_2.x, true), Struct_1(-1782f, var_0.x, vec4<u32>(var_0.x, 24346u, var_0.x, 7590u)), vec4<f32>(var_1.x, var_1.x, -1211f, var_1.x), Struct_1(976f, 2360u, vec4<u32>(var_0.x, 4294967295u, var_0.x, var_0.x))))), false, Struct_1(1338f, _wgslsmith_dot_vec2_u32(var_0.xx, vec2<u32>(var_0.x, 11974u)), ~vec4<u32>(var_0.x, 12671u, var_0.x, 8015u)), Struct_2(select(vec2<bool>(false, var_2.x), var_2.zy, vec2<bool>(true, false)), Struct_1(var_1.x, var_0.x, vec4<u32>(var_0.x, 81212u, 0u, 1u)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.x, -1372f, -1761f, var_1.x))), Struct_1(553f, var_0.x, vec4<u32>(var_0.x, 1u, 4294967295u, 78869u))))));
    return func_4(var_3.d.b);
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32, arg_3: f32) -> Struct_4 {
    var var_0 = Struct_2(!select(select(select(vec2<bool>(arg_0.a.x, true), arg_0.a, true), arg_0.a, arg_0.a), !vec2<bool>(arg_0.a.x, arg_0.a.x), !(!arg_0.a)), func_2(arg_0, true, Struct_1(arg_0.d.a, _wgslsmith_add_u32(arg_1.c.x, 4294967295u) << (~arg_1.b % 32u), min(arg_0.b.c, arg_1.c)), Struct_2(arg_0.a, arg_1, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.x, arg_1.a, 876f, 1070f))), arg_1)), vec4<f32>(-182f, 653f, _wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(-142f * -222f)), func_2(Struct_2(vec2<bool>(any(vec3<bool>(true, arg_0.a.x, arg_0.a.x)), select(false, arg_0.a.x, arg_0.a.x)), arg_1, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(425f, -1887f, arg_1.a, -1000f), vec4<f32>(1000f, arg_1.a, -429f, -641f)))), arg_1), true, arg_0.b, Struct_2(vec2<bool>(true, true), Struct_1(-117f, reverseBits(75974u), arg_1.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.c)), arg_1)));
    var_0 = arg_0;
    var_0 = Struct_2(select(vec2<bool>(~arg_0.d.c.x <= 25980u, true), select(arg_0.a, vec2<bool>(true, true), !(!arg_0.a.x)), select(select(select(arg_0.a, vec2<bool>(var_0.a.x, false), false), arg_0.a, var_0.a.x), vec2<bool>(false | arg_0.a.x, arg_0.a.x), !(!arg_0.a))), Struct_1(742f, abs(0u), vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(54907u, 0u), ~vec2<u32>(0u, 3812u)), ~arg_2, _wgslsmith_mult_u32(var_0.d.b & arg_2, 1u), ~arg_1.c.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.c - vec4<f32>(-1305f, 1594f, -698f, -1161f)))))), func_2(arg_0, func_4(Struct_1(var_0.c.x, 0u, var_0.d.c)) | var_0.a.x, func_2(Struct_2(vec2<bool>(false, var_0.a.x), Struct_1(1405f, arg_1.b, vec4<u32>(1u, arg_1.c.x, arg_2, 1u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(910f, arg_1.a, -1000f, var_0.d.a) - vec4<f32>(-1084f, -1000f, arg_0.d.a, 657f)), func_2(arg_0, false, arg_0.b, arg_0)), true, Struct_1(arg_1.a, _wgslsmith_div_u32(86346u, var_0.d.c.x), select(vec4<u32>(16394u, 23905u, 4294967295u, 1u), var_0.b.c, true)), arg_0), Struct_2(vec2<bool>(arg_0.a.x | true, !arg_0.a.x), var_0.d, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.a, -815f, 235f, arg_3) + vec4<f32>(1684f, arg_0.c.x, arg_1.a, arg_0.c.x)))), Struct_1(arg_0.b.a, 1u, arg_0.b.c))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.b.a))), -246f))));
    var var_2 = abs(_wgslsmith_div_vec4_i32(~(~vec4<i32>(u_input.a, u_input.c, -1i, u_input.a)), reverseBits(-countOneBits(vec4<i32>(-25627i, -1i, -31964i, 32285i)))));
    return Struct_4(vec2<u32>(var_0.d.b, _wgslsmith_clamp_u32(arg_0.d.b, arg_1.c.x, arg_0.b.c.x)), arg_0.c, arg_1.c.x, Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.c))), func_2(arg_0, !var_0.a.x, func_2(arg_0, arg_0.b.a >= arg_1.a, Struct_1(1128f, 4294967295u, var_0.d.c), arg_0), Struct_2(select(vec2<bool>(arg_0.a.x, false), arg_0.a, false), Struct_1(arg_3, 1u, arg_0.b.c), arg_0.c, func_2(Struct_2(arg_0.a, Struct_1(var_0.c.x, 74084u, var_0.d.c), var_0.c, arg_0.d), false, arg_0.d, Struct_2(var_0.a, Struct_1(arg_0.d.a, 0u, vec4<u32>(arg_1.c.x, 0u, arg_0.d.b, 30721u)), vec4<f32>(-1778f, var_0.c.x, -592f, -1543f), var_0.b))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(Struct_2(vec2<bool>(!func_1(0i), false), Struct_1(_wgslsmith_f_op_f32(1235f + 262f), _wgslsmith_sub_u32(_wgslsmith_sub_u32(60363u, 1u), 58770u), vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(167f, -235f, 1002f, 201f)) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1542f, 614f, 1565f, -287f)))), vec4<f32>(-227f, _wgslsmith_f_op_f32(round(1163f)), _wgslsmith_f_op_f32(272f - -260f), 582f)), func_2(Struct_2(vec2<bool>(false, true), Struct_1(1303f, 3127u, vec4<u32>(4294967295u, 4294967295u, 74652u, 33401u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-466f, -641f, -1645f, 955f) + vec4<f32>(-737f, 1562f, -137f, 372f)), func_2(Struct_2(vec2<bool>(true, false), Struct_1(-1602f, 4294967295u, vec4<u32>(1u, 10117u, 4294967295u, 17381u)), vec4<f32>(-495f, 498f, 746f, 949f), Struct_1(-519f, 43264u, vec4<u32>(1u, 44090u, 1u, 4294967295u))), false, Struct_1(906f, 5922u, vec4<u32>(4294967295u, 1u, 137216u, 1u)), Struct_2(vec2<bool>(true, false), Struct_1(221f, 48136u, vec4<u32>(1u, 10468u, 29094u, 37367u)), vec4<f32>(620f, -983f, -852f, -2228f), Struct_1(1862f, 33325u, vec4<u32>(0u, 39672u, 1u, 35181u))))), true, func_2(Struct_2(vec2<bool>(true, true), Struct_1(-1258f, 14324u, vec4<u32>(67860u, 67502u, 23417u, 1u)), vec4<f32>(-360f, -1510f, 2057f, -1404f), Struct_1(-133f, 43696u, vec4<u32>(1u, 4294967295u, 78836u, 4294967295u))), true, Struct_1(-766f, 69357u, vec4<u32>(3420u, 590u, 0u, 4294967295u)), Struct_2(vec2<bool>(false, false), Struct_1(1363f, 30395u, vec4<u32>(0u, 1339u, 4294967295u, 15623u)), vec4<f32>(436f, 879f, 202f, 1204f), Struct_1(-202f, 23450u, vec4<u32>(44880u, 1u, 30249u, 49532u)))), Struct_2(vec2<bool>(true, true), func_2(Struct_2(vec2<bool>(true, false), Struct_1(329f, 56188u, vec4<u32>(0u, 1u, 18760u, 10497u)), vec4<f32>(-556f, 108f, -811f, 844f), Struct_1(-1000f, 4294967295u, vec4<u32>(1u, 16122u, 29759u, 0u))), false, Struct_1(-2117f, 0u, vec4<u32>(107033u, 19618u, 4294967295u, 0u)), Struct_2(vec2<bool>(false, false), Struct_1(1000f, 0u, vec4<u32>(43159u, 16264u, 4294967295u, 26497u)), vec4<f32>(-399f, 1383f, -314f, 580f), Struct_1(591f, 1u, vec4<u32>(1343u, 0u, 1u, 0u)))), _wgslsmith_div_vec4_f32(vec4<f32>(1016f, 1907f, -724f, -623f), vec4<f32>(-1000f, 1546f, -2079f, -1322f)), func_2(Struct_2(vec2<bool>(false, true), Struct_1(2032f, 3856u, vec4<u32>(1u, 7224u, 1108u, 0u)), vec4<f32>(-277f, 904f, 213f, 189f), Struct_1(1970f, 24645u, vec4<u32>(0u, 5073u, 1176u, 1u))), true, Struct_1(-1000f, 4294967295u, vec4<u32>(63302u, 1u, 24617u, 0u)), Struct_2(vec2<bool>(true, true), Struct_1(1011f, 4294967295u, vec4<u32>(1u, 1u, 4294967295u, 4294967295u)), vec4<f32>(-457f, -628f, -492f, -1016f), Struct_1(-961f, 23800u, vec4<u32>(0u, 9582u, 17271u, 0u))))))), func_2(Struct_2(vec2<bool>(true, true), Struct_1(_wgslsmith_f_op_f32(539f * -250f), 66163u, firstLeadingBit(vec4<u32>(16520u, 0u, 1u, 13459u))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -902f), _wgslsmith_f_op_f32(1130f - 3973f), 1f, -946f), Struct_1(_wgslsmith_f_op_f32(356f * 1000f), firstTrailingBit(4294967295u), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 504u, 17709u, 54709u), vec4<u32>(62513u, 1u, 1u, 4294967295u)))), true & all(vec3<bool>(false, true, true)), Struct_1(655f, 17712u, vec4<u32>(1u, _wgslsmith_clamp_u32(1u, 4294967295u, 52872u), ~77353u, max(0u, 0u))), Struct_2(select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)), true), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1562f), _wgslsmith_add_u32(1u, 0u), ~vec4<u32>(4294967295u, 41987u, 24154u, 12052u)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1434f, -631f, -1863f, -599f))))), Struct_1(_wgslsmith_f_op_f32(max(342f, -735f)), 1u, select(vec4<u32>(1u, 1u, 1u, 14223u), vec4<u32>(0u, 4294967295u, 41365u, 0u), vec4<bool>(true, false, false, false))))), _wgslsmith_mult_u32(_wgslsmith_div_u32(min(firstTrailingBit(38618u), 1u), ~(~592u)), 28244u), func_2(Struct_2(vec2<bool>(true, all(vec2<bool>(true, false))), func_2(Struct_2(vec2<bool>(false, true), Struct_1(-634f, 8708u, vec4<u32>(58250u, 2424u, 40540u, 1u)), vec4<f32>(1416f, -1000f, 1298f, 314f), Struct_1(1000f, 1u, vec4<u32>(10897u, 4294967295u, 54999u, 18863u))), true, Struct_1(-1617f, 0u, vec4<u32>(24483u, 13415u, 4294967295u, 4294967295u)), Struct_2(vec2<bool>(false, false), Struct_1(-894f, 0u, vec4<u32>(0u, 73584u, 49450u, 2385u)), vec4<f32>(1000f, 496f, -1188f, 118f), Struct_1(-642f, 0u, vec4<u32>(0u, 15768u, 4294967295u, 1u)))), vec4<f32>(1f, 1f, 1f, 1f), func_2(Struct_2(vec2<bool>(true, true), Struct_1(1441f, 1u, vec4<u32>(1u, 25571u, 52271u, 1u)), vec4<f32>(1260f, -2461f, 1743f, 1154f), Struct_1(1082f, 113536u, vec4<u32>(0u, 52142u, 0u, 0u))), any(vec2<bool>(false, true)), func_2(Struct_2(vec2<bool>(true, false), Struct_1(-1299f, 0u, vec4<u32>(61680u, 44242u, 28178u, 0u)), vec4<f32>(-715f, -105f, -298f, -1000f), Struct_1(-773f, 0u, vec4<u32>(0u, 32720u, 4294967295u, 4294967295u))), true, Struct_1(-281f, 99872u, vec4<u32>(4294967295u, 0u, 111010u, 0u)), Struct_2(vec2<bool>(true, false), Struct_1(-1227f, 30056u, vec4<u32>(1u, 0u, 4294967295u, 4294967295u)), vec4<f32>(-861f, -832f, -2023f, 268f), Struct_1(1103f, 4294967295u, vec4<u32>(0u, 4294967295u, 0u, 11273u)))), Struct_2(vec2<bool>(true, true), Struct_1(-639f, 7851u, vec4<u32>(0u, 0u, 1u, 11853u)), vec4<f32>(-949f, -1681f, 225f, 657f), Struct_1(562f, 4294967295u, vec4<u32>(1u, 0u, 54227u, 11509u))))), true, func_2(Struct_2(vec2<bool>(false, false), Struct_1(-1000f, 0u, vec4<u32>(4294967295u, 0u, 23241u, 0u)), vec4<f32>(260f, 1023f, -320f, 364f), Struct_1(665f, 368u, vec4<u32>(0u, 4294967295u, 17069u, 31956u))), true, Struct_1(-372f, ~1u, vec4<u32>(1u, 1u, 1u, 1u)), Struct_2(vec2<bool>(true, false), func_2(Struct_2(vec2<bool>(true, false), Struct_1(-529f, 1u, vec4<u32>(54927u, 0u, 18930u, 55833u)), vec4<f32>(-1111f, -1000f, 834f, -434f), Struct_1(1000f, 13058u, vec4<u32>(4294967295u, 9246u, 0u, 0u))), true, Struct_1(1390f, 44761u, vec4<u32>(52365u, 4294967295u, 0u, 33762u)), Struct_2(vec2<bool>(false, false), Struct_1(-1261f, 48182u, vec4<u32>(8282u, 1u, 4294967295u, 86765u)), vec4<f32>(-362f, 943f, -493f, -1207f), Struct_1(-1356f, 16330u, vec4<u32>(1u, 17983u, 34268u, 1u)))), _wgslsmith_div_vec4_f32(vec4<f32>(-373f, -368f, 1663f, -821f), vec4<f32>(-606f, 428f, 215f, -1295f)), Struct_1(-1368f, 61656u, vec4<u32>(27960u, 4294967295u, 5118u, 41822u)))), Struct_2(vec2<bool>(false, true), func_2(Struct_2(vec2<bool>(true, false), Struct_1(-675f, 1u, vec4<u32>(1u, 1u, 4294967295u, 16979u)), vec4<f32>(-1085f, 1993f, 1798f, -491f), Struct_1(-247f, 104171u, vec4<u32>(1u, 31395u, 32408u, 4294967295u))), true, Struct_1(1236f, 65216u, vec4<u32>(14523u, 0u, 5739u, 0u)), Struct_2(vec2<bool>(false, true), Struct_1(631f, 4627u, vec4<u32>(0u, 26613u, 16446u, 10765u)), vec4<f32>(-1339f, -1000f, -2871f, 246f), Struct_1(1743f, 0u, vec4<u32>(69277u, 1976u, 16132u, 12058u)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(309f, -853f, -536f, 214f)) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-620f, -1000f, 203f, 260f), vec4<f32>(373f, -161f, -542f, -732f)))), Struct_1(_wgslsmith_f_op_f32(step(-1202f, 957f)), 0u, vec4<u32>(79468u, 72823u, 0u, 35873u)))).a);
    var_0 = func_6(Struct_2(vec2<bool>(any(vec4<bool>(true, false, false, false)) & true, _wgslsmith_mod_i32(u_input.b, u_input.a) > (i32(-1i) * -2147483647i)), func_6(Struct_2(vec2<bool>(true, true), Struct_1(var_0.d.b.a, 4294967295u, var_0.d.b.c), _wgslsmith_f_op_vec4_f32(var_0.b * var_0.b), var_0.d.b), var_0.d.b, firstTrailingBit(var_0.c) | func_5(Struct_2(vec2<bool>(true, true), var_0.d.b, var_0.d.a, var_0.d.b), Struct_3(var_0.d.a, var_0.d.b)).x, 1380f).d.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-849f, -1280f, var_0.b.x, -953f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1083f, var_0.d.b.a, 1000f, var_0.b.x) - vec4<f32>(745f, 1118f, 352f, -1110f)))), Struct_1(287f, 4294967295u, vec4<u32>(var_0.d.b.b, var_0.d.b.c.x, 0u, 1u | var_0.c))), Struct_1(1135f, var_0.d.b.b, min(firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.c, 0u, 78996u, var_0.a.x), var_0.d.b.c, var_0.d.b.c)), var_0.d.b.c << (_wgslsmith_add_vec4_u32(vec4<u32>(var_0.d.b.c.x, var_0.a.x, var_0.d.b.b, 24782u), vec4<u32>(var_0.c, 33277u, 1u, var_0.d.b.c.x)) % vec4<u32>(32u)))), _wgslsmith_sub_u32(~(~_wgslsmith_dot_vec2_u32(var_0.d.b.c.wy, vec2<u32>(1u, var_0.c))), 40726u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(max(var_0.b.x, 1997f)), true)))), _wgslsmith_f_op_f32(1537f * func_6(Struct_2(vec2<bool>(true, false), Struct_1(-273f, var_0.c, var_0.d.b.c), vec4<f32>(945f, var_0.b.x, -802f, var_0.b.x), var_0.d.b), Struct_1(295f, 4294967295u, var_0.d.b.c), var_0.d.b.c.x >> (var_0.c % 32u), _wgslsmith_f_op_f32(2361f + 1058f)).b.x)));
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.a.x) - _wgslsmith_f_op_f32(round(var_0.d.a.x))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(var_0.b.yz, vec2<f32>(-1190f, -388f)), _wgslsmith_f_op_vec2_f32(min(var_0.b.xw, _wgslsmith_f_op_vec2_f32(-var_0.b.yz))), select(vec2<bool>(true, true), vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(true, true), false)))) + _wgslsmith_f_op_vec2_f32(-var_0.d.a.wz)), false));
    var var_2 = min(select(22562i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.b << (var_0.d.b.c.x % 32u), 1i, 1i), firstLeadingBit(-vec4<i32>(u_input.b, 0i, u_input.a, 0i))), false), 3740i);
    let var_3 = select(max(vec2<i32>(i32(-1i) * -u_input.a, -7744i), _wgslsmith_mult_vec2_i32(max(vec2<i32>(u_input.b, 2147483647i), vec2<i32>(2147483647i, 1i)), vec2<i32>(select(u_input.b, -473i, true), reverseBits(-52740i)))), vec2<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a, u_input.b), vec2<i32>(-1i, _wgslsmith_add_i32(u_input.c, -2147483647i))), u_input.c), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true), !(29711i != ~u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(abs(var_0.b)), ~((vec4<i32>(2147483647i, var_3.x, 31748i, 37931i) ^ -vec4<i32>(2147483647i, 0i, var_3.x, u_input.c)) | abs(-vec4<i32>(var_3.x, var_3.x, -38280i, -37738i))), abs(~var_3) & vec2<i32>(_wgslsmith_add_i32(~1i, -18138i), u_input.a), _wgslsmith_mod_vec2_u32(~var_0.d.b.c.yz, max(var_0.a, vec2<u32>(var_0.d.b.b, 2918u)) >> (vec2<u32>(func_2(Struct_2(vec2<bool>(false, false), Struct_1(-1498f, 4294967295u, var_0.d.b.c), vec4<f32>(627f, -699f, -461f, var_0.d.b.a), Struct_1(var_1.x, 2512u, var_0.d.b.c)), false, Struct_1(-1357f, var_0.c, vec4<u32>(var_0.a.x, var_0.d.b.c.x, 1u, var_0.d.b.c.x)), Struct_2(vec2<bool>(true, true), var_0.d.b, var_0.b, Struct_1(var_0.b.x, var_0.d.b.b, var_0.d.b.c))).c.x, var_0.d.b.b) % vec2<u32>(32u))));
}

