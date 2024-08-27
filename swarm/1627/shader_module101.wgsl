struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: i32, arg_1: vec3<bool>) -> vec4<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -342f)))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(var_0.a + 1452f));
    var var_2 = arg_1.x;
    var var_3 = var_1;
    let var_4 = Struct_2(var_0, abs(~u_input.a.x), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(1712f))))), var_0, _wgslsmith_f_op_f32(floor(-698f)));
    return vec4<bool>(any(vec4<bool>(all(vec4<bool>(true, true, arg_1.x, false)) || arg_1.x, true, ~var_4.b > abs(var_4.b), true)), !arg_1.x, !(var_0.a <= var_1.a), !(!any(vec2<bool>(arg_1.x, true))));
}

fn func_2(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = Struct_2(arg_0, _wgslsmith_sub_u32(6947u, u_input.a.x), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -961f)) - 277f)), Struct_1(_wgslsmith_f_op_f32(max(-992f, -1111f))), _wgslsmith_f_op_f32(trunc(arg_0.a)));
    var var_1 = arg_0;
    var_1 = arg_0;
    let var_2 = arg_0;
    return select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), !func_3(43724i, vec3<bool>(true, false, true))), func_3(max(-(i32(-1i) * -6884i), ~(-2147483647i)), func_3(i32(-1i) * -2147483647i, select(vec3<bool>(false, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false), vec3<bool>(true, true, false))).wzy), func_3(max(countOneBits(-33046i), 2147483647i), vec3<bool>(true & any(vec3<bool>(false, true, true)), false, all(vec4<bool>(true, true, true, true)))).x);
}

fn func_1() -> f32 {
    let var_0 = all(vec2<bool>(-6027i < -(35235i << (u_input.a.x % 32u)), false));
    let var_1 = 0i;
    let var_2 = vec4<bool>(true, any(func_2(Struct_1(_wgslsmith_f_op_f32(917f - -1667f)))), _wgslsmith_div_f32(797f, _wgslsmith_div_f32(-1363f, -561f)) >= _wgslsmith_f_op_f32(ceil(-111f)), var_0);
    var var_3 = -firstTrailingBit((-vec4<i32>(47608i, var_1, var_1, var_1) | _wgslsmith_mult_vec4_i32(vec4<i32>(-2601i, 54176i, -20623i, var_1), vec4<i32>(var_1, 62289i, var_1, 62414i))) << (vec4<u32>(1u, u_input.a.x, 1u << (1u % 32u), countOneBits(83506u)) % vec4<u32>(32u)));
    let var_4 = Struct_2(Struct_1(1133f), 3231u, Struct_1(-551f), Struct_1(-718f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-190f - 1165f))), 1f)));
    return _wgslsmith_f_op_f32(f32(-1f) * -1503f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(func_1())), _wgslsmith_add_u32((1u >> (select(u_input.a.x, u_input.a.x, true) % 32u)) | u_input.a.x, min(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 4294967295u, u_input.a.x), u_input.a), abs(_wgslsmith_mult_u32(0u, u_input.a.x)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(425f, 268f) + -368f))), Struct_1(_wgslsmith_div_f32(-1138f, _wgslsmith_div_f32(-807f, _wgslsmith_f_op_f32(ceil(242f))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(412f)) * -123f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-161f * -1620f), _wgslsmith_f_op_f32(328f - -784f))))));
    var var_1 = u_input.a.x;
    var var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-387f, 1000f, -373f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1439f, var_0.c.a, var_0.a.a))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1450f, var_0.a.a, 954f), vec3<f32>(var_0.c.a, 1374f, 911f), vec3<bool>(false, false, false))), _wgslsmith_f_op_vec3_f32(vec3<f32>(196f, var_0.e, -1313f) + vec3<f32>(1000f, 1000f, var_0.c.a))))), vec3<bool>(u_input.a.x < 0u, func_2(Struct_1(var_0.e)).x, (-2147483647i >> (var_0.b % 32u)) != ~(-19770i))))));
    let var_3 = 0u;
    var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d.a, var_0.e, -464f) - _wgslsmith_div_vec3_f32(vec3<f32>(var_2.x, -744f, var_2.x), vec3<f32>(var_2.x, var_0.a.a, var_0.c.a))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-196f, 1000f, 1806f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(567f, -803f, var_0.a.a)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(952f, var_0.e, var_2.x) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1104f, var_2.x, -1130f))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1115f, -867f, var_2.x) - vec3<f32>(var_0.c.a, var_2.x, 474f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, -678f, 521f) - vec3<f32>(127f, -618f, var_2.x))))));
    var_0 = Struct_2(var_0.d, 4294967295u, var_0.d, var_0.a, var_2.x);
    var_0 = Struct_2(var_0.d, ~firstLeadingBit(1u << ((34607u ^ var_3) % 32u)), var_0.a, var_0.a, _wgslsmith_f_op_f32(step(372f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(444f, _wgslsmith_f_op_f32(f32(-1f) * -1430f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec3<i32>(-3883i, 1154i, select(-21621i, ~(-1i), true)), abs(-(~vec3<i32>(7061i, 0i, -1i))), any(vec4<bool>(true, true, u_input.a.x < u_input.a.x, func_3(56854i, vec3<bool>(false, true, true)).x))), -(~firstLeadingBit(firstLeadingBit(vec4<i32>(1i, 0i, -1775i, 0i)))), abs(~reverseBits(vec4<i32>(1i, 1i, 1i, 1i))), _wgslsmith_sub_vec3_u32(~countOneBits(abs(u_input.a.wxw)), vec3<u32>(~reverseBits(var_3), abs(var_3), var_3)), -_wgslsmith_add_vec3_i32(select(~vec3<i32>(-2147483647i, -2147483647i, 2147483647i), select(vec3<i32>(2147483647i, -28520i, -5049i), vec3<i32>(18201i, 2147483647i, 0i), vec3<bool>(false, true, true)), vec3<bool>(false, false, false)), vec3<i32>(~39168i, 1i, 1i)));
}

