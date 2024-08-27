struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
    c: u32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: Struct_2, arg_3: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_3.a.x), -527f)));
    var_0 = arg_3.a.yy;
    var_0 = arg_3.a.zz;
    let var_1 = arg_3;
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_3.a.x, arg_2.d.x), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1510f, 285f), var_1.a.yx)), true)) + _wgslsmith_f_op_vec2_f32(-arg_2.a.xz)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_3.a.xy, vec2<f32>(1076f, arg_3.a.x))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(f32(-1f) * -755f))))));
}

fn func_2(arg_0: f32, arg_1: vec4<u32>) -> Struct_2 {
    var var_0 = Struct_2(vec4<f32>(-1487f, 869f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(0u, _wgslsmith_f_op_f32(sign(arg_0)), Struct_2(vec4<f32>(arg_0, arg_0, arg_0, arg_0), false, u_input.b.x, vec3<f32>(108f, -860f, 469f)), Struct_1(vec3<f32>(arg_0, arg_0, arg_0), vec3<u32>(0u, arg_1.x, 1u), vec4<i32>(u_input.c.x, u_input.c.x, -2147483647i, u_input.c.x), vec2<bool>(false, true))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1227f)), _wgslsmith_f_op_f32(arg_0 - _wgslsmith_div_f32(arg_0, arg_0))))), true, u_input.b.x, vec3<f32>(_wgslsmith_f_op_f32(-arg_0), 1040f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * -726f) - _wgslsmith_f_op_f32(abs(arg_0)))))));
    let var_1 = vec4<u32>(_wgslsmith_dot_vec4_u32(u_input.b, countOneBits(vec4<u32>(10363u, var_0.c, 4294967295u, 51164u) ^ vec4<u32>(19788u, 65026u, arg_1.x, u_input.a))), arg_1.x, ~u_input.b.x, ~_wgslsmith_sub_u32(arg_1.x, u_input.b.x ^ 4294967295u));
    var_0 = Struct_2(vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2039f * var_0.a.x))), _wgslsmith_f_op_f32(min(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.x + 263f)))), var_0.a.x), var_0.b, ~0u, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.d) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 1000f, var_0.a.x)), _wgslsmith_f_op_vec3_f32(var_0.a.wyy - var_0.d))))));
    let var_2 = u_input.c.x;
    var var_3 = !select((any(vec2<bool>(true, true)) & var_0.b) & (true && any(vec4<bool>(var_0.b, var_0.b, var_0.b, false))), true && var_0.b, all(vec2<bool>(true, var_0.b & var_0.b)));
    return Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-arg_0)), 958f, _wgslsmith_f_op_f32(ceil(var_0.a.x)), arg_0), var_0.b & (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.d.x)) - arg_0) > arg_0), min(~var_0.c ^ (4294967295u << (0u % 32u)), 4294967295u), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(232f, -833f, _wgslsmith_f_op_f32(f32(-1f) * -166f)), vec3<f32>(_wgslsmith_div_f32(1147f, arg_0), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(var_0.a.x, 176f, false)), arg_0))))));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: Struct_2, arg_3: vec2<bool>) -> vec3<f32> {
    var var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(394f, 1208f))) - -1217f), 1332f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2.a.x))))));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(sign(arg_0.d.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1029f), -535f) + arg_1))));
    var var_1 = arg_2.d;
    var_0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(175f - arg_1) - _wgslsmith_div_f32(368f, 1136f)), -1000f))));
    var_0 = _wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_2.d.x + arg_2.a.x))), (~u_input.b & abs(vec4<u32>(35612u, 35807u, u_input.b.x, 20738u))) ^ vec4<u32>(~arg_0.c, 67635u, select(u_input.a, u_input.a, true), arg_0.c << (37352u % 32u))).d.yx + vec2<f32>(_wgslsmith_f_op_f32(func_3(arg_2.c, 328f, arg_2, Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a.x, 1209f, 533f)), u_input.b.zyx, vec4<i32>(30948i, u_input.c.x, 58510i, u_input.c.x), arg_3))), _wgslsmith_f_op_f32(-func_2(-595f, u_input.b).d.x)));
    return vec3<f32>(arg_2.d.x, arg_1, _wgslsmith_f_op_f32(-var_0.x));
}

