struct Struct_1 {
    a: u32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(48598u, vec2<f32>(-261f, -1443f)), Struct_1(60670u, vec2<f32>(-903f, 752f)), Struct_1(25770u, vec2<f32>(1574f, 1547f)), Struct_1(1u, vec2<f32>(-169f, 967f)), Struct_1(4294967295u, vec2<f32>(353f, 1023f)), Struct_1(50169u, vec2<f32>(-375f, 100f)), Struct_1(21271u, vec2<f32>(584f, 863f)), Struct_1(1u, vec2<f32>(911f, 336f)), Struct_1(22334u, vec2<f32>(-1116f, 1016f)), Struct_1(9186u, vec2<f32>(1178f, -715f)), Struct_1(1u, vec2<f32>(-365f, -354f)), Struct_1(0u, vec2<f32>(-217f, 2200f)), Struct_1(1085u, vec2<f32>(-1098f, -1446f)), Struct_1(4294967295u, vec2<f32>(738f, 653f)), Struct_1(4294967295u, vec2<f32>(-776f, -265f)), Struct_1(55605u, vec2<f32>(-1308f, -445f)), Struct_1(1u, vec2<f32>(-1000f, -718f)), Struct_1(1u, vec2<f32>(-842f, -1439f)), Struct_1(1u, vec2<f32>(177f, 761f)), Struct_1(0u, vec2<f32>(1513f, -1000f)), Struct_1(1u, vec2<f32>(-309f, -925f)), Struct_1(23677u, vec2<f32>(-106f, -470f)), Struct_1(1u, vec2<f32>(999f, -396f)), Struct_1(1u, vec2<f32>(-1165f, -814f)), Struct_1(4294967295u, vec2<f32>(1000f, -720f)), Struct_1(1u, vec2<f32>(654f, 1785f)), Struct_1(4294967295u, vec2<f32>(156f, 1038f)), Struct_1(11983u, vec2<f32>(-512f, 544f)), Struct_1(0u, vec2<f32>(-1120f, -1162f)), Struct_1(76036u, vec2<f32>(-334f, 1000f)));

var<private> global1: array<i32, 9>;

var<private> global2: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(11167u, vec2<f32>(-151f, -815f)), Struct_1(31119u, vec2<f32>(-1502f, 1423f)), Struct_1(1u, vec2<f32>(680f, -122f)), Struct_1(4923u, vec2<f32>(624f, 519f)), Struct_1(4294967295u, vec2<f32>(549f, 307f)), Struct_1(19108u, vec2<f32>(1937f, 1000f)), Struct_1(51124u, vec2<f32>(1071f, 599f)), Struct_1(26496u, vec2<f32>(-1515f, 2711f)), Struct_1(97523u, vec2<f32>(529f, 329f)), Struct_1(1u, vec2<f32>(229f, 198f)), Struct_1(1u, vec2<f32>(1585f, 175f)), Struct_1(74268u, vec2<f32>(-350f, 289f)), Struct_1(36544u, vec2<f32>(-539f, 238f)), Struct_1(4294967295u, vec2<f32>(1269f, 929f)), Struct_1(0u, vec2<f32>(-583f, -440f)), Struct_1(46488u, vec2<f32>(852f, -501f)), Struct_1(1u, vec2<f32>(-1179f, 220f)), Struct_1(0u, vec2<f32>(1146f, 1187f)), Struct_1(50408u, vec2<f32>(-1923f, 1243f)), Struct_1(1u, vec2<f32>(-1030f, 1234f)), Struct_1(0u, vec2<f32>(-1408f, -888f)), Struct_1(1u, vec2<f32>(-2271f, 852f)), Struct_1(11357u, vec2<f32>(-226f, -315f)));

var<private> global3: Struct_1 = Struct_1(6415u, vec2<f32>(356f, -1100f));

