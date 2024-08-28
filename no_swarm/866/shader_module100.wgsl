struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec4<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
    c: bool,
    d: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_5 {
    a: Struct_3,
    b: bool,
    c: u32,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 2>;

var<private> global1: array<i32, 22>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: u32, arg_3: u32) -> u32 {
    global1 = array<i32, 22>();
    var var_0 = !select(vec4<bool>(true, true, true, true), vec4<bool>(true, select(true, true, true) && true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)));
    return 0u;
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: vec4<u32>) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-1591f, 550f)), _wgslsmith_f_op_f32(f32(-1f) * -2027f)))), 610f, true));
    global0 = array<Struct_5, 2>();
    var_0 = _wgslsmith_f_op_f32(sign(1020f));
    let var_1 = select(!select(vec2<bool>(arg_2.x >= arg_2.x, true | arg_1), select(!vec2<bool>(arg_1, false), vec2<bool>(false, true), arg_1), all(vec3<bool>(arg_1, arg_1, arg_1)) || (false || arg_1)), vec2<bool>(true, true), select(!vec2<bool>(1u <= arg_0, true), !vec2<bool>(arg_1 | arg_1, false), any(vec2<bool>(true, false))));
    global1 = array<i32, 22>();
    return vec4<bool>(!var_1.x, true, true, !var_1.x);
}

fn func_1(arg_0: vec2<i32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(970f, 170f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(215f, -2068f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-291f, 1137f), vec2<f32>(-961f, 490f), vec2<bool>(true, false)))))));
    global0 = array<Struct_5, 2>();
    var var_1 = func_3(u_input.a.x, true, vec4<u32>(4294967295u, func_2(vec3<f32>(_wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(exp2(var_0.x))), Struct_1(1i), _wgslsmith_mult_u32(3433u, u_input.a.x), ~4328u), _wgslsmith_mult_u32(u_input.a.x, u_input.d.x), ~u_input.a.x ^ _wgslsmith_div_u32(1u | u_input.d.x, 1u)));
    var var_2 = var_0.x;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(937f, var_0.x, var_0.x), vec3<f32>(var_0.x, var_0.x, var_0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 256f, var_0.x) - vec3<f32>(1060f, var_0.x, var_0.x)))), vec3<f32>(-638f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), 559f), _wgslsmith_f_op_f32(round(-226f))))));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(func_1(-_wgslsmith_div_vec2_i32(select(vec2<i32>(global1[_wgslsmith_index_u32(1u, 22u)], u_input.c), vec2<i32>(u_input.b, 20004i), true), countOneBits(vec2<i32>(u_input.c, u_input.c)))), select(u_input.d.x, u_input.a.x | 1u, !(0i >= u_input.c)));
    var var_1 = func_3(var_0.x, !(any(vec3<bool>(true, true, true)) | true), ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d.x, var_0.x, 4294967295u, u_input.d.x) ^ vec4<u32>(u_input.a.x, 17839u, var_0.x, u_input.a.x), vec4<u32>(var_0.x, 37063u, var_0.x, 36378u)))).xx;
    var var_2 = select(!func_3(u_input.d.x | ~u_input.d.x, false, _wgslsmith_clamp_vec4_u32(vec4<u32>(17676u, 4294967295u, u_input.a.x, u_input.a.x), ~vec4<u32>(u_input.a.x, 45337u, u_input.d.x, 1u), ~vec4<u32>(24455u, 59928u, var_0.x, var_0.x))).wy, select(func_3(~(~56664u), !var_1.x && any(vec3<bool>(var_1.x, var_1.x, var_1.x)), countOneBits(vec4<u32>(u_input.a.x, 44864u, var_0.x, u_input.d.x))).xx, func_3(8743u, true, _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 10360u, u_input.d.x, var_0.x), vec4<u32>(1u, 4294967295u, 1u, var_0.x))).ww, var_1.x), !all(select(select(vec4<bool>(var_1.x, false, var_1.x, true), vec4<bool>(true, var_1.x, var_1.x, var_1.x), var_1.x), select(vec4<bool>(false, var_1.x, var_1.x, false), vec4<bool>(var_1.x, true, var_1.x, false), true), vec4<bool>(true, false, var_1.x, var_1.x))));
    var_2 = vec2<bool>(all(!select(select(vec4<bool>(true, var_1.x, var_2.x, true), vec4<bool>(var_2.x, true, var_2.x, var_1.x), var_1.x), !vec4<bool>(var_1.x, true, false, false), vec4<bool>(var_1.x, var_1.x, false, true))), true);
    var_2 = func_3(~(~322u), all(vec2<bool>(false, false | var_1.x)), select(~(~vec4<u32>(57769u, var_0.x, 123742u, u_input.a.x)) | max(vec4<u32>(38062u, u_input.a.x, var_0.x, 1u) & vec4<u32>(5256u, 4294967295u, 0u, 29988u), vec4<u32>(44266u, 8347u, 0u, u_input.d.x) << (vec4<u32>(1u, 4728u, 6030u, 1u) % vec4<u32>(32u))), ~(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d.x, 1u, 4294967295u, 1u), vec4<u32>(27278u, var_0.x, 44441u, u_input.a.x)) | vec4<u32>(u_input.a.x, 0u, 1u, u_input.a.x)), !vec4<bool>(var_1.x, true, true, false))).yz;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(617f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-722f)) + _wgslsmith_f_op_f32(f32(-1f) * -2634f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -351f), _wgslsmith_f_op_f32(745f - -1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f * 2129f))))), firstTrailingBit(u_input.d));
}

