struct Struct_1 {
    a: vec4<f32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<bool>,
    d: i32,
    e: bool,
}

struct Struct_3 {
    a: bool,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -688f;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec4<f32>) -> f32 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1607f))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -491f))));
    var var_0 = -1834f;
    return _wgslsmith_f_op_f32(arg_2.x * arg_0.a.x);
}

fn func_2(arg_0: u32) -> vec4<f32> {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(vec4<f32>(433f, 173f, 377f, -1653f), vec2<bool>(true, true)), 6056i, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-879f, -995f, 1130f, -1983f))))) + 250f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1595f, _wgslsmith_f_op_f32(-1000f - 1472f))), _wgslsmith_f_op_f32(select(-821f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-111f + 412f)), (arg_0 < u_input.a) == all(vec2<bool>(true, true))))));
    let var_0 = Struct_3(true, select(vec2<bool>(all(vec4<bool>(true, true, true, true)), any(vec4<bool>(true, true, true, true))), vec2<bool>(true, true), vec2<bool>(any(vec4<bool>(true, true, true, true)), true)));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1348f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(vec4<f32>(-332f, -261f, -1368f, -781f), var_0.b), 3635i, vec4<f32>(1000f, 683f, -645f, -880f))) + -1469f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(845f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(876f, 1595f, -1000f, 1463f), vec4<f32>(-392f, 1297f, -299f, 505f))), vec2<bool>(var_0.b.x, var_0.b.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(-1694i, u_input.b.x), abs(u_input.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1260f, 1436f, -916f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-964f, 1240f, -711f, 1325f) - vec4<f32>(912f, -1061f, 1324f, 111f)))))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(vec4<f32>(1f, 1f, 1f, 1f), !vec2<bool>(var_0.b.x, var_0.b.x)), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(41920i, u_input.c.x), -(u_input.c.x | u_input.c.x), u_input.b.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(-545f, 465f)), 1355f, -1060f, _wgslsmith_f_op_f32(1286f + 545f)) + vec4<f32>(485f, 1285f, _wgslsmith_f_op_f32(f32(-1f) * -257f), _wgslsmith_f_op_f32(-573f + -1000f))))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-332f, _wgslsmith_f_op_f32(-1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(560f + 174f), 735f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-277f + -648f)))), vec2<bool>(-1i > _wgslsmith_div_i32(u_input.c.x, ~0i), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -893f))) < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-359f - -1000f)))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.a) * vec4<f32>(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(func_3(Struct_1(var_1.a, var_0.b), u_input.c.x, vec4<f32>(var_1.a.x, 319f, var_1.a.x, var_1.a.x))), 508f, _wgslsmith_f_op_f32(func_3(Struct_1(var_1.a, vec2<bool>(var_1.b.x, var_1.b.x)), 1i, var_1.a)))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-var_1.a))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.a * vec4<f32>(var_1.a.x, var_1.a.x, -450f, 1498f)), _wgslsmith_f_op_vec4_f32(-var_1.a))))) * _wgslsmith_f_op_vec4_f32(-var_1.a));
}

fn func_1(arg_0: i32, arg_1: Struct_2) -> vec3<i32> {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-225f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.b.a.x, 423f, false)) + -265f))))));
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(func_2(0u)), select(!vec2<bool>(select(arg_1.b.b.x, arg_1.c.x, true), arg_1.b.b.x), vec2<bool>(true, false), !arg_1.b.b));
    var var_1 = countOneBits(-_wgslsmith_dot_vec2_i32(-vec2<i32>(-39618i, 9077i), countOneBits(u_input.c.yx) >> (~vec2<u32>(59845u, u_input.a) % vec2<u32>(32u))));
    global0 = var_0.a.x;
    global0 = 1046f;
    return _wgslsmith_mult_vec3_i32(~u_input.c, max(vec3<i32>(u_input.c.x, 0i, min(arg_0, 2147483647i)), reverseBits(min(vec3<i32>(-2147483647i, arg_0, u_input.b.x), vec3<i32>(17830i, arg_1.a, 2147483647i))))) >> (firstLeadingBit(_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(1u, 1u, 5484u)), vec3<u32>(u_input.a, u_input.a, u_input.a) & vec3<u32>(1u, 2617u, 29312u)), select(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 1u, u_input.a), vec3<u32>(u_input.a, u_input.a, 39619u)), firstTrailingBit(vec3<u32>(12209u, 20753u, u_input.a)), !arg_1.c))) % vec3<u32>(32u));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: bool, arg_3: bool) -> f32 {
    let var_0 = arg_0.b.a.x > _wgslsmith_f_op_f32(-arg_0.b.a.x);
    global0 = arg_0.b.a.x;
    var var_1 = vec2<bool>((~(~u_input.a) >> (61978u % 32u)) > u_input.a, false);
    let var_2 = arg_0;
    let var_3 = Struct_2(select(arg_1.x, var_2.d, !(6060u == u_input.a) || true), Struct_1(_wgslsmith_f_op_vec4_f32(arg_0.b.a - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-var_2.b.a)))), select(vec2<bool>(true, true), !var_2.c.zz, false)), select(!vec3<bool>(select(true, var_1.x, true), !var_0, arg_3), !(!(!vec3<bool>(arg_2, arg_3, arg_0.b.b.x))), vec3<bool>(arg_2, !var_2.c.x, false)), 55164i, all(arg_0.c));
    return _wgslsmith_f_op_f32(-var_2.b.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -2214f;
    global0 = -474f;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_4(Struct_2(u_input.c.x, Struct_1(vec4<f32>(-1000f, -675f, -1715f, 929f), vec2<bool>(false, false)), vec3<bool>(true, false, true), u_input.b.x, true), func_1(2147483647i, Struct_2(u_input.b.x, Struct_1(vec4<f32>(292f, 1931f, -880f, 1902f), vec2<bool>(true, true)), vec3<bool>(false, true, false), u_input.b.x, true)), true, any(vec3<bool>(true, true, true)))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-329f))))) - -286f);
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-144f, -1026f, -1000f, -1063f)))) - _wgslsmith_f_op_vec4_f32(func_2(min(~u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, 39827u, 17903u), vec4<u32>(4294967295u, 123628u, u_input.a, 1u)))))), !select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))), !select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), true));
    var_0 = Struct_1(var_0.a, var_0.b);
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, 395f, _wgslsmith_f_op_f32(trunc(var_0.a.x)), var_0.a.x))), !var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.wz, _wgslsmith_f_op_f32(f32(-1f) * -844f), u_input.a);
}

