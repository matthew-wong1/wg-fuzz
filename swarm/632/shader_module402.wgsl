struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec2<f32>,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 23>;

var<private> global1: i32 = 27351i;

var<private> global2: array<Struct_1, 26>;

var<private> global3: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(false, vec2<u32>(1u, 10973u), vec2<f32>(-446f, -2345f), -1139f), Struct_1(false, vec2<u32>(1u, 44366u), vec2<f32>(-2323f, -238f), 2187f), Struct_1(false, vec2<u32>(29527u, 19498u), vec2<f32>(2313f, 562f), -1437f), Struct_1(true, vec2<u32>(9767u, 24757u), vec2<f32>(-1000f, 183f), -489f), Struct_1(true, vec2<u32>(72823u, 25646u), vec2<f32>(793f, -1520f), -1472f), Struct_1(true, vec2<u32>(53185u, 36671u), vec2<f32>(784f, -403f), 1000f), Struct_1(true, vec2<u32>(1u, 9102u), vec2<f32>(-825f, -1224f), -880f), Struct_1(true, vec2<u32>(40418u, 11675u), vec2<f32>(-1369f, 301f), -843f), Struct_1(false, vec2<u32>(55089u, 1641u), vec2<f32>(-615f, -316f), -113f), Struct_1(false, vec2<u32>(141u, 21354u), vec2<f32>(-176f, -456f), 334f), Struct_1(true, vec2<u32>(1u, 34658u), vec2<f32>(1119f, -520f), 1059f), Struct_1(true, vec2<u32>(4294967295u, 8696u), vec2<f32>(1027f, 296f), 419f), Struct_1(false, vec2<u32>(9349u, 1u), vec2<f32>(-553f, -1000f), 286f), Struct_1(true, vec2<u32>(11962u, 1u), vec2<f32>(1025f, -1535f), -1000f), Struct_1(false, vec2<u32>(41687u, 35727u), vec2<f32>(-496f, 124f), 851f), Struct_1(false, vec2<u32>(30139u, 4043u), vec2<f32>(855f, -1000f), 132f), Struct_1(false, vec2<u32>(1u, 4294967295u), vec2<f32>(169f, -1000f), 856f), Struct_1(false, vec2<u32>(82045u, 62426u), vec2<f32>(-230f, -1641f), -172f), Struct_1(true, vec2<u32>(64296u, 0u), vec2<f32>(-516f, -258f), -958f), Struct_1(true, vec2<u32>(4294967295u, 1u), vec2<f32>(1000f, -371f), 850f), Struct_1(false, vec2<u32>(11556u, 28138u), vec2<f32>(488f, -1329f), -1000f), Struct_1(false, vec2<u32>(1u, 24189u), vec2<f32>(426f, 1000f), -636f), Struct_1(false, vec2<u32>(6366u, 1u), vec2<f32>(-772f, -428f), -243f), Struct_1(false, vec2<u32>(1u, 82767u), vec2<f32>(-1439f, 255f), 1000f), Struct_1(false, vec2<u32>(4294967295u, 7446u), vec2<f32>(113f, 1673f), 451f), Struct_1(false, vec2<u32>(0u, 56119u), vec2<f32>(-431f, 1000f), -332f), Struct_1(true, vec2<u32>(0u, 64922u), vec2<f32>(-164f, 2301f), -723f), Struct_1(true, vec2<u32>(1u, 64131u), vec2<f32>(-1205f, 203f), 1211f), Struct_1(true, vec2<u32>(18400u, 0u), vec2<f32>(-1718f, -717f), 1000f));

var<private> global4: array<Struct_1, 22>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec4<f32>) -> vec2<f32> {
    let var_0 = Struct_1(false, vec2<u32>(u_input.b, u_input.b), arg_1.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(arg_1.c.x, arg_2.x)), -904f)));
    global2 = array<Struct_1, 26>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d)) + var_0.d);
    var var_2 = _wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1304f - _wgslsmith_f_op_f32(f32(-1f) * -2200f)) * arg_1.c.x))));
    let var_3 = ~abs(_wgslsmith_mod_vec4_i32(-(~vec4<i32>(25126i, u_input.d.x, 0i, -10200i)), vec4<i32>(max(0i, u_input.d.x), abs(-2147483647i), u_input.d.x, 1i)));
    return _wgslsmith_f_op_vec2_f32(arg_1.c * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.c.x * 510f), _wgslsmith_f_op_f32(1120f + var_0.c.x), true)) * _wgslsmith_f_op_f32(arg_1.d + -977f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(var_0.d, var_0.c.x), _wgslsmith_f_op_f32(trunc(965f))))));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>) -> f32 {
    let var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(189f, _wgslsmith_f_op_f32(f32(-1f) * -647f), arg_0.c.x) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-391f, _wgslsmith_f_op_f32(2092f + 515f), arg_0.c.x) - _wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, -358f, 424f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, arg_0.c.x, 839f) + arg_1)))));
    global2 = array<Struct_1, 26>();
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.yx + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(arg_1.yz, vec2<f32>(562f, -467f))))))), _wgslsmith_div_vec2_f32(var_1.xx, _wgslsmith_f_op_vec2_f32(func_3(all(vec4<bool>(true, true, true, true)), Struct_1(false, abs(vec2<u32>(4294967295u, 39955u)), _wgslsmith_f_op_vec2_f32(-arg_1.xx), arg_0.c.x), vec4<f32>(_wgslsmith_f_op_f32(abs(var_1.x)), -915f, _wgslsmith_f_op_f32(max(-357f, var_1.x)), -1182f)))));
    global4 = array<Struct_1, 22>();
    return _wgslsmith_f_op_f32(var_1.x - var_0.x);
}

fn func_1(arg_0: u32) -> vec3<f32> {
    let var_0 = ~firstLeadingBit(~countOneBits(~u_input.b));
    var var_1 = !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-656f)))));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 0u, u_input.a.x, arg_0), u_input.a), 22u)], _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1505f, var_2, 1023f)))) - 1000f)), _wgslsmith_f_op_f32(var_2 - _wgslsmith_f_op_f32(floor(-478f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2), var_2)));
    return _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1761f, var_2, var_3.x) - vec3<f32>(var_2, 1000f, var_3.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-813f, -231f, var_2) + vec3<f32>(-591f, var_2, var_2)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-282f, var_3.x, var_3.x))) + vec3<f32>(var_2, 2261f, var_2))))), vec3<f32>(-658f, var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x * 1336f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(vec2<bool>(true, true));
    let var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(func_1(u_input.a.x | 1u))));
    var var_2 = -368f;
    let var_3 = !select(vec2<bool>(true, false | all(vec4<bool>(true, false, true, false))), vec2<bool>(!all(vec4<bool>(false, false, true, true)), all(vec4<bool>(false, false, false, false))), vec2<bool>(true, ~u_input.b >= u_input.a.x));
    let var_4 = true;
    let var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.yz, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -1408f, var_1.x, var_1.x)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 445f, -1419f, -358f) * vec4<f32>(var_1.x, 647f, var_1.x, 1860f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1239f), var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.x, var_1.x, var_1.x, 492f), vec4<f32>(290f, -177f, -1000f, -517f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(541f, 1225f, -119f, 2671f) + vec4<f32>(678f, -719f, 1944f, var_1.x))))));
}

