struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec2<f32>,
    d: vec4<i32>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: f32,
    c: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_2,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    let var_0 = ~vec4<u32>(firstLeadingBit(firstLeadingBit(24982u)), 4294967295u, _wgslsmith_dot_vec4_u32(max(vec4<u32>(13254u, u_input.b.x, 1u, u_input.a), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.a, 0u), vec4<u32>(1u, 5893u, u_input.b.x, 1u))), vec4<u32>(u_input.a << (2581u % 32u), u_input.a, u_input.b.x, u_input.b.x)), _wgslsmith_sub_u32(u_input.b.x | 0u, u_input.a));
    let var_1 = Struct_1(select(vec2<bool>(!any(vec2<bool>(true, false)), true), !(!select(vec2<bool>(true, false), vec2<bool>(false, false), true)), select(vec2<bool>(true, true), vec2<bool>(all(vec2<bool>(true, true)), true), vec2<bool>(true, true))));
    let var_2 = !(!(!(!var_1.a)));
    let var_3 = Struct_4(Struct_1(!vec2<bool>(var_1.a.x && var_2.x, var_2.x)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-224f, -1000f, -1222f), vec3<f32>(182f, -367f, -1116f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-291f, 1000f, 2021f)))))), vec3<f32>(-295f, -1000f, -700f))), Struct_2(-(~(-vec2<i32>(1i, 4645i))), var_0.yxy, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-995f, 1538f)))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-184f, -103f), vec2<f32>(936f, 207f))), vec2<bool>(var_2.x, true))), -(~vec4<i32>(1i, 1i, 1i, 1i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1239f, -167f), vec2<f32>(1079f, -128f), var_1.a.x)))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -777f), _wgslsmith_f_op_f32(f32(-1f) * -950f)))), Struct_1(var_2), countOneBits(1u));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_3.b.x)) * 1754f))) + var_3.b.x));
    return !(_wgslsmith_add_u32(1u, var_0.x) < min(var_3.c.b.x, ~(~4294967295u)));
}

