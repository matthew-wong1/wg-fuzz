struct Struct_1 {
    a: u32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-811f, 1335f, -1168f, 337f);

var<private> global1: array<vec4<f32>, 15> = array<vec4<f32>, 15>(vec4<f32>(-1000f, 1821f, 756f, -410f), vec4<f32>(-139f, -640f, 1080f, -233f), vec4<f32>(-1792f, 1000f, -1533f, 1000f), vec4<f32>(-635f, 864f, -1000f, 862f), vec4<f32>(1000f, 2425f, 1454f, -236f), vec4<f32>(-272f, 396f, -763f, -498f), vec4<f32>(-223f, 611f, -769f, 614f), vec4<f32>(1765f, 1237f, -1437f, 1000f), vec4<f32>(-228f, -329f, -713f, -811f), vec4<f32>(102f, 1491f, -446f, -406f), vec4<f32>(-467f, -1513f, 1568f, 1175f), vec4<f32>(-1871f, 453f, 1272f, 918f), vec4<f32>(1479f, -136f, 672f, 420f), vec4<f32>(-386f, 1885f, 1267f, 344f), vec4<f32>(747f, -1634f, 1414f, -439f));

var<private> global2: array<f32, 10>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1) -> bool {
    var var_0 = -firstTrailingBit(~u_input.b);
    var_0 = ~u_input.a;
    var var_1 = true;
    var var_2 = ~vec2<u32>(4294967295u, abs(~arg_0.x)) >> (~vec2<u32>(arg_0.x, abs(~arg_1.a)) % vec2<u32>(32u));
    var var_3 = var_2.x;
    return true;
}

fn func_2() -> vec4<bool> {
    let var_0 = Struct_1(0u, vec4<bool>(true, !func_3(~vec4<u32>(17312u, 1u, 4294967295u, 19402u), Struct_1(0u, vec4<bool>(false, false, true, true))), any(vec2<bool>(false, true)), true));
    global1 = array<vec4<f32>, 15>();
    return vec4<bool>(all(!vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x)), var_0.b.x, var_0.b.x, all(var_0.b));
}

fn func_1(arg_0: Struct_1) -> f32 {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, _wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(arg_0.a, 10u)])), _wgslsmith_f_op_f32(-global0.x), global2[_wgslsmith_index_u32(arg_0.a, 10u)])));
    var var_0 = arg_0;
    global2 = array<f32, 10>();
    let var_1 = Struct_1(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(var_0.a, ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_0.a), vec2<u32>(0u, arg_0.a)), _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(var_0.a, arg_0.a, 0u)), ~vec3<u32>(37209u, var_0.a, 4294967295u))), var_0.a), func_2());
    var var_2 = 113f;
    return _wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(~var_1.a, 10u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-156f * _wgslsmith_f_op_f32(func_1(Struct_1(30394u, vec4<bool>(false, false, false, false))))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(9167u, 10u)], -918f) * _wgslsmith_div_f32(2720f, 772f)))), 532f);
    let var_1 = vec4<u32>(11168u, _wgslsmith_clamp_u32(4294967295u, min(~_wgslsmith_mult_u32(1u, 28500u), 1u), abs(0u)), ~4294967295u, select(92475u, ~(~4294967295u), func_2().x));
    var var_2 = Struct_1(1u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 1u, 1u, 0u) >> (var_1 % vec4<u32>(32u)), var_1) % 32u), select(select(vec4<bool>(var_1.x >= var_1.x, true, true, any(vec4<bool>(true, true, true, false))), select(func_2(), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true)), true), false), vec4<bool>(true, _wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(510u, 10u)])) > _wgslsmith_f_op_f32(1000f + -1102f), all(vec2<bool>(true, true)), true), !func_3(vec4<u32>(var_1.x, 0u, var_1.x, 0u), Struct_1(45581u, vec4<bool>(true, false, true, true)))));
    let var_3 = Struct_1(_wgslsmith_dot_vec4_u32(abs(reverseBits(vec4<u32>(27279u, var_2.a, 37501u, 39138u))), max(var_1, vec4<u32>(4294967295u, 0u, var_2.a, 1u)) | var_1), vec4<bool>(true, false, true, true));
    var_2 = var_3;
    var_2 = var_3;
    var var_4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(-(-vec2<i32>(u_input.a, u_input.a) | firstLeadingBit(select(vec2<i32>(u_input.b, u_input.a), vec2<i32>(u_input.b, -24111i), false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2040f, var_0.x, 941f, -1333f), vec4<f32>(772f, var_0.x, -675f, var_0.x), false)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(57905u, 10u)], global2[_wgslsmith_index_u32(var_4.a, 10u)], 915f, -796f) * vec4<f32>(-1020f, global2[_wgslsmith_index_u32(var_4.a, 10u)], global2[_wgslsmith_index_u32(var_4.a, 10u)], global0.x))) + global1[_wgslsmith_index_u32(var_2.a, 15u)])), global0.wxw);
}

