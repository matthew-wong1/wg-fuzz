struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: f32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 5>;

var<private> global1: array<vec2<u32>, 18>;

var<private> global2: Struct_1;

var<private> global3: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, false)));

var<private> global4: array<vec3<f32>, 24> = array<vec3<f32>, 24>(vec3<f32>(-249f, -726f, 211f), vec3<f32>(-439f, -1973f, 121f), vec3<f32>(-206f, -603f, -1397f), vec3<f32>(-602f, -951f, 830f), vec3<f32>(760f, -553f, -1105f), vec3<f32>(-2758f, 141f, -826f), vec3<f32>(-1337f, 119f, -338f), vec3<f32>(351f, -1027f, 1000f), vec3<f32>(101f, 477f, 189f), vec3<f32>(-378f, 669f, -274f), vec3<f32>(-1586f, 738f, -980f), vec3<f32>(-1004f, -102f, 610f), vec3<f32>(-838f, -1241f, 252f), vec3<f32>(-323f, 1000f, -148f), vec3<f32>(-266f, -838f, -599f), vec3<f32>(2142f, 1688f, 275f), vec3<f32>(-690f, 254f, -470f), vec3<f32>(-176f, 632f, 610f), vec3<f32>(323f, -895f, 2084f), vec3<f32>(197f, 1121f, -1087f), vec3<f32>(-1841f, -981f, 394f), vec3<f32>(377f, -454f, 872f), vec3<f32>(-676f, 1399f, -1024f), vec3<f32>(217f, 2745f, 970f));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_3, arg_3: Struct_1) -> vec2<bool> {
    return vec2<bool>(true, arg_1.a.x);
}

fn func_2(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = Struct_3(reverseBits(u_input.a), arg_0, -1357f, !vec2<bool>(all(arg_0.a), global2.a.x));
    return !(!func_3(vec2<i32>(0i, min(-37324i, -38680i)), Struct_1(vec2<bool>(true, true)), Struct_3(u_input.a, Struct_1(global2.a), var_0.c, !vec2<bool>(arg_0.a.x, arg_0.a.x)), Struct_1(vec2<bool>(var_0.b.a.x, var_0.d.x))));
}

fn func_1(arg_0: vec2<i32>) -> f32 {
    let var_0 = u_input.a;
    global3 = array<Struct_1, 24>();
    global3 = array<Struct_1, 24>();
    let var_1 = Struct_2(Struct_1(!select(vec2<bool>(true, global2.a.x), select(vec2<bool>(true, global2.a.x), vec2<bool>(false, true), vec2<bool>(true, true)), func_2(global3[_wgslsmith_index_u32(0u, 24u)]))));
    var var_2 = select(vec3<bool>(var_1.a.a.x, !func_2(global3[_wgslsmith_index_u32(1517u, 24u)]).x, true == global2.a.x), vec3<bool>(false, false, var_1.a.a.x), !vec3<bool>(true, true, arg_0.x >= arg_0.x));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(118f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_div_f32(-769f, -957f))) - -1324f)) + 1537f);
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> StorageBuffer {
    global3 = array<Struct_1, 24>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0), 849f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * arg_0)), 572f) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2174f, arg_0, -1689f, arg_0) + vec4<f32>(2209f, arg_0, -1000f, 151f)), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0, 1404f, -973f, -2060f), vec4<f32>(-941f, arg_0, -1143f, 557f))))))));
    global3 = array<Struct_1, 24>();
    global2 = Struct_1(global2.a);
    let var_1 = _wgslsmith_sub_i32(-10455i, _wgslsmith_add_i32(-19589i, _wgslsmith_mult_i32(-(~2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -1i, -44835i, 1i), -vec4<i32>(2147483647i, 2147483647i, 15188i, 10348i)))));
    return StorageBuffer(76174u, _wgslsmith_f_op_f32(max(-1084f, 387f)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec3<f32>, 24>();
    var var_0 = any(global2.a);
    let x = u_input.a;
    s_output = func_4(_wgslsmith_f_op_f32(func_1(~vec2<i32>(_wgslsmith_mod_i32(-25971i, -33882i), _wgslsmith_div_i32(5593i, -34752i)))), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(u_input.a << (_wgslsmith_dot_vec2_u32(vec2<u32>(47883u, u_input.a), global1[_wgslsmith_index_u32(44761u, 18u)]) % 32u), max(u_input.a, select(4294967295u, u_input.a, global2.a.x))), select(17846u << (1u % 32u), u_input.a, global2.a.x)), 24u)]);
}