var<private> global4: array<Struct_1, 30>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<f32>) -> f32 {
    let var_0 = ~(_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(abs(u_input.c.yy), abs(vec2<u32>(1u, 26456u))), firstTrailingBit(~u_input.c.xy)) >> (~u_input.c.yx % vec2<u32>(32u)));
    let var_1 = Struct_1(u_input.c.x, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-2090f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global3.b.x)))), vec2<f32>(-396f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.b.x - global3.b.x) - _wgslsmith_f_op_f32(ceil(arg_0.x)))), vec2<bool>(true, true))));
    let var_2 = select(select(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), all(vec4<bool>(false, false, true, false))), !vec3<bool>(true, true, any(vec3<bool>(true, false, false))), any(!select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false))), vec3<bool>(true, true, true), true);
    var var_3 = vec3<bool>(any(!select(var_2, vec3<bool>(false, false, false), vec3<bool>(true, var_2.x, false))), false, var_2.x);
    let var_4 = _wgslsmith_f_op_f32(step(global3.b.x, _wgslsmith_f_op_f32(sign(arg_0.x))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.x)) - _wgslsmith_f_op_f32(trunc(177f))), _wgslsmith_f_op_f32(step(var_4, var_1.b.x)))));
}

fn func_2() -> Struct_1 {
    global2 = array<Struct_1, 23>();
    let var_0 = u_input.d;
    var var_1 = all(vec2<bool>(true, true));
    var var_2 = firstTrailingBit(u_input.a.xzz);
    global0 = array<Struct_1, 30>();
    return Struct_1(33974u, vec2<f32>(_wgslsmith_f_op_f32(global3.b.x + _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(947f * _wgslsmith_div_f32(2345f, _wgslsmith_f_op_f32(func_3(vec3<f32>(1000f, global3.b.x, -328f)))))));
}

fn func_1() -> bool {
    var var_0 = ~u_input.a;
    global2 = array<Struct_1, 23>();
    var var_1 = func_2();
    global0 = array<Struct_1, 30>();
    var var_2 = Struct_1(51984u, var_1.b);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-global3.b.x);
    var var_1 = firstTrailingBit(4294967295u);
    let var_2 = Struct_1(1u, global3.b);
    var var_3 = select(!vec2<bool>((128754u | global3.a) == global3.a, true || all(vec3<bool>(false, false, false))), vec2<bool>(all(select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true))), !func_1()), 0u >= global3.a);
    let var_4 = func_2();
    var var_5 = global4[_wgslsmith_index_u32(select(~countOneBits(max(~var_2.a, u_input.a.x)), _wgslsmith_dot_vec2_u32((vec2<u32>(u_input.c.x, 4294967295u) | _wgslsmith_sub_vec2_u32(vec2<u32>(5875u, 0u), u_input.a.xy)) ^ vec2<u32>(~var_2.a, ~global3.a), ~(~vec2<u32>(global3.a, u_input.a.x) ^ u_input.c.yx)), !var_3.x | select(true, any(!vec4<bool>(true, var_3.x, false, false)), any(select(vec4<bool>(var_3.x, false, true, var_3.x), vec4<bool>(var_3.x, false, var_3.x, var_3.x), vec4<bool>(var_3.x, var_3.x, false, true))))), 30u)];
    let var_6 = _wgslsmith_f_op_vec2_f32(global3.b * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_4.b.x, _wgslsmith_f_op_f32(var_4.b.x - var_2.b.x)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(var_2.b)), _wgslsmith_f_op_vec2_f32(min(var_5.b, var_5.b)))), vec2<f32>(_wgslsmith_f_op_f32(-global3.b.x), 349f))));
    var var_7 = 3486i;
    global4 = array<Struct_1, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(-global1[_wgslsmith_index_u32(~min(var_2.a, var_4.a) ^ var_2.a, 9u)], _wgslsmith_f_op_f32(abs(270f)), u_input.a.zx | u_input.a.xw, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1870f)));
}

