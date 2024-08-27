struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec4<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<i32>,
    d: vec2<u32>,
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<i32>, arg_2: Struct_1) -> f32 {
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.a), 1394f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_2.a + 1136f), _wgslsmith_f_op_f32(arg_2.a * -760f))) - 357f)))));
}

fn func_3() -> f32 {
    let var_0 = u_input.d.x ^ (_wgslsmith_clamp_i32(u_input.d.x, _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(16597i, 13412i, 1i)), vec3<i32>(83484i, -2147483647i, u_input.c) >> (vec3<u32>(u_input.a, 4294967295u, u_input.e.x) % vec3<u32>(32u))), 1i) | _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x ^ u_input.c, u_input.d.x, -u_input.d.x), vec3<i32>(3432i, 82169i, 2147483647i)));
    var var_1 = Struct_2(vec3<bool>(all(select(vec4<bool>(true, false, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), false), true)), true | (countOneBits(9450i) != var_0), true), Struct_1(-654f), Struct_1(-1000f));
    var_1 = Struct_2(!(!vec3<bool>(var_1.a.x || false, false, var_1.a.x)), var_1.c, Struct_1(var_1.b.a));
    let var_2 = Struct_2(!select(select(var_1.a, !var_1.a, true), var_1.a, true | var_1.a.x), var_1.b, Struct_1(-826f));
    return var_2.c.a;
}

fn func_2(arg_0: vec2<f32>) -> bool {
    let var_0 = Struct_2(vec3<bool>(true, true, true), Struct_1(_wgslsmith_f_op_f32(-arg_0.x)), Struct_1(_wgslsmith_f_op_f32(-arg_0.x)));
    let var_1 = var_0.b;
    let var_2 = arg_0;
    let var_3 = 300f;
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-846f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(312f, -117f))), -687f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.a * _wgslsmith_f_op_f32(1206f - _wgslsmith_f_op_f32(-var_2.x)))));
    return !(u_input.c != u_input.d.x);
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: bool) -> bool {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1226f) + 797f) * arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + arg_1.x))));
    let var_1 = !select(!vec3<bool>(all(vec3<bool>(true, true, false)), all(vec4<bool>(true, true, true, arg_2)), !arg_2), select(!select(vec3<bool>(true, arg_2, arg_2), vec3<bool>(false, arg_2, false), false), select(select(vec3<bool>(arg_2, true, arg_2), vec3<bool>(arg_2, false, arg_2), vec3<bool>(arg_2, true, false)), vec3<bool>(false, arg_2, arg_2), false), select(!vec3<bool>(true, arg_2, false), !vec3<bool>(true, arg_2, arg_2), !vec3<bool>(true, arg_2, arg_2))), select(vec3<bool>(arg_2 & false, true, !arg_2), vec3<bool>(arg_2 && arg_2, false, any(vec3<bool>(true, true, arg_2))), u_input.d.x < 9553i));
    return !arg_2 | (any(vec3<bool>(true, 0u > u_input.a, !var_1.x)) | any(!vec4<bool>(true, false, var_1.x, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(~(~u_input.a) > _wgslsmith_div_u32(31958u, u_input.a)));
    let var_1 = func_4(-vec3<i32>(abs(u_input.c), 0i, _wgslsmith_add_i32(~u_input.d.x, u_input.c)), vec3<f32>(_wgslsmith_f_op_f32(1f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-678f - -659f), _wgslsmith_f_op_f32(func_1(vec2<bool>(true, var_0), vec3<i32>(u_input.d.x, -1i, -41460i), Struct_1(-317f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(2539f)))), 270f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1208f * -856f))), any(vec4<bool>(true, func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-407f, 950f) + vec2<f32>(110f, -174f))), !(var_0 & var_0), false)));
    var var_2 = vec2<bool>(func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(782f, -1701f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(721f, 399f))))), any(select(select(vec2<bool>(var_1, var_1), vec2<bool>(true, false), var_0), !vec2<bool>(true, var_1), !vec2<bool>(var_1, false))) && (false && var_0));
    let var_3 = select(select(vec2<bool>(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(964f, 1005f))), _wgslsmith_add_i32(-15113i, u_input.d.x) < u_input.c), !vec2<bool>(any(vec3<bool>(false, true, var_2.x)), false), !select(vec2<bool>(var_2.x, false), vec2<bool>(var_2.x, var_1), var_2.x || false)), vec2<bool>(var_2.x, !any(vec2<bool>(true, true))), !var_1);
    var_2 = !vec2<bool>(true, all(vec2<bool>(true, var_2.x)));
    var var_4 = Struct_3(Struct_2(select(!vec3<bool>(var_1, true, true), select(!vec3<bool>(var_3.x, var_2.x, true), select(vec3<bool>(true, true, var_2.x), vec3<bool>(var_3.x, var_0, false), vec3<bool>(var_2.x, var_2.x, var_3.x)), var_3.x || true), true), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-471f - -1211f), 1f)), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-508f)))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(133f * -1000f), _wgslsmith_f_op_f32(select(-920f, -423f, true)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(135f)))))), _wgslsmith_f_op_f32(func_1(select(var_3, vec2<bool>(true, var_2.x), !var_2.x), -vec3<i32>(-2147483647i, u_input.d.x, 1012i), Struct_1(_wgslsmith_f_op_f32(min(1645f, 373f)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-493f, _wgslsmith_f_op_f32(func_1(var_3, vec3<i32>(u_input.d.x, u_input.c, 21416i), Struct_1(-413f))), _wgslsmith_f_op_f32(func_3())) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -294f), _wgslsmith_f_op_f32(abs(-1745f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2248f, 695f)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, -1000f, -719f, 268f), vec4<f32>(-1444f, -1803f, -572f, 165f), vec4<bool>(true, var_1, true, false))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 830f, 1928f, -917f)) + vec4<f32>(-191f, -1705f, 1610f, 474f))))), Struct_1(-1086f));
    var var_5 = false;
    let x = u_input.a;
    s_output = StorageBuffer(-282f, var_4.d.x, ~abs(vec4<i32>(u_input.c, 0i, 26039i, 16286i) & (vec4<i32>(u_input.d.x, u_input.c, -7940i, 54131i) | vec4<i32>(0i, u_input.d.x, u_input.d.x, u_input.d.x))), u_input.e);
}

