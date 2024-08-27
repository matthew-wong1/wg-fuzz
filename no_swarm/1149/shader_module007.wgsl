struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<bool>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 12>;

var<private> global1: bool;

var<private> global2: vec2<u32> = vec2<u32>(0u, 10311u);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<i32>) -> f32 {
    var var_0 = true;
    var var_1 = !(!select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)))));
    global0 = array<vec4<bool>, 12>();
    let var_2 = -5866i;
    let var_3 = Struct_1(var_1.x, -min(-41910i, u_input.e.x), select(!select(select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(true, true), vec2<bool>(var_1.x, true)), select(vec2<bool>(false, true), vec2<bool>(var_1.x, var_1.x), var_1.x), vec2<bool>(var_1.x, true)), vec2<bool>(true, false), !(!(!vec2<bool>(var_1.x, true)))), !select(select(select(vec3<bool>(true, true, false), vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(false, var_1.x, var_1.x)), vec3<bool>(true, true, true), select(vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(var_1.x, false, false), var_1.x)), !select(vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(true, true, var_1.x), vec3<bool>(false, var_1.x, var_1.x)), !select(vec3<bool>(true, var_1.x, true), vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(var_1.x, var_1.x, true))));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-274f * -911f))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-1000f))))), _wgslsmith_f_op_f32(sign(-754f))) * 352f);
}

fn func_2(arg_0: vec3<f32>, arg_1: i32, arg_2: vec4<f32>) -> Struct_1 {
    var var_0 = Struct_1(true, -41220i, select(vec2<bool>(any(vec2<bool>(true, true)), any(vec2<bool>(true, true))), vec2<bool>(true, true), select(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), !select(vec2<bool>(true, true), vec2<bool>(true, true), false), -591f >= _wgslsmith_f_op_f32(abs(arg_2.x)))), select(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), arg_1 >= arg_1)), select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), true), !any(vec4<bool>(true, true, true, true))));
    global0 = array<vec4<bool>, 12>();
    let var_1 = ~vec4<i32>(arg_1, 8043i, u_input.a, u_input.a);
    let var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(arg_2.x, -1739f)), 914f))) * _wgslsmith_f_op_f32(ceil(arg_0.x)))));
    let var_3 = Struct_2(!vec2<bool>(true, global2.x < ~u_input.c.x), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_2.x)), _wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec3_i32(vec3<i32>(26759i, var_1.x, arg_1), vec3<i32>(618i, 30144i, var_1.x)), vec4<i32>(u_input.a, u_input.a, var_1.x, 0i) >> (vec4<u32>(66482u, 21027u, u_input.d, 4294967295u) % vec4<u32>(32u))))))), Struct_1(true, var_1.x, var_0.c, var_0.d));
    return var_3.c;
}

fn func_1(arg_0: u32) -> f32 {
    let var_0 = func_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-965f, 1153f, 444f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(345f, 199f, 189f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 137f, -237f) - vec3<f32>(-812f, -1007f, 955f))) + vec3<f32>(_wgslsmith_f_op_f32(ceil(-393f)), _wgslsmith_f_op_f32(621f + -124f), _wgslsmith_div_f32(-449f, -1323f)))), -u_input.a, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-617f, -1059f)), _wgslsmith_f_op_f32(round(-1457f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -306f)), 987f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(307f, 646f)), _wgslsmith_f_op_f32(f32(-1f) * -215f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(606f, 829f, -281f, -493f)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-817f, -870f, 318f, -256f), vec4<f32>(-2003f, 951f, 1533f, -199f), vec4<bool>(false, true, true, false))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 599f, -333f, -1000f) * vec4<f32>(1000f, -1208f, -846f, 969f))))))));
    let var_1 = _wgslsmith_clamp_u32(7087u, u_input.b, _wgslsmith_mult_u32(4294967295u, _wgslsmith_dot_vec3_u32(~select(vec3<u32>(arg_0, u_input.b, arg_0), vec3<u32>(arg_0, u_input.d, global2.x), vec3<bool>(var_0.c.x, true, var_0.d.x)), reverseBits(vec3<u32>(59500u, arg_0, global2.x)) | ~vec3<u32>(arg_0, u_input.b, arg_0))));
    var var_2 = Struct_3(select(firstTrailingBit(u_input.e), ~vec2<i32>(u_input.a, select(u_input.a, -47606i, true)), any(!var_0.d) | all(select(vec4<bool>(false, var_0.d.x, true, true), vec4<bool>(true, var_0.c.x, var_0.c.x, var_0.a), global0[_wgslsmith_index_u32(arg_0, 12u)]))));
    var var_3 = var_0;
    let var_4 = ~u_input.b;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(344f)))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1990f), _wgslsmith_f_op_f32(select(-1000f, 1808f, var_3.d.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = false | !(!all(vec2<bool>(false, false)));
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-812f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-756f)) + -532f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(u_input.c.x))))), _wgslsmith_f_op_f32(round(907f)), _wgslsmith_f_op_f32(-521f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(global2.x)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(391f + 290f))))), 1601f);
    let var_1 = select(vec2<bool>(false, any(select(vec3<bool>(false, true, true), func_2(vec3<f32>(var_0.x, 511f, var_0.x), u_input.e.x, vec4<f32>(-1562f, 610f, var_0.x, var_0.x)).d, vec3<bool>(true, true, true)))), func_2(vec3<f32>(-3034f, -638f, var_0.x), 35642i, var_0).c, func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, var_0.x, -749f), vec3<f32>(var_0.x, 160f, -1506f)) * var_0.xwx) * var_0.wwy), _wgslsmith_mod_i32(32707i, _wgslsmith_div_i32(~u_input.e.x, u_input.a)), var_0).c);
    var var_2 = vec2<bool>(!all(vec2<bool>(any(global0[_wgslsmith_index_u32(u_input.b, 12u)]), false)), !var_1.x);
    global1 = var_2.x;
    global1 = any(select(vec4<bool>(true, true, any(vec4<bool>(false, false, true, false)), false), global0[_wgslsmith_index_u32(0u, 12u)], !select(vec4<bool>(false, false, var_1.x, true), vec4<bool>(true, false, true, true), global0[_wgslsmith_index_u32(global2.x, 12u)]))) && (abs(_wgslsmith_sub_u32(56377u, ~u_input.c.x)) != 4294967295u);
    global1 = func_2(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -539f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.x)) - var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))), firstTrailingBit(-1i), var_0).d.x;
    global1 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(571f, u_input.c, max(u_input.d, _wgslsmith_sub_u32(1u, min(u_input.b, min(u_input.b, u_input.d)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.x, var_0.x)) + 1f)) + 286f));
}

