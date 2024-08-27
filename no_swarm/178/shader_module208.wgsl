struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec3<bool>, 10> = array<vec3<bool>, 10>(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> vec4<i32> {
    global1 = array<vec3<bool>, 10>();
    let var_0 = _wgslsmith_f_op_f32(sign(arg_0.a.x));
    return _wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.b.x, 2147483647i, u_input.c, _wgslsmith_dot_vec4_i32(-vec4<i32>(0i, -39420i, u_input.b.x, 5703i), ~vec4<i32>(u_input.b.x, 2147483647i, -15065i, -2147483647i))), vec4<i32>(u_input.c, i32(-1i) * -2147483647i, ~(-u_input.c), -55544i));
}

fn func_2(arg_0: f32, arg_1: vec4<i32>, arg_2: vec4<bool>) -> bool {
    global1 = array<vec3<bool>, 10>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, -656f) - vec3<f32>(-920f, arg_0, _wgslsmith_f_op_f32(abs(1000f)))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(arg_0 + arg_0), -1885f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1143f, 601f, -401f))) * var_0.a));
    var var_2 = firstTrailingBit(~_wgslsmith_clamp_vec4_i32(~(~vec4<i32>(-8462i, 15878i, -2147483647i, arg_1.x)), func_3(var_1, u_input.e.x | u_input.d.x, Struct_1(vec3<f32>(var_1.a.x, 965f, -945f))), ~vec4<i32>(16700i, arg_1.x, arg_1.x, u_input.b.x)));
    let var_3 = select(reverseBits(u_input.c), u_input.c, true);
    return any(vec2<bool>(any(global1[_wgslsmith_index_u32(firstTrailingBit(1u), 10u)]), true));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<bool>) -> u32 {
    global1 = array<vec3<bool>, 10>();
    global1 = array<vec3<bool>, 10>();
    let var_0 = 16352i;
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(469f * arg_2.a.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(549f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_2.a.x))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.a.x, -1000f)))) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-296f, arg_1.a.x))), arg_1.a.x, arg_0.a.x))));
    var_1 = arg_0.a;
    return _wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.a.x, 558u), abs(~_wgslsmith_dot_vec2_u32(~u_input.e.yz, vec2<u32>(114871u, 31365u))));
}

fn func_1(arg_0: i32) -> f32 {
    global0 = 1u;
    global1 = array<vec3<bool>, 10>();
    global1 = array<vec3<bool>, 10>();
    global0 = func_4(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(1f * 1f), _wgslsmith_f_op_f32(517f - _wgslsmith_f_op_f32(f32(-1f) * -1588f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-709f - -163f) - -372f))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1125f, 1518f, -1156f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1688f, -614f, -593f))))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1197f, -295f, 816f) * vec3<f32>(-193f, -541f, 465f))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-585f, 291f, 328f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1516f, -637f, 970f))))), !vec4<bool>(true, func_2(_wgslsmith_f_op_f32(step(770f, -236f)), -vec4<i32>(u_input.c, u_input.b.x, -1i, 19900i), vec4<bool>(false, true, true, false)), u_input.d.x < (53666u >> (u_input.d.x % 32u)), -607f == _wgslsmith_f_op_f32(floor(1086f))));
    let var_0 = 1376f;
    return -516f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(579f)) - -1128f), -308f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1274f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-534f, 862f)), 255f))) >= _wgslsmith_f_op_f32(-232f * _wgslsmith_f_op_f32(f32(-1f) * -1224f));
    var var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(func_1(-u_input.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1271f * -547f)), 596f));
    global0 = 46717u;
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.x, -1056f, 1018f) - vec3<f32>(-383f, var_1.a.x, var_1.a.x)), var_1.a))))));
    let var_3 = global1[_wgslsmith_index_u32(~(~4294967295u) & u_input.d.x, 10u)];
    let var_4 = var_1.a.x;
    var var_5 = _wgslsmith_f_op_vec3_f32(-var_2.a);
    let var_6 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(158f, var_5.x, var_5.x)));
    let var_7 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(min(var_2.a.x, -406f)))));
    let x = u_input.a;
    s_output = StorageBuffer(30040u, -(vec3<i32>(-1i) * -_wgslsmith_add_vec3_i32(vec3<i32>(-44044i, -5662i, 9556i), vec3<i32>(u_input.b.x, 0i, u_input.c))));
}