fn func_2() -> f32 {
    var var_0 = Struct_3(!vec3<bool>(true, all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false))), true), _wgslsmith_f_op_f32(_wgslsmith_div_f32(149f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - -403f), !select(vec4<bool>(true, all(vec3<bool>(false, false, true)), true, any(vec2<bool>(false, true))), !select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false)), !any(vec3<bool>(true, true, true))));
    let var_1 = !var_0.c.x;
    var_0 = Struct_3(vec3<bool>(func_3(), any(!(!var_0.c)), true), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-663f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_0.b)), _wgslsmith_f_op_f32(-1429f + -185f)))))), !(!select(var_0.c, !var_0.c, vec4<bool>(true, var_0.c.x, var_1, false))));
    var var_2 = vec2<u32>(select(1u, ~u_input.a, true), _wgslsmith_clamp_u32(1u, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x, 2970u, 57306u, 31289u), vec4<u32>(71142u, 1u, 19266u, u_input.a)), firstTrailingBit(u_input.a)));
    var var_3 = Struct_2(~vec2<i32>(0i, 1i << (_wgslsmith_div_u32(u_input.a, 4294967295u) % 32u)), select(u_input.b, vec3<u32>(~min(var_2.x, var_2.x), 4294967295u, u_input.a), _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(18829u, var_2.x, 32624u, 0u)), select(vec4<u32>(7498u, u_input.b.x, 34544u, var_2.x), vec4<u32>(0u, u_input.a, var_2.x, 0u), var_0.c.x)) != var_2.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, _wgslsmith_f_op_f32(-var_0.b)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.b, -906f), vec2<f32>(1307f, var_0.b)))))), vec4<i32>(_wgslsmith_div_i32((-1i >> (var_2.x % 32u)) ^ max(-13220i, 1i), 1i), -2147483647i, _wgslsmith_mod_i32(min(35629i, -34775i), max(-1i, 2147483647i)), select(1i, countOneBits(abs(10558i)), func_3())), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, 571f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(647f, var_0.b) - vec2<f32>(-242f, -280f))), vec2<f32>(_wgslsmith_f_op_f32(var_0.b * -869f), _wgslsmith_f_op_f32(var_0.b * var_0.b))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2434f, 1627f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-981f, var_0.b) * vec2<f32>(345f, 298f))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.e.x, var_3.e.x)), _wgslsmith_f_op_f32(step(2652f, _wgslsmith_f_op_f32(var_3.e.x + var_3.e.x)))) - 1053f) + -196f);
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: Struct_4) -> f32 {
    let var_0 = Struct_1(arg_2.zy);
    let var_1 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_3.c.c.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.b.x) * arg_1.e.x))), _wgslsmith_f_op_f32(func_2()))));
    let var_2 = arg_3;
    var var_3 = !arg_2.xz;
    var_3 = select(select(select(select(select(var_0.a, vec2<bool>(arg_3.a.a.x, true), var_0.a), select(var_0.a, vec2<bool>(arg_0, false), false), !vec2<bool>(var_2.d.a.x, var_2.d.a.x)), select(vec2<bool>(false, var_0.a.x), select(vec2<bool>(true, var_2.d.a.x), vec2<bool>(true, arg_2.x), var_0.a), false), !func_3()), select(!arg_3.d.a, arg_2.yx, !var_2.a.a), !(!arg_3.d.a.x)), vec2<bool>(!(!arg_0), !(!all(vec3<bool>(false, true, var_3.x)))), all(!select(vec2<bool>(true, true), !arg_3.d.a, true)));
    return var_1.x;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: i32) -> Struct_2 {
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(-vec4<i32>(_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(40485i, -21866i)), ~vec2<i32>(-1i, 16850i)), max(0i, -16342i) << ((u_input.b.x & 4294967295u) % 32u), _wgslsmith_sub_i32(0i, firstLeadingBit(0i)), -_wgslsmith_dot_vec3_i32(vec3<i32>(37634i, -22842i, 2147483647i), vec3<i32>(1i, 62810i, -2147483647i))));
    let var_1 = func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(true, Struct_2(vec2<i32>(var_0.x, 40742i), u_input.b, vec2<f32>(-738f, 634f), var_0, vec2<f32>(774f, 1000f)), vec3<bool>(true, false, true), Struct_4(Struct_1(vec2<bool>(false, false)), vec3<f32>(349f, 1079f, -960f), Struct_2(vec2<i32>(-25670i, var_0.x), vec3<u32>(u_input.b.x, u_input.a, 4294967295u), vec2<f32>(1000f, -564f), var_0, vec2<f32>(220f, -184f)), Struct_1(vec2<bool>(true, false)), u_input.b.x))) - _wgslsmith_f_op_f32(-468f * -1512f)), _wgslsmith_f_op_f32(-317f + _wgslsmith_f_op_f32(659f - 194f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(920f, -255f)), 1507f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-477f, 1000f))))), Struct_2(var_0.xy, vec3<u32>(select(u_input.b.x, 0u, false) | u_input.b.x, ~(~u_input.a), firstLeadingBit(u_input.b.x) ^ ~u_input.b.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1000f, -171f)))), var_0, vec2<f32>(-910f, _wgslsmith_f_op_f32(-2144f - 1000f))), firstTrailingBit(firstTrailingBit(max(var_0.x, var_0.x))));
    var var_2 = Struct_3(!(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true)), -1829f, vec4<bool>(any(vec3<bool>(false, var_1.d.x != var_1.a.x, all(vec4<bool>(true, false, true, true)))), all(select(vec4<bool>(true, true, false, false), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true)), true)), true, true));
    var var_3 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(firstLeadingBit(var_0.x), ~_wgslsmith_add_i32(-1i, var_1.a.x) & 67600i, i32(-1i) * -_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, var_1.a.x), vec3<i32>(17095i, var_1.d.x, var_0.x))), 1114f);
}

