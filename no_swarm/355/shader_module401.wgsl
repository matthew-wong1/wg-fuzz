struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(arg_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-597f, arg_1.b, arg_1.b, arg_1.a.x))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.a))), 1028f, arg_1.c);
    let var_1 = var_0;
    var var_2 = -firstLeadingBit(-(~_wgslsmith_clamp_i32(-30487i, 2147483647i, 0i)));
    let var_3 = false;
    var_2 = ~abs(i32(-1i) * -countOneBits(2147483647i));
    return -2147483647i < (-_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(1i, -2147483647i), vec2<i32>(-25933i, 1i)), vec2<i32>(1i, 1i)) >> (1u % 32u));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec2<u32>, arg_3: Struct_1) -> f32 {
    var var_0 = select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, !arg_0.c.x), arg_1 & (arg_2.x <= 59790u)), !arg_3.c.wyw, vec3<bool>(func_3(Struct_1(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_3.b, -1000f, arg_3.a.x, -496f))), _wgslsmith_f_op_f32(abs(arg_0.b)), arg_0.c), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1941f, 1000f, 572f) * vec4<f32>(arg_3.b, 363f, arg_3.b, arg_3.a.x)), _wgslsmith_div_f32(509f, arg_3.b), !arg_0.c)), _wgslsmith_dot_vec2_i32(-vec2<i32>(-2147483647i, 1i), max(vec2<i32>(36670i, -2135i), vec2<i32>(56552i, -2147483647i))) >= (1i ^ select(0i, 1i, arg_0.c.x)), arg_3.c.x));
    let var_1 = arg_0;
    var_0 = !select(!vec3<bool>(all(vec2<bool>(true, arg_1)), var_1.c.x, true), select(vec3<bool>(true, true, any(arg_0.c)), var_1.c.yxz, var_1.c.wxw), !select(arg_3.c.zyx, arg_0.c.zxx, select(vec3<bool>(true, arg_1, false), vec3<bool>(false, true, true), false)));
    var var_2 = Struct_1(arg_0.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1287f - -461f)), arg_0.b, var_0.x)))), var_1.c);
    var_0 = !select(arg_3.c.wxx, vec3<bool>(func_3(Struct_1(vec4<f32>(831f, arg_3.a.x, arg_3.b, 1000f), 778f, var_2.c), arg_0), any(!var_2.c.wx), true), select(select(arg_0.c.zzz, vec3<bool>(arg_3.c.x, var_0.x, true), true), !arg_3.c.wzw, var_1.c.yxw));
    return 1000f;
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: i32) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(286f, 541f, -153f, arg_1)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -907f, 1530f, 325f)))))), 1f, select(!vec4<bool>(true, false, any(vec2<bool>(true, true)), true), vec4<bool>(any(vec2<bool>(true, false)) || any(vec3<bool>(true, false, false)), _wgslsmith_f_op_f32(func_2(Struct_1(vec4<f32>(-336f, arg_1, -716f, 1000f), arg_1, vec4<bool>(false, false, true, true)), false, vec2<u32>(4294967295u, u_input.a), Struct_1(vec4<f32>(arg_1, arg_1, arg_1, 836f), -1338f, vec4<bool>(false, true, false, true)))) > 985f, true, true), all(vec3<bool>(true, true, true))));
    var var_1 = 38213u;
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, -1440f, 101f, arg_1) + vec4<f32>(-1020f, var_0.a.x, 710f, arg_1)))), _wgslsmith_div_vec4_f32(var_0.a, var_0.a))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-122f)) - _wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_f_op_f32(select(arg_1, _wgslsmith_f_op_f32(-arg_1), all(vec3<bool>(true, var_0.c.x, var_0.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-arg_1)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(-var_0.a.x)) * _wgslsmith_f_op_f32(-var_0.b)) + -653f), !(!var_0.c));
    var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b + -185f) + _wgslsmith_f_op_f32(ceil(var_0.b)))), -346f, _wgslsmith_f_op_f32(496f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b * arg_1))), 448f), _wgslsmith_f_op_f32(max(var_0.a.x, _wgslsmith_f_op_f32(601f - _wgslsmith_f_op_f32(func_2(Struct_1(vec4<f32>(1337f, 796f, 194f, var_0.a.x), -471f, vec4<bool>(var_0.c.x, var_0.c.x, false, var_0.c.x)), !var_0.c.x, _wgslsmith_div_vec2_u32(vec2<u32>(0u, arg_0), vec2<u32>(u_input.a, 0u)), Struct_1(var_0.a, 371f, var_0.c)))))), !(!(!(!vec4<bool>(var_0.c.x, var_0.c.x, false, var_0.c.x)))));
    let var_2 = abs(_wgslsmith_add_i32(_wgslsmith_mult_i32(-818i, ~_wgslsmith_sub_i32(arg_2, arg_2)), _wgslsmith_dot_vec3_i32(~(vec3<i32>(arg_2, arg_2, 31357i) >> (vec3<u32>(1u, 0u, 68760u) % vec3<u32>(32u))), abs(vec3<i32>(-1i, arg_2, arg_2) & vec3<i32>(arg_2, arg_2, 0i)))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(ceil(var_0.a.x)), arg_1, 1629f, arg_1), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-433f, arg_1, var_0.a.x, arg_1)) - _wgslsmith_f_op_vec4_f32(-var_0.a))), vec4<bool>(all(var_0.c.zw), var_0.c.x, var_0.c.x, select(22889u >= arg_0, var_0.c.x || var_0.c.x, true)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1353f), _wgslsmith_f_op_f32(min(108f, arg_1)))), vec4<bool>(func_3(Struct_1(_wgslsmith_f_op_vec4_f32(-var_0.a), _wgslsmith_f_op_f32(1409f * 103f), vec4<bool>(var_0.c.x, true, false, false)), Struct_1(vec4<f32>(var_0.a.x, var_0.a.x, -378f, 1000f), arg_1, var_0.c)), !func_3(Struct_1(var_0.a, var_0.a.x, vec4<bool>(false, true, false, var_0.c.x)), Struct_1(var_0.a, var_0.a.x, var_0.c)), all(var_0.c.xx), var_0.c.x));
}