fn func_5(arg_0: vec3<f32>, arg_1: vec2<u32>) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.yz) * vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -220f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1396f)))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(2451f, 598f, arg_0.x, var_0.x) - vec4<f32>(-1307f, 1277f, var_0.x, arg_0.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1629f, var_0.x, var_0.x, -529f))) - vec4<f32>(arg_0.x, 722f, var_0.x, 766f)))), all(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true)), arg_1.x, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(arg_0.x, arg_0.x)))) + -688f), arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_0.x, -1284f))) + 1f)));
    let var_2 = _wgslsmith_clamp_vec2_i32(-u_input.c.yw, -(firstLeadingBit(abs(vec2<i32>(0i, u_input.c.x))) | max(select(vec2<i32>(-1i, u_input.c.x), vec2<i32>(u_input.c.x, u_input.c.x), false), u_input.c.zx)), vec2<i32>(-1i) * -(-vec2<i32>(0i, -29123i) << (arg_1 % vec2<u32>(32u))));
    var_1 = Struct_2(vec4<f32>(648f, var_1.d.x, _wgslsmith_f_op_f32(abs(arg_0.x)), _wgslsmith_f_op_f32(min(var_1.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(479f, var_1.a.x, true)), _wgslsmith_f_op_f32(func_3(1u, -1321f, Struct_2(vec4<f32>(arg_0.x, 120f, 563f, var_1.d.x), var_1.b, var_1.c, var_1.a.zwz), Struct_1(vec3<f32>(var_1.d.x, -333f, 300f), vec3<u32>(u_input.b.x, 1u, arg_1.x), u_input.c, vec2<bool>(var_1.b, var_1.b)))))))), !(!(_wgslsmith_f_op_f32(var_0.x + arg_0.x) < _wgslsmith_f_op_f32(f32(-1f) * -570f))), 16555u, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(242f, var_0.x, var_1.a.x), arg_0)), _wgslsmith_f_op_vec3_f32(ceil(arg_0)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.a.wyz))))));
    var var_3 = var_1.b;
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(418f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1251f, var_1.a.x))))) * _wgslsmith_f_op_vec2_f32(-arg_0.yy));
}

