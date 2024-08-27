struct Struct_1 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: u32, arg_1: vec2<bool>) -> f32 {
    let var_0 = u_input.b.x;
    let var_1 = !vec3<bool>(arg_1.x, all(!select(vec4<bool>(false, false, false, arg_1.x), vec4<bool>(false, false, arg_1.x, false), false)), false);
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(293f)), -658f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -366f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(132f, -933f), vec2<f32>(1183f, 357f)))) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(414f, 2738f))))), vec3<bool>(var_1.x, all(select(select(vec2<bool>(var_1.x, var_1.x), var_1.zy, true), var_1.xz, !vec2<bool>(var_1.x, arg_1.x))), !(!(!var_1.x))));
    let var_3 = var_1;
    let var_4 = select(vec4<bool>(true, all(var_3), true, !var_2.c.x), vec4<bool>(var_3.x, true, var_3.x, any(var_2.c)), select(select(vec4<bool>(false, false, any(vec2<bool>(var_2.c.x, var_2.c.x)), arg_1.x | true), vec4<bool>(any(vec3<bool>(var_1.x, var_1.x, var_2.c.x)), true, false || var_1.x, true), select(vec4<bool>(var_2.c.x, arg_1.x, true, var_2.c.x), vec4<bool>(false, var_1.x, var_1.x, var_3.x), select(vec4<bool>(false, true, var_1.x, arg_1.x), vec4<bool>(var_3.x, var_2.c.x, var_3.x, var_3.x), false))), vec4<bool>(var_2.c.x && select(arg_1.x, false, var_2.c.x), false, arg_1.x, false), !(!(!vec4<bool>(true, true, var_2.c.x, arg_1.x)))));
    return -927f;
}

fn func_2(arg_0: bool) -> Struct_2 {
    var var_0 = Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1394f * 370f), -640f)), _wgslsmith_f_op_f32(f32(-1f) * -1252f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-728f, 723f)), _wgslsmith_f_op_f32(func_3(0u, vec2<bool>(false, arg_0)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(-606f, 1049f)), -1716f)), !(!vec3<bool>(arg_0, false, false))), -859f, 1i, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-657f, -170f, 381f) * vec3<f32>(-333f, -291f, 1000f)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-146f, 1065f) - vec2<f32>(339f, -1053f))))), !(!select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, false, true), true))));
    var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_div_f32(-927f, var_0.b))), _wgslsmith_f_op_vec2_f32(round(var_0.a.a.xy)), !var_0.d.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.b))))), _wgslsmith_add_i32(countOneBits(firstLeadingBit(~(-31334i))), ~var_0.c), Struct_1(_wgslsmith_f_op_vec3_f32(-var_0.a.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d.a.x, 199f)), vec2<f32>(var_0.a.a.x, var_0.d.a.x)) - vec2<f32>(1f, 1f)), !select(select(vec3<bool>(true, var_0.d.c.x, false), vec3<bool>(var_0.a.c.x, false, arg_0), arg_0), !var_0.d.c, !var_0.a.c)));
    var var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.a.a.x - _wgslsmith_f_op_f32(-var_0.b)))), var_0.b), 1614f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-132f, var_0.a.b.x)) - _wgslsmith_f_op_f32(var_0.d.a.x - _wgslsmith_f_op_f32(trunc(var_0.a.b.x)))), _wgslsmith_f_op_f32(f32(-1f) * -213f));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.b), -624f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1069f))), _wgslsmith_f_op_f32(-var_0.b)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(459f * 109f), _wgslsmith_f_op_f32(510f - var_1.x), _wgslsmith_f_op_f32(func_3(u_input.c, var_0.a.c.yx)), _wgslsmith_f_op_f32(-317f * var_1.x)))));
    var var_2 = 22344u;
    return Struct_2(Struct_1(var_0.d.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(var_1.yx, var_1.yz, false))))), !vec3<bool>(var_0.d.c.x, !arg_0, arg_0 | true)), _wgslsmith_f_op_f32(func_3(724u, var_0.d.c.zy)), ~(~firstLeadingBit(~var_0.c)), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1063f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-var_0.a.b.x))), var_0.a.b.x), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(abs(1026f)))), -1602f), !select(var_0.a.c, !vec3<bool>(arg_0, arg_0, var_0.a.c.x), var_0.d.c)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_3, arg_3: Struct_2) -> Struct_3 {
    let var_0 = Struct_3(func_2(any(vec2<bool>(false, !arg_3.d.c.x))), func_2(~firstTrailingBit(46248u) < u_input.c).d, func_2(!any(arg_1.c.zz) || any(func_2(arg_2.a.d.c.x).a.c)).d, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_3.a.a) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1315f, -536f, arg_1.a.x))))));
    var var_1 = !var_0.c.c;
    var var_2 = 65996u;
    let var_3 = arg_2.a;
    var_1 = vec3<bool>(all(vec4<bool>(!select(true, arg_2.c.c.x, arg_1.c.x), any(var_3.d.c), false, var_3.a.c.x)), !((any(vec4<bool>(true, var_3.a.c.x, arg_2.c.c.x, false)) && arg_2.b.c.x) || true), true);
    return var_0;
}