fn func_4(arg_0: vec2<f32>, arg_1: bool, arg_2: i32, arg_3: Struct_1) -> vec4<f32> {
    return vec4<f32>(_wgslsmith_f_op_f32(-929f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1387f * _wgslsmith_f_op_f32(f32(-1f) * -1286f)))), func_1(reverseBits(0u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), -1i >> (u_input.a % 32u)).a.x, arg_3.b, func_1(83448u, arg_3.a.x, arg_2).b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-895f, 315f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 350f) * vec2<f32>(-588f, -1535f)), select(vec2<bool>(true, false), vec2<bool>(true, true), true))), true, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-6295i, 1i, -32282i, -1i)), vec4<i32>(-2147483647i, -86884i, -2147483647i, 25757i)), func_1(1u, _wgslsmith_f_op_f32(-464f - -906f), countOneBits(-1i))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1417f, 1f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -917f) * _wgslsmith_f_op_f32(f32(-1f) * -1516f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(834f * -313f)))), vec4<bool>(true, false, -1156f < _wgslsmith_f_op_f32(func_2(Struct_1(vec4<f32>(1138f, -1283f, 1381f, -1358f), 2185f, vec4<bool>(false, true, true, false)), false, ~vec2<u32>(u_input.a, u_input.a), Struct_1(vec4<f32>(-1228f, -1332f, -1879f, -373f), 307f, vec4<bool>(false, false, true, true)))), true));
    var_0 = Struct_1(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(917f, var_0.b))), !vec4<bool>(false, var_0.c.x, var_0.c.x, true));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(sign(var_0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -857f)) * _wgslsmith_f_op_f32(-var_0.a.x)), vec4<bool>(!any(var_0.c.yzw), !(~19014i >= _wgslsmith_dot_vec3_i32(vec3<i32>(27008i, 60462i, 65930i), vec3<i32>(1i, 13871i, 2147483647i))), any(var_0.c.yy) && true, var_0.c.x));
    var_0 = Struct_1(func_1(1u, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1461f), 130f)), _wgslsmith_sub_i32(41541i, select(-2147483647i, -2147483647i, true) >> (reverseBits(0u) % 32u))).a, func_1(0u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-721f, -1115f)) * 679f), -1268f), ~(-(~0i))).a.x, vec4<bool>(!all(select(var_1.c.yxw, var_0.c.www, var_0.c.x)), false, any(vec3<bool>(!var_0.c.x, true, var_1.c.x)), true));
    var var_2 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(1i, _wgslsmith_div_i32(_wgslsmith_mod_i32(firstTrailingBit(46529i), _wgslsmith_dot_vec4_i32(vec4<i32>(561i, 23836i, 0i, 0i), vec4<i32>(43318i, -1i, 2147483647i, 0i))), -_wgslsmith_mod_i32(1075i, -2147483647i)), 0i, -(i32(-1i) * -2147483647i)));
}