fn func_1() -> i32 {
    let var_0 = vec3<i32>(2147483647i, -22344i, _wgslsmith_add_i32(u_input.c.x, reverseBits((i32(-1i) * -2147483647i) >> (~u_input.b.x % 32u))));
    var var_1 = _wgslsmith_f_op_vec2_f32(func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(258f * -261f), _wgslsmith_f_op_f32(f32(-1f) * -796f), _wgslsmith_div_f32(-1395f, 2199f))) * _wgslsmith_f_op_vec3_f32(func_4(Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-491f, 1313f, -667f, -715f) * vec4<f32>(989f, 493f, 1213f, -486f)), true, ~4320u, vec3<f32>(-1000f, -1690f, 313f)), -370f, func_2(-810f, u_input.b), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(true, false))))), vec2<u32>(~u_input.a, 75511u)));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.x, var_1.x)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-423f, -760f) + vec2<f32>(var_1.x, var_1.x)))))));
    let var_2 = vec4<i32>(var_0.x, var_0.x, 1i, _wgslsmith_mult_i32(u_input.c.x, u_input.c.x));
    var_1 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, 1530f) + vec2<f32>(var_1.x, var_1.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, -1766f)))), func_2(var_1.x, select(abs(u_input.b), u_input.b, any(vec4<bool>(true, true, true, true)))).a.ww)));
    return 35438i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = -16065i;
    var_0 = ~u_input.c.x ^ min(u_input.c.x, -10837i);
    var var_1 = -42180i;
    var_0 = _wgslsmith_div_i32(-u_input.c.x, ~_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(~u_input.c, vec4<i32>(-22681i, 20650i, 1i, u_input.c.x)), 1291i, _wgslsmith_mult_i32(-u_input.c.x, -u_input.c.x)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(202f, _wgslsmith_f_op_vec3_f32(func_4(Struct_2(vec4<f32>(-1500f, 783f, 1000f, -1800f), false, 4294967295u, vec3<f32>(-1000f, -1935f, -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1066f), Struct_2(vec4<f32>(843f, 187f, -1732f, -583f), true, u_input.b.x, vec3<f32>(-1273f, 1000f, 148f)), vec2<bool>(true, true))).x)) - _wgslsmith_f_op_f32(f32(-1f) * -185f)));
    let var_3 = Struct_1(vec3<f32>(293f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1596f), func_2(-1275f, vec4<u32>(u_input.b.x, 16950u, u_input.b.x, 0u)).d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -103f))), vec3<u32>(u_input.a, ~(~max(u_input.b.x, u_input.a)), _wgslsmith_sub_u32(u_input.a, u_input.b.x)), reverseBits(select(_wgslsmith_add_vec4_i32(u_input.c >> (vec4<u32>(25363u, 0u, u_input.b.x, u_input.b.x) % vec4<u32>(32u)), vec4<i32>(-1i, u_input.c.x, u_input.c.x, 2267i) | u_input.c), vec4<i32>(-u_input.c.x, _wgslsmith_sub_i32(-2147483647i, u_input.c.x), reverseBits(u_input.c.x), ~6070i), !all(vec3<bool>(false, false, true)))), !(!(!select(vec2<bool>(false, true), vec2<bool>(true, false), false))));
    var var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_3.a * vec3<f32>(var_3.a.x, -1000f, var_3.a.x))) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_3.a.x, var_3.a.x, 1000f), vec3<f32>(-325f, var_3.a.x, var_3.a.x)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_3.a + vec3<f32>(var_3.a.x, var_3.a.x, -284f)) - func_2(var_3.a.x, u_input.b).d) - vec3<f32>(_wgslsmith_f_op_f32(func_3(0u, -181f, Struct_2(vec4<f32>(var_3.a.x, var_3.a.x, 1718f, var_3.a.x), var_3.d.x, var_3.b.x, vec3<f32>(-708f, var_3.a.x, 566f)), var_3)), -216f, var_3.a.x))), min(vec3<u32>(var_3.b.x, 4294967295u, _wgslsmith_div_u32(4294967295u, u_input.a)), ~u_input.b.xyx) << (vec3<u32>(~var_3.b.x, 1u << (_wgslsmith_dot_vec2_u32(vec2<u32>(4140u, var_3.b.x), vec2<u32>(u_input.a, var_3.b.x)) % 32u), var_3.b.x) % vec3<u32>(32u)), -(~(-vec4<i32>(u_input.c.x, 38370i, u_input.c.x, u_input.c.x))), !select(select(var_3.d, select(vec2<bool>(var_3.d.x, var_3.d.x), vec2<bool>(var_3.d.x, var_3.d.x), vec2<bool>(var_3.d.x, var_3.d.x)), all(vec4<bool>(var_3.d.x, var_3.d.x, var_3.d.x, true))), select(!vec2<bool>(var_3.d.x, var_3.d.x), var_3.d, all(vec3<bool>(false, false, false))), select(!vec2<bool>(var_3.d.x, true), !var_3.d, vec2<bool>(false, false))));
    var_4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.c.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(func_2(522f, u_input.b).c, 4294967295u, 1u, u_input.b.x), select(vec4<u32>(4294967295u, _wgslsmith_dot_vec2_u32(var_3.b.zy, var_4.b.xz), _wgslsmith_sub_u32(4294967295u, u_input.b.x), var_3.b.x), firstTrailingBit(abs(vec4<u32>(0u, var_3.b.x, 4681u, var_4.b.x))), var_3.c.x == (var_3.c.x ^ -59349i))), vec2<f32>(-1000f, _wgslsmith_f_op_f32(264f * 802f)), -2452f);
}