fn func_1(arg_0: vec2<bool>) -> Struct_2 {
    let var_0 = 1u;
    let var_1 = func_4(func_2(true), func_2(select(!any(vec2<bool>(arg_0.x, false)), func_2(arg_0.x).d.c.x, true)).d, Struct_3(func_2(all(select(vec4<bool>(false, arg_0.x, arg_0.x, true), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x)))), Struct_1(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1019f, 1332f, 1439f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1032f, -1082f, 204f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-219f, -921f)), select(select(vec3<bool>(arg_0.x, true, true), vec3<bool>(arg_0.x, arg_0.x, arg_0.x), vec3<bool>(false, true, arg_0.x)), !vec3<bool>(arg_0.x, arg_0.x, false), true)), func_2(true).d, vec3<f32>(_wgslsmith_f_op_f32(-192f * _wgslsmith_f_op_f32(func_3(0u, arg_0))), 230f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1302f * 1000f), _wgslsmith_f_op_f32(f32(-1f) * -1098f), true)))), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-789f, 1899f, 498f))), vec2<f32>(-732f, _wgslsmith_f_op_f32(-1297f - 947f)), func_2(arg_0.x).a.c), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -388f)), 1078f, arg_0.x)), _wgslsmith_mod_i32(13747i, _wgslsmith_dot_vec2_i32(u_input.b.zx & vec2<i32>(u_input.a, -2147483647i), reverseBits(u_input.b.xz))), Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-851f, 302f, -661f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1158f, -1129f, -166f)))), vec2<f32>(1f, 1f), vec3<bool>(func_2(true).a.c.x, !arg_0.x, true))));
    let var_2 = 17268u;
    var var_3 = var_1.b.a;
    let var_4 = vec2<i32>(_wgslsmith_sub_i32(-2147483647i, -(-2147483647i >> (u_input.c % 32u)) & select(-var_1.a.c, _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(u_input.a, u_input.b.x, var_1.a.c)), var_1.b.c.x)), -34545i);
    return Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(round(-594f)), _wgslsmith_f_op_f32(-var_3.x), 781f), _wgslsmith_div_vec2_f32(var_3.zy, vec2<f32>(func_4(var_1.a, Struct_1(vec3<f32>(-524f, var_3.x, -205f), var_1.b.b, vec3<bool>(true, var_1.c.c.x, true)), Struct_3(var_1.a, var_1.b, var_1.a.d, var_1.a.d.a), Struct_2(Struct_1(var_1.d, vec2<f32>(387f, 1665f), var_1.c.c), var_3.x, var_4.x, Struct_1(vec3<f32>(268f, var_1.d.x, var_1.a.a.b.x), vec2<f32>(1000f, 314f), vec3<bool>(arg_0.x, var_1.c.c.x, arg_0.x)))).a.a.b.x, 288f)), vec3<bool>(true | arg_0.x, true, arg_0.x)), var_3.x, -53177i, func_2(arg_0.x).d);
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    return func_4(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(arg_0.d.a)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-683f, -321f, -560f) + arg_0.a.a)), func_1(func_1(vec2<bool>(true, arg_0.a.c.x)).d.c.zx).a.b, !vec3<bool>(arg_0.d.c.x, arg_0.d.c.x, arg_0.a.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -849f), select(func_2(true).c, u_input.b.x, true), Struct_1(arg_0.a.a, vec2<f32>(_wgslsmith_f_op_f32(ceil(arg_0.a.a.x)), -767f), func_4(Struct_2(Struct_1(arg_0.d.a, arg_0.a.a.yx, vec3<bool>(false, arg_0.a.c.x, arg_0.a.c.x)), arg_0.b, 15130i, arg_0.a), arg_0.d, func_4(arg_0, arg_0.d, Struct_3(Struct_2(arg_0.a, -849f, 32924i, Struct_1(vec3<f32>(arg_0.a.a.x, arg_0.d.a.x, arg_0.a.b.x), arg_0.a.a.zy, arg_0.d.c)), arg_0.a, arg_0.a, arg_0.d.a), Struct_2(Struct_1(arg_0.d.a, vec2<f32>(352f, arg_0.a.b.x), arg_0.d.c), arg_0.a.a.x, -2147483647i, arg_0.d)), Struct_2(arg_0.d, 1732f, 36252i, Struct_1(vec3<f32>(685f, 546f, arg_0.d.a.x), arg_0.a.b, vec3<bool>(arg_0.d.c.x, true, false)))).c.c)), arg_0.a, Struct_3(arg_0, arg_0.a, arg_0.d, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b, _wgslsmith_f_op_f32(f32(-1f) * -486f), arg_0.a.b.x))), Struct_2(func_4(arg_0, Struct_1(_wgslsmith_f_op_vec3_f32(arg_0.d.a - arg_0.d.a), arg_0.d.b, arg_0.d.c), Struct_3(arg_0, func_1(vec2<bool>(arg_0.a.c.x, true)).d, arg_0.d, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(735f, 532f, arg_0.d.a.x), arg_0.d.a, arg_0.d.c))), Struct_2(Struct_1(vec3<f32>(arg_0.b, 474f, arg_0.d.b.x), arg_0.a.b, arg_0.a.c), 2369f, min(14661i, -1i), Struct_1(vec3<f32>(-242f, -968f, arg_0.a.a.x), arg_0.a.b, vec3<bool>(true, true, false)))).a.d, -1000f, select(u_input.b.x, -1i, any(vec2<bool>(true, true))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.d.a)), arg_0.d.b, select(vec3<bool>(arg_0.d.c.x, arg_0.a.c.x, true), func_4(Struct_2(Struct_1(vec3<f32>(220f, arg_0.d.b.x, -1091f), vec2<f32>(314f, -620f), arg_0.a.c), -185f, 0i, arg_0.d), Struct_1(arg_0.a.a, arg_0.d.a.xx, arg_0.a.c), Struct_3(Struct_2(arg_0.a, arg_0.d.a.x, u_input.b.x, Struct_1(arg_0.d.a, vec2<f32>(-342f, arg_0.a.b.x), vec3<bool>(arg_0.a.c.x, arg_0.d.c.x, arg_0.d.c.x))), Struct_1(arg_0.a.a, vec2<f32>(113f, 464f), arg_0.a.c), Struct_1(vec3<f32>(-2722f, arg_0.d.b.x, -1000f), vec2<f32>(arg_0.b, arg_0.d.a.x), vec3<bool>(false, true, false)), arg_0.a.a), arg_0).a.d.c, vec3<bool>(arg_0.d.c.x, arg_0.d.c.x, arg_0.d.c.x))))).a.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_2(func_5(func_1(vec2<bool>(false, false))), _wgslsmith_f_op_f32(f32(-1f) * -973f), -42938i, Struct_1(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(156f, 150f) * vec2<f32>(-857f, -136f)) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-295f, -360f)))), vec3<bool>(true, true, true))), Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(306f * 2023f), _wgslsmith_f_op_f32(1389f + 600f), -334f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-386f, 1125f, -1088f)))), _wgslsmith_f_op_vec2_f32(min(func_4(func_4(Struct_2(Struct_1(vec3<f32>(-1480f, -718f, -1345f), vec2<f32>(-399f, 258f), vec3<bool>(false, false, true)), 1048f, 9210i, Struct_1(vec3<f32>(-1000f, -492f, 1302f), vec2<f32>(-525f, -550f), vec3<bool>(false, false, false))), Struct_1(vec3<f32>(-742f, 174f, -328f), vec2<f32>(3439f, 215f), vec3<bool>(true, true, true)), Struct_3(Struct_2(Struct_1(vec3<f32>(-1891f, -1306f, 1150f), vec2<f32>(502f, 919f), vec3<bool>(false, false, true)), -968f, u_input.a, Struct_1(vec3<f32>(840f, -557f, 1598f), vec2<f32>(202f, 189f), vec3<bool>(true, false, false))), Struct_1(vec3<f32>(-1015f, 1226f, 776f), vec2<f32>(-2594f, 279f), vec3<bool>(true, true, true)), Struct_1(vec3<f32>(-286f, 1073f, 109f), vec2<f32>(-167f, 489f), vec3<bool>(true, false, true)), vec3<f32>(1041f, -220f, -1245f)), Struct_2(Struct_1(vec3<f32>(-890f, 491f, -1000f), vec2<f32>(1228f, -277f), vec3<bool>(true, false, false)), -2450f, u_input.b.x, Struct_1(vec3<f32>(-1000f, -165f, 365f), vec2<f32>(544f, 293f), vec3<bool>(true, false, true)))).a, func_1(vec2<bool>(false, true)).a, func_4(Struct_2(Struct_1(vec3<f32>(-678f, -104f, 581f), vec2<f32>(-357f, 1000f), vec3<bool>(true, true, false)), -107f, -57546i, Struct_1(vec3<f32>(-1609f, 850f, 1632f), vec2<f32>(-812f, 823f), vec3<bool>(false, true, true))), Struct_1(vec3<f32>(-419f, -617f, 308f), vec2<f32>(-1215f, 1379f), vec3<bool>(false, true, false)), Struct_3(Struct_2(Struct_1(vec3<f32>(-1591f, -1747f, 771f), vec2<f32>(-1972f, 705f), vec3<bool>(false, true, true)), -713f, u_input.b.x, Struct_1(vec3<f32>(1599f, -770f, -1489f), vec2<f32>(127f, -145f), vec3<bool>(false, true, true))), Struct_1(vec3<f32>(-111f, 277f, -352f), vec2<f32>(1055f, 431f), vec3<bool>(true, true, false)), Struct_1(vec3<f32>(-1000f, -2719f, 371f), vec2<f32>(1071f, 361f), vec3<bool>(true, false, false)), vec3<f32>(-186f, -1532f, 439f)), Struct_2(Struct_1(vec3<f32>(-2128f, -864f, -1902f), vec2<f32>(-1201f, 661f), vec3<bool>(false, true, true)), 747f, u_input.b.x, Struct_1(vec3<f32>(-529f, -359f, -1184f), vec2<f32>(-1604f, -495f), vec3<bool>(false, false, false)))), Struct_2(Struct_1(vec3<f32>(-984f, -119f, 178f), vec2<f32>(-1617f, 1636f), vec3<bool>(false, false, false)), -1062f, 36605i, Struct_1(vec3<f32>(288f, -333f, -1490f), vec2<f32>(719f, -490f), vec3<bool>(true, false, false)))).c.a.xz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(239f, 1000f)))))), vec3<bool>(!all(vec4<bool>(false, true, false, true)), true, u_input.b.x <= ~1i)), Struct_1(func_1(func_1(vec2<bool>(true, false)).a.c.zy).d.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(232f, 1056f)), vec2<f32>(1450f, 978f)))), vec3<bool>(true, true, true)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-480f, 509f, 503f))))))));
    let var_1 = u_input.c ^ ~u_input.c;
    var_0 = func_4(var_0.a, var_0.a.a, func_4(var_0.a, func_1(var_0.a.a.c.yy).d, Struct_3(var_0.a, func_5(Struct_2(Struct_1(vec3<f32>(-326f, 817f, 381f), var_0.a.d.a.zz, var_0.a.a.c), 395f, 30172i, Struct_1(var_0.d, vec2<f32>(979f, 228f), var_0.c.c))), Struct_1(var_0.a.d.a, vec2<f32>(-298f, 278f), vec3<bool>(false, var_0.b.c.x, false)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a.d.a))), func_4(func_4(Struct_2(var_0.c, var_0.d.x, u_input.a, Struct_1(vec3<f32>(var_0.b.a.x, -599f, var_0.d.x), var_0.c.b, var_0.b.c)), Struct_1(vec3<f32>(var_0.a.a.a.x, var_0.c.b.x, var_0.c.b.x), vec2<f32>(var_0.b.a.x, -1399f), var_0.c.c), Struct_3(var_0.a, var_0.a.d, var_0.a.a, var_0.b.a), Struct_2(var_0.a.a, var_0.d.x, -4595i, var_0.a.d)).a, Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1022f, var_0.a.a.b.x, 675f) - vec3<f32>(var_0.c.a.x, var_0.a.d.b.x, 1000f)), _wgslsmith_f_op_vec2_f32(var_0.c.a.yy * var_0.b.b), !var_0.c.c), func_4(var_0.a, func_5(Struct_2(var_0.a.a, var_0.c.a.x, u_input.b.x, Struct_1(vec3<f32>(384f, 1250f, 1000f), var_0.c.a.zy, var_0.c.c))), Struct_3(var_0.a, var_0.b, var_0.a.a, vec3<f32>(var_0.a.d.a.x, var_0.b.b.x, -1168f)), func_4(var_0.a, var_0.a.d, Struct_3(Struct_2(var_0.c, 1000f, 29452i, var_0.a.a), var_0.b, Struct_1(var_0.c.a, vec2<f32>(-1491f, 883f), vec3<bool>(false, false, true)), var_0.b.a), Struct_2(var_0.c, -727f, u_input.b.x, Struct_1(vec3<f32>(-758f, var_0.b.a.x, -290f), var_0.d.zx, var_0.c.c))).a), var_0.a).a), func_1(vec2<bool>(any(select(vec4<bool>(var_0.c.c.x, false, var_0.a.d.c.x, true), vec4<bool>(var_0.b.c.x, var_0.a.a.c.x, var_0.c.c.x, var_0.a.a.c.x), var_0.a.d.c.x)), var_0.b.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(72323u, select(80196u | var_1, var_1, false), var_1));
}

